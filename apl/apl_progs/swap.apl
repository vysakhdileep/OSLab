decl
	integer a[10],bubblesort();
	integer s;
	integer p;
enddecl
integer bubblesort()
{
	integer i,j,k;
	i=0;
	while i<10 do
		j=0;
		while j<10-i-1 do
			if a[j]<a[j+1] then
				k=a[j];
				a[j]=a[j+1];
				a[j+1]=k;
			endif;
			j=j+1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}
integer main()
{
	integer i;
	i=0;
	print("Open");
	s=Open("samples.dat");
	print(s);
	while i<10 do
		p=Read(s,a[i]);
		i=i+1;
	endwhile;
	i=bubblesort();
	p=Seek(s,0);
	print("Write");
	s=Create("samples2.dat");
	s=Open("samples2.dat");
	print(s);
	print("start");
	i=0;
	while i<10 do
		p=Write(s,a[i]);
                print(a[i]);    
		i=i+1;
	endwhile;
	print("Close");
	return 0;
}
