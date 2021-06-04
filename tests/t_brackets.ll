; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[2 x i8] c"
\00"
@str4 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 10)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 10)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
store i32 10, i32* %v1a
%t1 = load i32, i32* %v1a
store i32 1, i32* %v1a
%t2 = load i32, i32* %v1a
%t3 = add i32 10, 4
%t4 = sub i32 %t3, 2
store i32 %t4, i32* %v2b
%t5 = load i32, i32* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 1)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 10)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
ret i32 0
}
