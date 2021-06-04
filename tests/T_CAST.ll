; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
@str2 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca double
%v2i = alloca i32
%t1 = sitofp i32 2 to double 
store double %t1, double* %v1a
%t2 = load double, double* %v1a
store i32 1, i32* %v2i
%t3 = load i32, i32* %v2i
%t4 = load double, double* %v1a
%t5 = fptosi double %t4 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t5)
%t6 = load i32, i32* %v2i
%t7 = sitofp i32 %t6 to double 
store double %t7, double* %v1a
%t8 = load double, double* %v1a
%t9 = load i32, i32* %v2i
%t10 = sitofp i32 %t9 to double 
store double %t10, double* %v1a
%t11 = load double, double* %v1a
%t12 = load i32, i32* %v2i
%t13 = sitofp i32 %t12 to double 
store double %t13, double* %v1a
%t14 = load double, double* %v1a
%t15 = load double, double* %v1a
%t16 = fptosi double %t15 to i32
store i32 %t16, i32* %v2i
%t17 = load i32, i32* %v2i
%t18 = load double, double* %v1a
%t19 = fptosi double %t18 to i32
%t20 = sitofp i32 %t19 to double 
store double %t20, double* %v1a
%t21 = load double, double* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t22 = load double, double* %v1a
%t23 = fptosi double %t22 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t23)
%t24 = load i32, i32* %v2i
%t25 = sitofp i32 %t24 to double 
store double %t25, double* %v1a
%t26 = load double, double* %v1a
%t27 = load i32, i32* %v2i
%t28 = sitofp i32 %t27 to double 
store double %t28, double* %v1a
%t29 = load double, double* %v1a
%t30 = load i32, i32* %v2i
%t31 = sitofp i32 %t30 to double 
store double %t31, double* %v1a
%t32 = load double, double* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t33 = load i32, i32* %v2i
%t34 = add i32 2, %t33
%t35 = sitofp i32 %t34 to double 
%t36 = fptosi double %t35 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t36)
%t37 = load i32, i32* %v2i
%t38 = sitofp i32 %t37 to double 
store double %t38, double* %v1a
%t39 = load double, double* %v1a
%t40 = load i32, i32* %v2i
%t41 = sitofp i32 %t40 to double 
%t42 = fptosi double 2.2 to i32
%t43 = sitofp i32 %t42 to double 
%t44 = fadd double %t41, %t43
%t45 = fptosi double %t44 to i32
%t46 = sitofp i32 %t45 to double 
store double %t46, double* %v1a
%t47 = load double, double* %v1a
ret i32 0
}
