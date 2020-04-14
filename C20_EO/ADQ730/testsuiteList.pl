#!/ats/bin/perl 

use strict; 
use warnings;

      
use Log::Log4perl qw(get_logger :levels);

use QATEST::C20_EO::ADQ730::ADQ730; 

#####################################
# TESTS
#####################################

our $TESTSUITE;
$TESTSUITE->{TESTED_RELEASE} = "V04.02.03";
$TESTSUITE->{BUILD_VERSION} = "A624";
$TESTSUITE->{PATH} = '/home/ptthuy/ats_user/logs/'.$TESTSUITE->{TESTED_RELEASE};   # CGE Log Path to Store Server logs and Core Files. 

# NOTE: Email ID of test suite executer is added by default.
$TESTSUITE->{EMAIL_LIST}	= [
    'nhtai2@tma.com.vn',
];   # Email Group


our $release = $TESTSUITE->{TESTED_RELEASE};
our $build = $TESTSUITE->{BUILD_VERSION};
our @emailList	= @{$TESTSUITE->{EMAIL_LIST}};

print "************  RELEASE	==> $release \tBUILD ==> $build \n";
print "************  EMAIL_LIST ==> @emailList\n";

#####################################
# EXECUTION OF TESTS
#####################################
# , "ADQ730"
# &QATEST::C20_EO::ADQ730::ADQ730::runTests;  ################  For running all tests #########################
&QATEST::C20_EO::ADQ730::ADQ730::runTests("ADQ730_021");  ################  For running selective tests ##########################
1;
