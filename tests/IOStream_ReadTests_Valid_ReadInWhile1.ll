; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[5 x i8] c" __
\00"
@str2 = constant[9 x i8] c"   |  |
\00"
@str3 = constant[9 x i8] c" __|__|
\00"
@str4 = constant[6 x i8] c"|  |
\00"
@str5 = constant[8 x i8] c"|  |__
\00"
@str6 = constant[2 x i8] c"
\00"
@str7 = constant[2 x i8] c" \00"
@str8 = constant[5 x i8] c"Hi!
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1k = alloca i32
%v2d = alloca double
%v3b = alloca i1
%v4i = alloca i32
%v5j = alloca i32
%t1 = load i1, i1* %v3b
br label %label7
label7:
br i1 %t1, label %label10, label %label8
label8:
%t2 = add i32 1, 1
%t3 = add i32 1, 1
%t4 = add i32 1, 1
%t5 = add i32 1, 1
%t6 = add i32 1, 1
%t7 = add i32 %t5, %t6
%t8 = add i32 %t4, %t7
%t9 = add i32 %t3, %t8
%t10 = add i32 %t2, %t9
%t11 = icmp slt i32 1, %t10
br label %label9
label9:
br label %label10
label10:
%t12 = phi i1 [%t1,%label7],[%t11,%label9]
store i1 %t12, i1* %v3b
%t13 = load i1, i1* %v3b
%t14 = load i1, i1* %v3b
br label %label11
label11:
br i1 %t14, label %label12, label %label14
label12:
store double 5.0, double* %v2d
%t15 = load double, double* %v2d
%t16 = fptosi double %t15 to i32
%t17 = icmp eq i32 %t16, 5
br label %label13
label13:
br label %label14
label14:
%t18 = phi i1 [%t14,%label11],[%t17,%label13]
store i1 %t18, i1* %v3b
%t19 = load i1, i1* %v3b
%t20 = load double, double* %v2d
%t21 = fcmp oeq double %t20, 5.0
br i1 %t21, label %label15, label %label16
label15:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @str2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @str3 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([8 x i8]* @str5 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str6 to i8*))
store i32 0, i32* %v4i
%t22 = load i32, i32* %v4i
br label %label1
label1:
%t23 = load double, double* %v2d
%t24 = sitofp i32 0 to double 
%t25 = fcmp ogt double %t23, %t24
br i1 %t25, label %label2, label %label3
label2:
%t26 = load double, double* %v2d
%t27 = fsub double %t26, 0.5
store double %t27, double* %v2d
%t28 = load double, double* %v2d
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_res to i8*), i32* %v1k)
%t29 = load double, double* %v2d
%t30 = load i32, i32* %v1k
%t31 = icmp ne i32 %t30, 0
%t32 = zext i1 %t31 to i32
%t33 = sitofp i32 %t32 to double 
%t34 = fadd double %t29, %t33
store double %t34, double* %v2d
%t35 = load double, double* %v2d
store i32 0, i32* %v5j
%t36 = load i32, i32* %v5j
br label %label4
label4:
%t37 = load i32, i32* %v5j
%t38 = load i32, i32* %v4i
%t39 = icmp slt i32 %t37, %t38
br i1 %t39, label %label5, label %label6
label5:
%t40 = load i32, i32* %v5j
%t41 = add i32 %t40, 1
store i32 %t41, i32* %v5j
%t42 = load i32, i32* %v5j
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str7 to i8*))
br label %label4
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str8 to i8*))
%t43 = load i32, i32* %v4i
%t44 = add i32 %t43, 1
store i32 %t44, i32* %v4i
%t45 = load i32, i32* %v4i
br label %label1
label3:
br label %label16
label16:
ret i32 0
}
