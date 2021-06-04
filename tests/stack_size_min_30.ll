; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[28 x i8] c"
OMG your stack is soo big!\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = add i32 29, 30
%t2 = add i32 28, %t1
%t3 = add i32 27, %t2
%t4 = add i32 26, %t3
%t5 = add i32 25, %t4
%t6 = add i32 24, %t5
%t7 = add i32 23, %t6
%t8 = add i32 22, %t7
%t9 = add i32 21, %t8
%t10 = add i32 20, %t9
%t11 = add i32 19, %t10
%t12 = add i32 18, %t11
%t13 = add i32 17, %t12
%t14 = add i32 16, %t13
%t15 = add i32 15, %t14
%t16 = add i32 14, %t15
%t17 = add i32 13, %t16
%t18 = add i32 12, %t17
%t19 = add i32 11, %t18
%t20 = add i32 10, %t19
%t21 = add i32 9, %t20
%t22 = add i32 8, %t21
%t23 = add i32 7, %t22
%t24 = add i32 6, %t23
%t25 = add i32 5, %t24
%t26 = add i32 4, %t25
%t27 = add i32 3, %t26
%t28 = add i32 2, %t27
%t29 = add i32 1, %t28
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t29)
call i32 (i8*, ...) @printf(i8* bitcast ([28 x i8]* @str1 to i8*))
ret i32 0
}
