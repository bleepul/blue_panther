 #!/usr/bin/perl
 
 use Finance::QuoteOptions;
  my $q=Finance::QuoteOptions->new('DIA');
  die 'Retrieve Failed' unless $q->retrieve;
  
  $q->retrieve;
  if (@{$q->expirations}) {
        print "There are options\n";
  } else {
        print "There are NOT options\n";
  }

  #Expiration dates in ISO format (YYYYMMDD)
  #my @expirations = @{$q->expirations};

  #Calls/Puts for next expiration, sorted by strike price
  #my @calls = @{$q->calls(0)};
  #my @puts = @{$q->puts(0)};

  #Data from an individual option
  #my $strike = $q->option('XYZAB')->{strike};
  #my $symbol = $q->option('XYZAB')->{symbol};
  ##my $bid = $q->option('XYZAB')->{bid};
  #my $ask = $q->option('XYZAB')->{ask};
  
  #my @k = keys %$q;
 # print "@k";