Declare @Number INT=20
while(@NUmber >0)
Begin
    Print Replicate('*',@Number);
    set @Number = @number-1;
END