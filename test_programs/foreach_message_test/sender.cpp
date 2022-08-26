/******************************************************************************
*
* Copyright Saab AB, 2013 (http://www.safirsdk.com)
*
* Created by: Lars Hagström / lars.hagstrom@consoden.se
*
*******************************************************************************
*
* This file is part of Safir SDK Core.
*
* Safir SDK Core is free software: you can redistribute it and/or modify
* it under the terms of version 3 of the GNU General Public License as
* published by the Free Software Foundation.
*
* Safir SDK Core is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with Safir SDK Core.  If not, see <http://www.gnu.org/licenses/>.
*
******************************************************************************/

#include <boost/asio.hpp>
#include <Safir/Utilities/AsioDispatcher.h>
#include <Safir/Utilities/ForEach/UpdateRequest.h>
#include <Safir/Utilities/ForEach/FullResponse.h>
#include <DoufTest/MessageReceiver.h>
#include <Safir/Dob/Connection.h>
#include <Safir/Dob/Typesystem/Serialization.h>
#include <Safir/Dob/OverflowException.h>
#include <iostream>
#include "common.h"


class Timer
{
public:
    Timer()
        : m_startTime(Now())
    {

    }

    void restart()
    {
        m_startTime = Now();
    }
    
    double elapsed() const
    {
        return Now() - m_startTime;
    }
private:
    static double Now()
    {
        timespec t;
        clock_gettime(CLOCK_REALTIME,&t);
        return t.tv_sec + t.tv_nsec / 1.0e9;
    }
    double m_startTime;
};

class Requestor:
    public Safir::Dob::Requestor
{
public:
    Requestor()
    {
        m_connection.Attach();
    }
    
    void OnResponse(const Safir::Dob::ResponseProxy responseProxy)
    {
        Safir::Utilities::ForEach::BriefResponsePtr response = 
            boost::dynamic_pointer_cast<Safir::Utilities::ForEach::BriefResponse>
            (responseProxy.GetResponse());

        if (response == NULL || response->NumberOfErrorResponses() != 0)
        {
            std::wcout << "Got bad response" << std::endl;
            std::wcout << Safir::Dob::Typesystem::Serialization::ToXml(responseProxy.GetResponse()) << std::endl;
        }
    }

    void OnNotRequestOverflow()
    {
        //std::wcout << "Got OnNotRequestOverflow" << std::endl;
        SendSome();
    }

    void SendSome()
    {
        Safir::Utilities::ForEach::UpdateRequestPtr request = 
            Safir::Utilities::ForEach::UpdateRequest::Create();
        request->TemplateEntityRequest() = DoufTest::MessageReceiver::Create();

        request->ResponseType() = Safir::Utilities::ForEach::ResponseType::Brief;

        int i = 0;
        for (Safir::Dob::EntityIterator it = m_connection.GetEntityIterator(DoufTest::MessageReceiver::ClassTypeId,true);
             it != Safir::Dob::EntityIterator(); ++it)
        {
            request->OperateOn()[i].SetVal(it->GetEntityId());
            ++i;
        }

        try
        {
            //send requests until our out queue is full
            for(;;)
            {
                m_connection.ServiceRequest(request,
                                            Safir::Dob::Typesystem::HandlerId(),
                                            this);

                static size_t num = 0;
                ++num;
                if (num % 1000 == 0)
                {
                    std::wcout << num << std::endl;
                }
                if (num % 10000 == 0)
                {
                    static Timer timer;
                    std::wcout << timer.elapsed() << std::endl;
                    std::wcout << 10000 / timer.elapsed() << " messages per second " << std::endl;
                    timer.restart();
                }
            }
        }
        catch (const Safir::Dob::OverflowException& exc)
        {
            
        }
    }

private:
    Safir::Dob::SecondaryConnection m_connection;
};

int main()
{
    boost::asio::io_service ioService;
    Safir::Dob::Connection connection;
    Safir::Utilities::AsioDispatcher dispatcher(connection, ioService);
    StopHandler stopHandler(ioService);

    connection.Open(L"sender", L"", 0, &stopHandler, &dispatcher);
    std::wcout << "Connected" << std::endl;

    Requestor requestor;
    requestor.SendSome();
    boost::asio::io_service::work work(ioService);
    ioService.run();
    return 0;
}
