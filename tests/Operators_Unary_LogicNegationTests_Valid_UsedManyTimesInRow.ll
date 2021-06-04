; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1b = alloca i1
%v2k = alloca i1
store i1 1, i1* %v1b
%t1 = load i1, i1* %v1b
%t2 = load i1, i1* %v1b
%t3 = xor i1 1, %t2
%t4 = xor i1 1, %t3
%t5 = xor i1 1, %t4
%t6 = xor i1 1, %t5
%t7 = xor i1 1, %t6
%t8 = xor i1 1, %t7
%t9 = xor i1 1, %t8
%t10 = xor i1 1, %t9
%t11 = xor i1 1, %t10
%t12 = xor i1 1, %t11
%t13 = xor i1 1, %t12
%t14 = xor i1 1, %t13
%t15 = xor i1 1, %t14
%t16 = xor i1 1, %t15
%t17 = xor i1 1, %t16
store i1 %t17, i1* %v2k
%t18 = load i1, i1* %v2k
ret i32 0
}
