/*P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).*/


Declare @Number INT=1
while(@Number < = 20)
Begin
    Print Replicate('* ',@Number);
    set @Number = @number+1;
END