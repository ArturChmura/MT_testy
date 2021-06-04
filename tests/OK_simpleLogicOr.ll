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
%v2b = alloca double
%v3c = alloca i1
%t1 = mul i32 5, 2
store i32 %t1, i32* %v1a
%t2 = load i32, i32* %v1a
%t3 = sdiv i32 10, 3
%t4 = sitofp i32 %t3 to double 
store double %t4, double* %v2b
%t5 = load double, double* %v2b
%t6 = load i32, i32* %v1a
%t7 = load double, double* %v2b
%t8 = sitofp i32 %t6 to double 
%t9 = fcmp ogt double %t8, %t7
br label %label1
label1:
br i1 %t9, label %label4, label %label2
label2:
%t10 = sitofp i32 15 to double 
%t11 = fcmp olt double 5.078, %t10
br label %label3
label3:
br label %label4
label4:
%t12 = phi i1 [%t9,%label1],[%t11,%label3]
store i1 %t12, i1* %v3c
%t13 = load i1, i1* %v3c
ret i32 0
}
