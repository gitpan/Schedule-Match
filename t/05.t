# -*- mode: perl -*-
#
# $Id: 05.t,v 1.3 1999/10/26 16:20:52 tai Exp $
#

use Test;

BEGIN { plan tests => 3 }

use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

$time = time;

ok(scalar(CORE::localtime($time)), scalar(localtime($time)));

@time = localtime($time);
@core = CORE::localtime($time);

ok($time[0], $core[0]);
ok($time[8], $core[8]);

exit(0);
