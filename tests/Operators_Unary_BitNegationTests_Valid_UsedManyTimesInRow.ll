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
%v1k = alloca i32
%t1 = xor i32 5, -1 
%t2 = xor i32 %t1, -1 
%t3 = xor i32 %t2, -1 
%t4 = xor i32 %t3, -1 
%t5 = xor i32 %t4, -1 
%t6 = xor i32 %t5, -1 
%t7 = xor i32 %t6, -1 
%t8 = xor i32 %t7, -1 
%t9 = xor i32 %t8, -1 
%t10 = xor i32 %t9, -1 
%t11 = xor i32 %t10, -1 
store i32 %t11, i32* %v1k
%t12 = load i32, i32* %v1k
ret i32 0
}
