integer main()
{
	integer pid;
	pid = Fork();
	if ( pid == -2 ) then
		print ("1odd");
		
		pid=Exec("odd.xsm");
		print ("1oddafter");
		if (pid == -2) then
			print ("2odd");
			pid = Fork();
			if ( pid == -2) then
				print("oddodd");
				Exit();
				print("not");
			else
				print("yes");
				pid =Fork();
				print (" yesfork");
				Exit();
				print ("2oddafter");
			endif;
		else
			print("even");
			Exit();
			print("aftereven");
		endif;
	else
	print("Exitting");
	Exit();
	endif;
	
	
	return 0;
}
