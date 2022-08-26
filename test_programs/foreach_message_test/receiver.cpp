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
#include <Safir/Dob/Connection.h>
#include <Safir/Dob/SuccessResponse.h>
#include <Safir/Dob/ErrorResponse.h>
#include <Safir/Dob/ResponseGeneralErrorCodes.h>
#include <Safir/Dob/Typesystem/Serialization.h>
#include <DoufTest/MessageReceiver.h>
#include <iostream>
#include "common.h"

class Receiver:
    public Safir::Dob::EntityHandler
{
public:
    Receiver()
    {
        m_connection.Attach();
    }
    
    virtual void OnRevokedRegistration(const Safir::Dob::Typesystem::TypeId     /*typeId*/,
                                       const Safir::Dob::Typesystem::HandlerId& /*handlerId*/) {}

    virtual void OnCreateRequest(const Safir::Dob::EntityRequestProxy /*entityRequestProxy*/,
                                 Safir::Dob::ResponseSenderPtr        responseSender) 
    {
        using namespace Safir::Dob;
        responseSender->Send(ErrorResponse::CreateErrorResponse
                             (ResponseGeneralErrorCodes::SafirReqErr(),
                              L"Create requests are not allowed"));
    }

    virtual void OnUpdateRequest(const Safir::Dob::EntityRequestProxy entityRequestProxy,
                                 Safir::Dob::ResponseSenderPtr        responseSender) 
    {
        //        std::wcout << "Got a message!" << std::endl;
        /*        DoufTest::MessageReceiverPtr msg = 
            boost::static_pointer_cast<DoufTest::MessageReceiver>(entityRequestProxy.GetRequest());
            std::wcout << Safir::Dob::Typesystem::Serialization::ToXml(msg) << std::endl;*/
        static size_t num = 0;
        ++num;
        if (num % 1000 == 0)
        {
            std::wcout << num << std::endl;
        }
        responseSender->Send(Safir::Dob::SuccessResponse::Create());
    }

    virtual void OnDeleteRequest(const Safir::Dob::EntityRequestProxy /*entityRequestProxy*/,
                                 Safir::Dob::ResponseSenderPtr        responseSender) 
    {
        using namespace Safir::Dob;
        responseSender->Send(ErrorResponse::CreateErrorResponse
                             (ResponseGeneralErrorCodes::SafirReqErr(),
                              L"Delete requests are not allowed"));
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

    // Use InstanceId to generate a random handler id...
    const Safir::Dob::Typesystem::HandlerId handler
        (Safir::Dob::Typesystem::InstanceId::GenerateRandom().GetRawValue());

    connection.Open(L"receiver", handler.ToString(), 0, &stopHandler, &dispatcher);
    std::wcout << "Connected" << std::endl;

    Receiver receiver;


    connection.RegisterEntityHandler(DoufTest::MessageReceiver::ClassTypeId,
                                     handler,
                                     Safir::Dob::InstanceIdPolicy::HandlerDecidesInstanceId,
                                     &receiver);

    connection.SetAll(DoufTest::MessageReceiver::Create(),
                      Safir::Dob::Typesystem::InstanceId::GenerateRandom(),
                      handler);

    boost::asio::io_service::work work(ioService);
    ioService.run();
    return 0;
}
