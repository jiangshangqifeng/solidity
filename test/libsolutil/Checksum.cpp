/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0
/**
 * Unit tests for the address checksum.
 */

#include <libsolutil/CommonData.h>
#include <libsolutil/Exceptions.h>

#include <test/Common.h>

#include <boost/test/unit_test.hpp>

using namespace std;

namespace solidity::util::test
{

BOOST_AUTO_TEST_SUITE(Checksum)

BOOST_AUTO_TEST_CASE(calculate)
{
	BOOST_CHECK(passesAddressChecksum("lat1t2htvpfl862vnwdqnuekd9p4ulh3h6hdsp5yua"));
	BOOST_CHECK(passesAddressChecksum("lat1qy352euf40x7l27dauqjx3t83x4ummat8uyg9w"));
	// too short
	BOOST_CHECK(!passesAddressChecksum("lat1qk4wkczn7055exu6p8env6el0r04wfzhcuy"));
	BOOST_CHECK(!passesAddressChecksum("lat1qk4wkcznexu6p8env62rtel0r04wfzhcuy"));
	// too long
	BOOST_CHECK(!passesAddressChecksum("lat14t4kq5lna9xfhxsf7akjsdhvmxjs670mcmatk3wa9ql8"));
}

BOOST_AUTO_TEST_CASE(regular)
{
	BOOST_CHECK(passesAddressChecksum("lat1t2htvpfl862vnwdqnuekd9p4ulh3h6hdsp5yua"));
	BOOST_CHECK(passesAddressChecksum("lat1ld53vz2u580kpwmee6fvu048fsmut56ec7zrug"));
	BOOST_CHECK(passesAddressChecksum("lat1m0crksruq8nu60974x2snkfl3hwu33hm2urhnd"));
	BOOST_CHECK(passesAddressChecksum("lat16y3q5r8503aeheazu6agnapfwch8hxkmd5t6ze"));
}

BOOST_AUTO_TEST_SUITE_END()

}
