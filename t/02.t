# -*- mode: perl -*-
#
# $Id: 02.t,v 1.2 1999/10/24 09:41:26 tai Exp $
#

use Test;

BEGIN { plan tests => 1 }

use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

for (1996..2004) {
    $list .= isleap($_) ? "1" : "0";
}

ok($list, "100010001");

exit(0);
