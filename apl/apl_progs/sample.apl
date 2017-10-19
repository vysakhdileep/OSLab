integer main()
{
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("sample.xsm");
	else
		while(childpid != -1) do
			if(childpid>0 && childpid<32) then			
				print(childpid);
			else
				breakpoint;
			endif;	
		endwhile;
	endif;
return 0;
}

