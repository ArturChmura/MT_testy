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
%v2myBool = alloca i1
%v3d = alloca double
store i32 0, i32* %v1b
%t1 = load i32, i32* %v1b
store i32 1, i32* %v1b
%t2 = load i32, i32* %v1b
store i32 53333, i32* %v1b
%t3 = load i32, i32* %v1b
store i1 0, i1* %v2myBool
%t4 = load i1, i1* %v2myBool
store i1 1, i1* %v2myBool
%t5 = load i1, i1* %v2myBool
%t6 = sitofp i32 1 to double 
store double %t6, double* %v3d
%t7 = load double, double* %v3d
%t8 = sitofp i32 0 to double 
store double %t8, double* %v3d
%t9 = load double, double* %v3d
store double 0.0, double* %v3d
%t10 = load double, double* %v3d
store double 1.0, double* %v3d
%t11 = load double, double* %v3d
store double 3.14159265, double* %v3d
%t12 = load double, double* %v3d
ret i32 0
}
