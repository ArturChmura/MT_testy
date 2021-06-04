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
store i32 5, i32* %v1n
%t1 = load i32, i32* %v1n
br label %label1
label1:
%t2 = load i32, i32* %v1n
%t3 = icmp sle i32 %t2, 100
br i1 %t3, label %label2, label %label3
label2:
%t4 = load i32, i32* %v1n
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t4)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t5 = load i32, i32* %v1n
%t6 = add i32 %t5, 1
store i32 %t6, i32* %v1n
%t7 = load i32, i32* %v1n
ret i32 0
br label %label1
label3:
ret i32 0
}
