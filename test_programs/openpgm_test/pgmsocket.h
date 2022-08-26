#ifndef PGMSOCKET_H
#define PGMSOCKET_H

#include <pgm/pgm.h>

class PgmSocket
{
public:
    PgmSocket(bool receiver);

    size_t Recv(char* buf, size_t bufSize);

    bool Send(const char* buf, size_t bufSize);
    void HandleNak();

private:
     pgm_sock_t* m_socket;

     std::string StatusToString(int status) const;
};

#endif // PGMSOCKET_H
