# -*- mode: perl -*-
#
# $Id: 03.t,v 1.3 1999/10/26 16:20:52 tai Exp $
#

use Test;

BEGIN { plan tests => 6 }

use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

$time = time;
@time = localtime($time);
$hash = uthash($time);

ok($hash->{t_mh}, $time[1]);
ok($hash->{t_hd}, $time[2]);
ok($hash->{t_dm}, $time[3]);
ok($hash->{t_my}, $time[4]);
ok($hash->{t_yt}, $time[5] + 1900);
ok($hash->{t_dw}, $time[6]);

exit(0);
