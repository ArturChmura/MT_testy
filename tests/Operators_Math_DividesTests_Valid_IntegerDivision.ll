; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1n = alloca i32
%t1 = sdiv i32 5, 2
store i32 %t1, i32* %v1n
%t2 = load i32, i32* %v1n
%t3 = load i32, i32* %v1n
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t3)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t4 = sdiv i32 6, 2
store i32 %t4, i32* %v1n
%t5 = load i32, i32* %v1n
%t6 = load i32, i32* %v1n
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t6)
ret i32 0
}
