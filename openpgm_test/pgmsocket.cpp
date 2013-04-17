#include <iostream>
#include <ctime>
#include "pgmsocket.h"

PgmSocket::PgmSocket(bool receiver)
    :m_socket(NULL)
{
    pgm_error_t* pgmErr=NULL;
    if (!pgm_init(&pgmErr))
    {
        std::cout<<"Faild to init pgm"<<std::endl;
    }

    sa_family_t saFamily=AF_INET;
    struct pgm_addrinfo_t* res=NULL;

    //parse network parameter into PGM socket address structure
    //See http://www.scribd.com/doc/97993491/144/Constructing-the-Network-Parameter
    //    network;multicastgroup1,multicastgropu2;sendAddress
    //std::string network="127.0.0.1;239.192.1.1";
    std::string network="eth1;239.192.1.1";
    if (!pgm_getaddrinfo(network.c_str(), NULL, &res, &pgmErr))
    {
        std::cout<<"Parsing network parameter: "<<pgmErr->message<<std::endl;
    }

    if (!pgm_socket(&m_socket, saFamily, SOCK_SEQPACKET, IPPROTO_UDP, &pgmErr))
    {
        std::cout<<"Failed to create PGM socket"<<std::endl;
    }

    //  All options are of data type int
    const int portNumber=5555;
    if (!pgm_setsockopt(m_socket, IPPROTO_PGM, PGM_UDP_ENCAP_UCAST_PORT, &portNumber, sizeof (portNumber)))
    {
        std::cout<<"Failed to set unicast port"<<std::endl;
    }

    if (!pgm_setsockopt(m_socket, IPPROTO_PGM, PGM_UDP_ENCAP_MCAST_PORT, &portNumber, sizeof (portNumber)))
    {
        std::cout<<"Failed to set multicast port"<<std::endl;
    }

    if (receiver)
    {
        //set PGM parameters
        const int recvOnly = 1;
        const int passive = 0;
        const int maxTpdu=1500;
        const int secs=3;
        const int peerExpiry = pgm_secs (300);
        const int spmrExpiry = pgm_msecs (250);
        const int nakBoIvl = pgm_msecs (50);
        const int nakRptIvl = pgm_secs (2);
        const int nakRdataIvl = pgm_secs (2);
        const int nakDataRetries = 50;
        const int nakNcfRetries = 50;

        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_RECV_ONLY, &recvOnly, sizeof(recvOnly));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_PASSIVE, &passive, sizeof(passive));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_MTU, &maxTpdu, sizeof(maxTpdu));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_RXW_SECS, &secs, sizeof(secs));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_PEER_EXPIRY, &peerExpiry, sizeof(peerExpiry));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_SPMR_EXPIRY, &spmrExpiry, sizeof(spmrExpiry));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_NAK_BO_IVL, &nakBoIvl, sizeof(nakBoIvl));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_NAK_RPT_IVL, &nakRptIvl, sizeof(nakRptIvl));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_NAK_RDATA_IVL, &nakRdataIvl, sizeof(nakRdataIvl));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_NAK_DATA_RETRIES, &nakDataRetries, sizeof(nakDataRetries));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_NAK_NCF_RETRIES, &nakNcfRetries, sizeof(nakNcfRetries));
    }
    else //sender
    {
        const int sendOnly=1;
        const int maxTpdu=1500;
        const int secs=3;
        const int maxRte=3e7; // unit: byte/sec  1000000=8 Mbit/sec
        const int ambientSpm=pgm_secs (30);
        const int heartbeatSpm[]={ pgm_msecs (100),
                                   pgm_msecs (100),
                                   pgm_msecs (100),
                                   pgm_msecs (100),
                                   pgm_msecs (1300),
                                   pgm_secs  (7),
                                   pgm_secs  (16),
                                   pgm_secs  (25),
                                   pgm_secs  (30) };


        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_SEND_ONLY, &sendOnly, sizeof(sendOnly));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_MTU, &maxTpdu, sizeof(maxTpdu));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_TXW_SECS, &secs, sizeof(secs));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_TXW_MAX_RTE, &maxRte, sizeof(maxRte));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_AMBIENT_SPM, &ambientSpm, sizeof(ambientSpm));
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_HEARTBEAT_SPM, &heartbeatSpm, sizeof(heartbeatSpm));
    }

    //create global session identifier
    struct pgm_sockaddr_t addr;
    memset(&addr, 0, sizeof(addr));
    addr.sa_port=portNumber;
    addr.sa_addr.sport = DEFAULT_DATA_SOURCE_PORT;
    unsigned int time=std::time(0);

    if (!pgm_gsi_create_from_data (&addr.sa_addr.gsi, reinterpret_cast<unsigned char*>(&time), sizeof(time)))
    {
        std::cout<<"Failed to create global session id GSI: "<<pgmErr->message<<std::endl;
    }

    //  Bind a transport to the specified network devices.
    struct pgm_interface_req_t ifReq;
    memset(&ifReq, 0, sizeof(ifReq));
    ifReq.ir_interface=res->ai_recv_addrs[0].gsr_interface;
    ifReq.ir_scope_id=0;
    if (AF_INET6 == saFamily)
    {
        struct sockaddr_in6 sa6;
        memcpy (&sa6, &res->ai_recv_addrs[0].gsr_group, sizeof (sa6));
        ifReq.ir_scope_id = sa6.sin6_scope_id;
    }
    if (!pgm_bind3 (m_socket,
                    &addr, sizeof(addr),
                    &ifReq, sizeof(ifReq),        /* tx interface */
                    &ifReq, sizeof(ifReq),        /* rx interface */
                    &pgmErr))
    {
        std::cout<<"Bind failed"<<std::endl;
    }

    //join IP multicast groups
    unsigned i;
    for (i = 0; i < res->ai_recv_addrs_len; i++)
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_JOIN_GROUP, &res->ai_recv_addrs[i], sizeof(struct group_req));
    pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_SEND_GROUP, &res->ai_send_addrs[0], sizeof(struct group_req));
    pgm_freeaddrinfo (res);
    res=NULL;

    //set IP parameters
    const int loopBack=1;
    const int nonBlocking=0; //0=blocking, 1=non blocking
    const int ttl=16;
    const int dscp=0x2e << 2; //Expedited Forwarding PHB for network elements, no ECN.

    pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_MULTICAST_LOOP, &loopBack, sizeof(loopBack));
    pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_MULTICAST_HOPS, &ttl, sizeof(ttl));
    if (AF_INET6 != saFamily)
    {
        pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_TOS, &dscp, sizeof(dscp));
    }
    pgm_setsockopt (m_socket, IPPROTO_PGM, PGM_NOBLOCK, &nonBlocking, sizeof(nonBlocking));

    if (!pgm_connect (m_socket, &pgmErr))
    {
        std::cout<<"Failed to connect socket"<<std::endl;
    }
}

size_t PgmSocket::Recv(char* buf, size_t bufSize)
{
    size_t bytesRecv=0;
    pgm_error_t* pgmError=NULL;
    const int status=pgm_recv(m_socket, buf, bufSize, MSG_ERRQUEUE, &bytesRecv, &pgmError);
    if (status!=PGM_IO_STATUS_NORMAL)
    {
        std::cout<<"recv "<<StatusToString(status)<<std::endl;
    }
    return bytesRecv;
}

bool PgmSocket::Send(const char* buf, size_t bufSize)
{
    size_t sent=0;
    int status=pgm_send(m_socket, buf, bufSize, &sent);
    return status==PGM_IO_STATUS_NORMAL;
//    if (status!=PGM_IO_STATUS_NORMAL)
//    {
//        std::cout<<"Send "<<StatusToString(status)<<std::endl;
//    }
}

void PgmSocket::HandleNak()
{
    pgm_msgv_t dummyMsg;
    size_t dummyBytes=0;
    pgm_error_t* pgmError=NULL;
    const int status = pgm_recvmsgv (m_socket, &dummyMsg, 1, MSG_ERRQUEUE, &dummyBytes, &pgmError);
    if (status!=PGM_IO_STATUS_NORMAL && status!=PGM_IO_STATUS_TIMER_PENDING)
    {
        std::cout<<"HandleNak "<<StatusToString(status)<<std::endl;
    }
}

std::string PgmSocket::StatusToString(int status) const
{
    switch (status)
    {
    case PGM_IO_STATUS_NORMAL:
        return "PGM_IO_STATUS_NORMAL";

    case PGM_IO_STATUS_RESET:
        return "PGM_IO_STATUS_RESET";

    case PGM_IO_STATUS_ERROR:
        return "PGM_IO_STATUS_ERROR";

    case PGM_IO_STATUS_WOULD_BLOCK:
        return "PGM_IO_STATUS_WOULD_BLOCK";

    case PGM_IO_STATUS_TIMER_PENDING:
        return "PGM_IO_STATUS_TIMER_PENDING";

    case PGM_IO_STATUS_RATE_LIMITED:
        return "PGM_IO_STATUS_RATE_LIMITED";

    default:
        return "OTHER_VAL";
    }

}

