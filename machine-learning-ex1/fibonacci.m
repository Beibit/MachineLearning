function [n] = fibonacci(x)
a1=1;
a2=1;
if x <3 n=1;
else
	for i=3:x,
		n=a1+a2;
		a1=a2;
		a2=n;
	end;
end;


