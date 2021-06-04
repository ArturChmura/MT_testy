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
@str3 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i1
%v3c = alloca double
store i32 1, i32* %v1a
%t1 = load i32, i32* %v1a
%t2 = sitofp i32 1 to double 
store double %t2, double* %v3c
%t3 = load double, double* %v3c
%t4 = fneg double %t3 
%t5 = sitofp i32 %t1 to double 
%t6 = fcmp une double %t5, %t4
store i1 %t6, i1* %v2b
%t7 = load i1, i1* %v2b
%t8 = load i1, i1* %v2b
br i1 %t8, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t9 = load i32, i32* %v1a
%t10 = load i1, i1* %v2b
%t11 = zext i1 %t10 to i32
%t12 = add i32 %t9, %t11
%t13 = sitofp i32 %t12 to double 
store double %t13, double* %v3c
%t14 = load double, double* %v3c
%t15 = load double, double* %v3c
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t15)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t16 = load double, double* %v3c
%t17 = load i1, i1* %v2b
%t18 = zext i1 %t17 to i32
%t19 = sitofp i32 %t18 to double 
%t20 = fsub double %t16, %t19
%t21 = fptosi double %t20 to i32
%t22 = or i32 %t21, 0
%t23 = and i32 %t22, 1
store i32 %t23, i32* %v1a
%t24 = load i32, i32* %v1a
%t25 = load i32, i32* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t25)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
store i32 2, i32* %v1a
%t26 = load i32, i32* %v1a
%t27 = icmp eq i32 %t26, 2
br label %label6
label6:
br i1 %t27, label %label7, label %label9
label7:
%t28 = load i1, i1* %v2b
%t29 = xor i1 1, %t28
%t30 = icmp eq i1 %t29, 0
br label %label8
label8:
br label %label9
label9:
%t31 = phi i1 [%t27,%label6],[%t30,%label8]
br i1 %t31, label %label4, label %label5
label4:
%t32 = load i32, i32* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t32)
%t33 = load i1, i1* %v2b
br i1 %t33, label %label10, label %label11
label10:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label12
label11:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label12
label12:
br label %label5
label5:
ret i32 0
}
