; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[28 x i8] c"witaj swiecie
Nie ma lipy!!\00"
@str2 = constant[30 x i8] c"
witaj swiecie

Nie ma lipy!!\00"
@str3 = constant[29 x i8] c"
witaj swiecie
Nie ma lipy!!\00"
@str4 = constant[38 x i8] c"

witaj swiecie Nie ma\22 lipy \22 hoho!!\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
call i32 (i8*, ...) @printf(i8* bitcast ([28 x i8]* @str1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([30 x i8]* @str2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([29 x i8]* @str3 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([38 x i8]* @str4 to i8*))
ret i32 0
}
