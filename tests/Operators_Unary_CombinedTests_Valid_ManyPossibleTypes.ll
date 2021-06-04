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
%v1x = alloca i32
%v2d = alloca double
%v3b = alloca i1
%t1 = mul i32 -1, 1
store i32 %t1, i32* %v1x
%t2 = load i32, i32* %v1x
%t3 = mul i32 -1, 5
%t4 = mul i32 -1, %t3
%t5 = mul i32 -1, %t4
%t6 = mul i32 -1, %t5
%t7 = mul i32 -1, %t6
%t8 = mul i32 -1, %t7
%t9 = mul i32 -1, %t8
%t10 = mul i32 -1, %t9
store i32 %t10, i32* %v1x
%t11 = load i32, i32* %v1x
%t12 = xor i32 5, -1 
store i32 %t12, i32* %v1x
%t13 = load i32, i32* %v1x
%t14 = mul i32 -1, 6
%t15 = xor i32 %t14, -1 
%t16 = xor i32 %t15, -1 
%t17 = mul i32 -1, %t16
%t18 = mul i32 -1, 4
%t19 = xor i32 %t18, -1 
%t20 = xor i32 %t19, -1 
%t21 = sub i32 %t17, %t20
store i32 %t21, i32* %v1x
%t22 = load i32, i32* %v1x
%t23 = fptosi double 3.1415 to i32
store i32 %t23, i32* %v1x
%t24 = load i32, i32* %v1x
%t25 = fneg double 1.54 
%t26 = fptosi double %t25 to i32
store i32 %t26, i32* %v1x
%t27 = load i32, i32* %v1x
%t28 = zext i1 1 to i32
store i32 %t28, i32* %v1x
%t29 = load i32, i32* %v1x
%t30 = zext i1 0 to i32
store i32 %t30, i32* %v1x
%t31 = load i32, i32* %v1x
%t32 = sitofp i32 5 to double 
store double %t32, double* %v2d
%t33 = load double, double* %v2d
%t34 = load double, double* %v2d
%t35 = fneg double %t34 
store double %t35, double* %v2d
%t36 = load double, double* %v2d
%t37 = mul i32 -1, 1
%t38 = mul i32 -1, 2
%t39 = sub i32 %t37, %t38
%t40 = sitofp i32 %t39 to double 
store double %t40, double* %v2d
%t41 = load double, double* %v2d
%t42 = sitofp i32 5 to double 
store double %t42, double* %v2d
%t43 = load double, double* %v2d
store double 5.6, double* %v2d
%t44 = load double, double* %v2d
%t45 = zext i1 1 to i32
%t46 = sitofp i32 %t45 to double 
store double %t46, double* %v2d
%t47 = load double, double* %v2d
%t48 = xor i1 1, 0
%t49 = zext i1 %t48 to i32
%t50 = sitofp i32 %t49 to double 
store double %t50, double* %v2d
%t51 = load double, double* %v2d
%t52 = xor i1 1, 1
store i1 %t52, i1* %v3b
%t53 = load i1, i1* %v3b
%t54 = xor i1 1, 0
store i1 %t54, i1* %v3b
%t55 = load i1, i1* %v3b
ret i32 0
}
