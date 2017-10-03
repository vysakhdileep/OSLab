integer main()
{
integer pid;
string n;
while(1==1) do
	print("Command");
	read(n);
	if ( n =="exit") then
		
	Exit();
	break;
	endif;
	pid = Fork();
	if(pid == -2) then
		
		pid = Exec(n);
		if(pid == -1) then
		print("Error!!");
		Exit();
		continue;
		endif;
		
	endif;
	if(pid>=0 && pid<=32) then
	pid = Wait(pid);
	endif;
endwhile;
return 0;
}
