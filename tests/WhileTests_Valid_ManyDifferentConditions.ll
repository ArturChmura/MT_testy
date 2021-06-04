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
%v1n = alloca i32
%v2k = alloca double
store i32 0, i32* %v1n
%t1 = load i32, i32* %v1n
br label %label1
label1:
br i1 0, label %label2, label %label3
label2:
br label %label1
label3:
br label %label4
label4:
%t2 = load i32, i32* %v1n
%t3 = icmp slt i32 %t2, 10
br i1 %t3, label %label5, label %label6
label5:
%t4 = load i32, i32* %v1n
%t5 = add i32 %t4, 1
store i32 %t5, i32* %v1n
%t6 = load i32, i32* %v1n
br label %label4
label6:
br label %label7
label7:
%t7 = load i32, i32* %v1n
%t8 = load i32, i32* %v1n
%t9 = mul i32 %t7, %t8
%t10 = icmp sle i32 %t9, 100
br i1 %t10, label %label8, label %label9
label8:
%t11 = load i32, i32* %v1n
%t12 = load i32, i32* %v1n
%t13 = mul i32 %t11, %t12
store i32 %t13, i32* %v1n
%t14 = load i32, i32* %v1n
%t15 = load i32, i32* %v1n
%t16 = sub i32 %t15, 5
store i32 %t16, i32* %v1n
%t17 = load i32, i32* %v1n
%t18 = load i32, i32* %v1n
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t18)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
br label %label7
label9:
%t19 = sitofp i32 0 to double 
store double %t19, double* %v2k
%t20 = load double, double* %v2k
br label %label10
label10:
%t21 = load double, double* %v2k
%t22 = sitofp i32 10 to double 
%t23 = fcmp olt double %t21, %t22
br i1 %t23, label %label11, label %label12
label11:
%t24 = load double, double* %v2k
%t25 = sitofp i32 1 to double 
%t26 = fadd double %t24, %t25
store double %t26, double* %v2k
%t27 = load double, double* %v2k
br label %label10
label12:
br label %label13
label13:
br i1 0, label %label14, label %label15
label14:
br label %label16
label16:
br i1 1, label %label17, label %label18
label17:
%t28 = sitofp i32 0 to double 
store double %t28, double* %v2k
%t29 = load double, double* %v2k
br label %label16
label18:
br label %label13
label15:
ret i32 0
}
