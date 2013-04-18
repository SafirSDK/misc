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
#ifndef __DOUF_TEST_COMMON_H__
#define __DOUF_TEST_COMMON_H__

class StopHandler:
    public Safir::Dob::StopHandler
{
public:
    StopHandler(boost::asio::io_service& ioService)
        : m_ioService(ioService)
    {

    }

    virtual void OnStopOrder()
    {
        m_ioService.stop();
    }

private:
    boost::asio::io_service& m_ioService;
};


#endif

