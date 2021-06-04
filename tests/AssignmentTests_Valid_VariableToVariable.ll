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
%v1b = alloca i32
%v2c = alloca i32
%v3x1 = alloca double
%v4x2 = alloca double
%v5myBool = alloca i1
%v6mySecondBool = alloca i1
store i32 1, i32* %v1b
%t1 = load i32, i32* %v1b
store i32 %t1, i32* %v1b
%t2 = load i32, i32* %v1b
store i32 %t2, i32* %v1b
%t3 = load i32, i32* %v1b
store i32 2, i32* %v2c
%t4 = load i32, i32* %v2c
store i32 %t4, i32* %v1b
%t5 = load i32, i32* %v1b
store i32 %t5, i32* %v2c
%t6 = load i32, i32* %v2c
store double 20000.0, double* %v4x2
%t7 = load double, double* %v4x2
store double %t7, double* %v3x1
%t8 = load double, double* %v3x1
store double 0.0002, double* %v4x2
%t9 = load double, double* %v4x2
store double %t9, double* %v3x1
%t10 = load double, double* %v3x1
store double %t10, double* %v3x1
%t11 = load double, double* %v3x1
store double %t11, double* %v4x2
%t12 = load double, double* %v4x2
store i32 2, i32* %v2c
%t13 = load i32, i32* %v2c
store i32 %t13, i32* %v1b
%t14 = load i32, i32* %v1b
store i32 %t14, i32* %v2c
%t15 = load i32, i32* %v2c
store i32 %t15, i32* %v1b
%t16 = load i32, i32* %v1b
%t17 = sitofp i32 %t16 to double 
store double %t17, double* %v4x2
%t18 = load double, double* %v4x2
store i32 1, i32* %v2c
%t19 = load i32, i32* %v2c
%t20 = sitofp i32 %t19 to double 
store double %t20, double* %v3x1
%t21 = load double, double* %v3x1
store double %t21, double* %v3x1
%t22 = load double, double* %v3x1
store double %t22, double* %v4x2
%t23 = load double, double* %v4x2
%t24 = load i1, i1* %v6mySecondBool
store i1 %t24, i1* %v5myBool
%t25 = load i1, i1* %v5myBool
store i1 1, i1* %v6mySecondBool
%t26 = load i1, i1* %v6mySecondBool
store i1 %t26, i1* %v5myBool
%t27 = load i1, i1* %v5myBool
store i1 0, i1* %v5myBool
%t28 = load i1, i1* %v5myBool
store i1 %t28, i1* %v6mySecondBool
%t29 = load i1, i1* %v6mySecondBool
ret i32 0
}
