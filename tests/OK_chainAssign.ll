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
%v1liczbaA = alloca i32
%v2liczbaB = alloca double
store i32 5, i32* %v1liczbaA
%t1 = load i32, i32* %v1liczbaA
%t2 = sitofp i32 %t1 to double 
store double %t2, double* %v2liczbaB
%t3 = load double, double* %v2liczbaB
ret i32 0
}
