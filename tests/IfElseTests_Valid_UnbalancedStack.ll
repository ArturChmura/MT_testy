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
%v1a = alloca i32
%v2d = alloca double
%v3b = alloca i1
store double 0.5, double* %v2d
%t1 = load double, double* %v2d
store i32 2, i32* %v1a
%t2 = load i32, i32* %v1a
%t3 = load i32, i32* %v1a
%t4 = load double, double* %v2d
%t5 = sitofp i32 %t3 to double 
%t6 = fcmp oeq double %t5, %t4
br i1 %t6, label %label1, label %label3
label1:
store i32 0, i32* %v1a
%t7 = load i32, i32* %v1a
store i1 0, i1* %v3b
%t8 = load i1, i1* %v3b
br label %label2
label3:
%t9 = load i32, i32* %v1a
%t10 = sitofp i32 %t9 to double 
store double %t10, double* %v2d
%t11 = load double, double* %v2d
store double 0.5, double* %v2d
%t12 = load double, double* %v2d
store double 0.6, double* %v2d
%t13 = load double, double* %v2d
br label %label2
label2:
ret i32 0
}
