use Net::SSH qw(sshopen2);
use strict;

my $user = "username";
my $host = "hostname";
my $cmd = "command";

sshopen2 ("$user\@$host", *READER, *WRITER, "$cmd")|| die "ssh:$!;

while (<READER>){
	chomp();
	print "$_\n";
}

close(READER);
close(WRITER);
