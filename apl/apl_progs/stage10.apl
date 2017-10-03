integer main()
{	
	integer pid, retval,status;
	
	
	status=Getpid();
	print("pid");
	print(status);
	status=Getppid();
	print("ppid");
	print(status);
	pid = Fork();
	if(pid == -2) then
		retval = Exec("even.xsm");
	
	endif;
	if ((pid >= 0) && (pid < 32)) then
		status=Wait(pid);
	endif;
	breakpoint;
return 0;
}
