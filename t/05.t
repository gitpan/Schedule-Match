# -*- mode: perl -*-
#
# $Id: 05.t,v 1.2 1999/10/24 09:41:26 tai Exp $
#

use Test;

BEGIN { plan tests => 3 }

use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

$time = 0;
@time = localtime($time);

ok(scalar(CORE::localtime($time)), scalar(localtime($time)));
ok($time[9],  1);
ok($time[10], 1);

exit(0);
