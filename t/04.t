# -*- mode: perl -*-
#
# $Id: 04.t,v 1.2 1999/10/24 09:41:26 tai Exp $
#

use Test;

BEGIN { plan tests => 7 }

use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

ok("0123456789", join("", expand("*",   [0..9])));
ok("02468",      join("", expand("*/1", [0..9])));
ok("0123456789", join("", expand("0-9", [0..9])));
ok("02468",      join("", expand("0-9/1", [0..9])));
ok("0123456789", join("", expand("0,1,2,3,4,5,6,7,8,9", [0..9])));
ok("0123456789", join("", expand("0,1,2,3,4,5-9", [0..9])));
ok("02468",      join("", expand("0,1,2,3,4,5-9/1", [0..9])));

exit(0);
