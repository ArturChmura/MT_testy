; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[6 x i8] c"Pass \00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i32
store i32 10, i32* %v1a
%t1 = load i32, i32* %v1a
%t2 = mul i32 -1, 4
store i32 %t2, i32* %v2b
%t3 = load i32, i32* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str1 to i8*))
store i32 5, i32* %v1a
%t4 = load i32, i32* %v1a
%t5 = icmp sgt i32 %t4, 0
%t6 = icmp ne i1 %t5, 0
%t7 = icmp ne i1 %t6, 1
%t8 = icmp ne i1 %t7, 0
%t9 = load i32, i32* %v1a
%t10 = icmp eq i32 %t9, 5
%t11 = icmp ne i1 %t8, %t10
br i1 %t11, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
ret i32 0
}
