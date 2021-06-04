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
%v2real = alloca double
%v3b = alloca i1
%t1 = load i1, i1* %v3b
%t2 = zext i1 %t1 to i32
%t3 = add i32 %t2, 1
%t4 = load double, double* %v2real
%t5 = fdiv double %t4, 2.0
%t6 = fptosi double %t5 to i32
%t7 = sitofp i32 2 to double 
%t8 = fptosi double %t7 to i32
%t9 = mul i32 %t6, %t8
%t10 = sub i32 %t3, %t9
store i32 %t10, i32* %v1num
%t11 = load i32, i32* %v1num
%t12 = load i1, i1* %v3b
%t13 = zext i1 %t12 to i32
%t14 = sitofp i32 %t13 to double 
%t15 = fptosi double %t14 to i32
%t16 = sitofp i32 %t15 to double 
store double %t16, double* %v2real
%t17 = load double, double* %v2real
%t18 = sitofp i32 2 to double 
%t19 = fdiv double %t18, 2.0
%t20 = fptosi double %t19 to i32
store i32 %t20, i32* %v1num
%t21 = load i32, i32* %v1num
ret i32 0
}
