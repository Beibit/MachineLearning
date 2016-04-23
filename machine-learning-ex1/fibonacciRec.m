function [n] = fibonacciRec(x)
	if x <3,
		n = 1;
	else
		n=fibonacci(x-1)+fibonacci(x-2);
	end;


