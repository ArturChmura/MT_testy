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
%v2a = alloca i1
store i1 0, i1* %v1b
%t1 = load i1, i1* %v1b
%t2 = load i1, i1* %v1b
%t3 = xor i1 1, %t2
store i1 %t3, i1* %v2a
%t4 = load i1, i1* %v2a
ret i32 0
}
