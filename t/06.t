# -*- mode: perl -*-
#
# $Id: 06.t,v 1.2 1999/10/24 09:41:26 tai Exp $
#

use Test;

BEGIN { plan tests => 3 }

use Time::Local;
use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

$this_schedule = {
    t_mh => '0',
    t_hd => '0',
    t_dm => '*/2',
    t_my => '10',
    t_yt => '1999',
    t_dw => '*',
    t_wm => '*',
    t_om => '*',
};

$that_schedule = {
    t_mh => '0',
    t_hd => '0',
    t_dm => '*',
    t_my => '10',
    t_yt => '1999',
    t_dw => '*',
    t_wm => '*',
    t_om => '1',
};

@when = scheck($this_schedule, $that_schedule, 1, 3);

ok($when[0], timelocal(0, 0, 0, 1, 10, 1999 - 1900));
ok($when[1], timelocal(0, 0, 0, 4, 10, 1999 - 1900));
ok($when[2], timelocal(0, 0, 0, 7, 10, 1999 - 1900));

exit(0);
