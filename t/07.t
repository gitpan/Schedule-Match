# -*- mode: perl -*-
#
# $Id: 07.t,v 1.2 1999/10/24 09:41:26 tai Exp $
#

use Test;

BEGIN { plan tests => 2 }

use Time::Local;
use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

$this_schedule = {
    life => 3600,
    t_mh => '0',
    t_hd => '0',
    t_dm => '10,15',
    t_my => '10',
    t_yt => '1999',
    t_dw => '*',
    t_wm => '*',
    t_om => '*',
};

$that_schedule = {
    life => 3600 * 25,
    t_mh => '0',
    t_hd => '0',
    t_dm => '*',
    t_my => '10',
    t_yt => '1999',
    t_dw => '0,2',
    t_wm => '*',
    t_om => '2',
};

@when = rcheck($this_schedule, $that_schedule, 1, 3);

ok($when[0], timelocal(0, 0, 0, 10, 10, 1999 - 1900));
ok($when[1], timelocal(0, 0, 0, 15, 10, 1999 - 1900));

exit(0);
