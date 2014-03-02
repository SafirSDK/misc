#include <iostream>
#include <boost/thread.hpp>
#include <boost/chrono.hpp>

void Timeout()
{
    const boost::chrono::steady_clock::time_point start = boost::chrono::steady_clock::now();

    try
    {
        boost::this_thread::sleep_for(boost::chrono::minutes(10)); 
        
        std::cout << "Timeout!" << std::endl;
        std::cout << "Elapsed time: " << (boost::chrono::steady_clock::now() - start) << "." << std::endl;
        exit(1);
    }
    catch (const boost::thread_interrupted&)
    {
        //ok, interrupt of sleep was successful, we just let the thread go away.
    }
}

int main()
{
    for(int i = 0; i < 10000; ++i)
    {
        std::vector<boost::shared_ptr<boost::thread> > threads;
        
        //create 50 threads
        for(int j = 0; j < 50; ++j)
        {
            threads.push_back(boost::shared_ptr<boost::thread>(new boost::thread(Timeout)));
        }
        
        //interrupt them all
        for (std::vector<boost::shared_ptr<boost::thread> >::iterator it = threads.begin(); it != threads.end(); ++it)
        {
            (*it)->interrupt();
        }
        
        //join them all
        while (!threads.empty())
        {
            threads.back()->join();
            threads.pop_back();
        }
    }

    std::cout << "Success" << std::endl;

    return 0;
}

