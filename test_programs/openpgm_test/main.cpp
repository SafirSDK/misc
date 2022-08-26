#include <iostream>
#include <boost/lexical_cast.hpp>

#include <boost/thread.hpp>
#include <boost/asio.hpp>
#include <boost/function.hpp>
#include <boost/bind.hpp>

#include "pgmsocket.h"

class CyclicTimer
{
public:
    CyclicTimer(boost::asio::io_service& io, int milliseconds, const boost::function<void(void)>& cb)
        :m_timeout(milliseconds)
        ,m_timer(io, m_timeout)
        ,m_callback(cb)
    {
        m_timer.async_wait(boost::bind(&CyclicTimer::TimeOut, this, boost::asio::placeholders::error()));
    }

    void Cancel() {m_timer.cancel();}

private:
    boost::posix_time::milliseconds m_timeout;
    boost::asio::deadline_timer m_timer;
    boost::function<void(void)> m_callback;

    void TimeOut(const boost::system::error_code& er)
    {
        if (!er)
        {
            m_callback();
            m_timer.expires_from_now(m_timeout);
            m_timer.async_wait(boost::bind(&CyclicTimer::TimeOut, this, boost::asio::placeholders::error()));
        }
    }
};

//---------------------
//----- Receiver ------
//---------------------
class Receiver
{
public:
    Receiver(boost::asio::io_service& io)
        :m_io(io)
        ,m_sock(true)
        ,m_timer(m_io, 10000, boost::bind(&Receiver::RecvMsg, this))
        ,m_seq(0)
        ,m_count(0)
    {
        m_io.post(boost::bind(&Receiver::RecvLoop, this));
    }

private:
    boost::asio::io_service& m_io;
    PgmSocket m_sock;
    CyclicTimer m_timer;
    boost::uint64_t m_seq;
    double m_count;

    void RecvMsg()
    {
        std::cout<<"msg/sec: "<<(m_count/10.0)<<std::endl;
        m_count=0;
//        std::vector<char> buf;
//        buf.resize(50, 0);
//        m_sock.Recv(&buf[0], buf.size());
//        const char* str=&buf[0];
//        std::cout<<"RecvMsg: "<<str<<std::endl;
    }

    void RecvLoop()
    {
        //stealing an io_service thread. Just for testing
        std::vector<char> buf;
        buf.resize(65000, 0);
        while (true)
        {
            m_sock.Recv(&buf[0], buf.size());
            ++m_count;
            const boost::uint64_t* seq=reinterpret_cast<const boost::uint64_t*>(&buf[0]);
            if (*seq==m_seq+1 || m_seq==0)
            {
                m_seq=*seq;
            }
            else
            {
                std::cout<<"Error exp "<<(m_seq+1)<<", got "<<*seq << std::endl;
                m_seq = *seq;
            }
        }
    }
};

//---------------------
//----- Sender ------
//---------------------
class Sender
{
public:
    Sender(boost::asio::io_service& io)
        :m_io(io)
        ,m_sock(false)
        ,m_sendTimer(m_io, 10000, boost::bind(&Sender::SendMsg, this))
        ,m_nakTimer(m_io, 10, boost::bind(&PgmSocket::HandleNak, &m_sock))
        ,m_count(0)
    {
        m_io.post(boost::bind(&Sender::SendLoop, this));
    }

private:
    boost::asio::io_service& m_io;
    PgmSocket m_sock;
    CyclicTimer m_sendTimer;
    CyclicTimer m_nakTimer;
    double m_count;

    void SendMsg()
    {
        std::cout<<"msg/sec: "<<(m_count/10.0)<<std::endl;
        m_count=0;
//        std::cout<<"Sender TimeOut"<<std::endl;
//        std::string msg="Hello World";
//        m_sock.Send(msg.c_str(), msg.size()+1);
    }

    void SendLoop()
    {
        std::vector<char> buf;
        buf.resize(1400, 0);
        boost::uint64_t* seq=reinterpret_cast<boost::uint64_t*>(&buf[0]);
        *seq=0;
        while(true)
        {
            if (m_sock.Send(&buf[0], buf.size()))
            {
                ++(*seq);
                ++m_count;
            }
            else
            {
                boost::this_thread::sleep(boost::posix_time::milliseconds(10));
            }
        }
    }
};

//---------------------
//----- main ------
//---------------------
int main(int argc, char* argv[])
{
    if (argc<2)
    {
        std::cout<<"Too few args"<<std::endl;
        return 0;
    }

    std::string kind=argv[1];
    if (kind=="sender")
    {
        boost::asio::io_service ios;
        boost::asio::io_service::work wrk(ios);
        boost::thread_group tg;
        tg.create_thread(boost::bind(&boost::asio::io_service::run, &ios));
        tg.create_thread(boost::bind(&boost::asio::io_service::run, &ios));
        Sender sender(ios);
        ios.run();
    }
    else
    {
        boost::asio::io_service ios;
        boost::asio::io_service::work wrk(ios);
        boost::thread_group tg;
        tg.create_thread(boost::bind(&boost::asio::io_service::run, &ios));
        tg.create_thread(boost::bind(&boost::asio::io_service::run, &ios));
        Receiver recv(ios);
        ios.run();
    }

    return 0;
}

