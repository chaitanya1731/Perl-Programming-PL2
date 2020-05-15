open(input, "< input.txt") or die "File not found,$!";
my @word;
$alphabet_count = 0;
while (<input>){
  chomp;
  @word = split("\n");
  @charArray = split(//,@word[0]);
	if(@word[0] =~ /(or)+/) {
		print "\n@word[0] contains or ";	 
	}
	for($i=0;$i<length(@word[0]);$i++){	
		if (@charArray[$i] =~ /[aeiou]/i){		   
			$alphabet_count++;
		}
	}
	if($alphabet_count>=2){
		print "\n@word[0] contains at least two vowel letters ";
    	$alphabet_count = 0;
	}
	if(!(@word[0] =~ /^h|^H/)) {
	 print "\n@word[0] does not start with h ";
	}
	if(@word[0] =~ /.(e|E).*(y|Y)/) {
	 print "\n@word[0] has e as the second symbol and ends with y  ";
	}
	if(@word[0] =~ /[a-z][0-9]|[0-9][a-z]/) {
	 print "\n@word[0] contains both letters and digits   ";
	}	
}
close (input);