# -*- mode: perl -*-
#
# $Id: 03.t,v 1.2 1999/10/24 09:41:26 tai Exp $
#

use Test;

BEGIN { plan tests => 8 }

use Schedule::Match qw(scheck rcheck uthash isleap expand localtime);

$hash = uthash(0);

## On UNIX, should match with 09:00 on Jan. 1, 1970
ok($hash->{t_mh}, 0);
ok($hash->{t_hd}, 9);
ok($hash->{t_dm}, 1);
ok($hash->{t_my}, 0);
ok($hash->{t_yt}, 1970);
ok($hash->{t_dw}, 4);
ok($hash->{t_wm}, 1);
ok($hash->{t_om}, 1);

exit(0);
