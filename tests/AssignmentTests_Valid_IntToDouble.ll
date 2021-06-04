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
%v1num = alloca i32
%v2d1 = alloca double
%t1 = load i32, i32* %v1num
%t2 = sitofp i32 %t1 to double 
store double %t2, double* %v2d1
%t3 = load double, double* %v2d1
store i32 5, i32* %v1num
%t4 = load i32, i32* %v1num
%t5 = load i32, i32* %v1num
%t6 = sitofp i32 %t5 to double 
store double %t6, double* %v2d1
%t7 = load double, double* %v2d1
store double 5.0, double* %v2d1
%t8 = load double, double* %v2d1
%t9 = sitofp i32 5 to double 
store double %t9, double* %v2d1
%t10 = load double, double* %v2d1
ret i32 0
}
