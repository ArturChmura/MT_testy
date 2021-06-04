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
%v1a = alloca double
%v2b = alloca i32
store double 0.0, double* %v1a
%t1 = load double, double* %v1a
store double 0.1, double* %v1a
%t2 = load double, double* %v1a
store double 1.0, double* %v1a
%t3 = load double, double* %v1a
store double 11240.0, double* %v1a
%t4 = load double, double* %v1a
store double 124124.0012, double* %v1a
%t5 = load double, double* %v1a
%t6 = sitofp i32 12412400 to double 
store double %t6, double* %v1a
%t7 = load double, double* %v1a
%t8 = sitofp i32 1220401 to double 
store double %t8, double* %v1a
%t9 = load double, double* %v1a
%t10 = fneg double 0.0 
store double %t10, double* %v1a
%t11 = load double, double* %v1a
%t12 = fneg double 0.1 
store double %t12, double* %v1a
%t13 = load double, double* %v1a
%t14 = fneg double 1.0 
store double %t14, double* %v1a
%t15 = load double, double* %v1a
%t16 = fneg double 11240.0 
store double %t16, double* %v1a
%t17 = load double, double* %v1a
%t18 = fneg double 124124.0012 
store double %t18, double* %v1a
%t19 = load double, double* %v1a
%t20 = mul i32 -1, 12412400
%t21 = sitofp i32 %t20 to double 
store double %t21, double* %v1a
%t22 = load double, double* %v1a
%t23 = mul i32 -1, 1220401
%t24 = sitofp i32 %t23 to double 
store double %t24, double* %v1a
%t25 = load double, double* %v1a
store i32 0, i32* %v2b
%t26 = load i32, i32* %v2b
store i32 1024, i32* %v2b
%t27 = load i32, i32* %v2b
%t28 = mul i32 -1, 12442
store i32 %t28, i32* %v2b
%t29 = load i32, i32* %v2b
store i32 100000, i32* %v2b
%t30 = load i32, i32* %v2b
%t31 = load double, double* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t31)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t32 = load i32, i32* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t32)
ret i32 0
}
