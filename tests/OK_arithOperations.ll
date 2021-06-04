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
@str3 = constant[4 x i8] c"


\00"
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = add i32 5, 5
%t2 = sitofp i32 %t1 to double 
%t3 = fmul double %t2, 2.5
%t4 = sitofp i32 18 to double 
%t5 = fsub double %t3, %t4
%t6 = fptosi double 7.35 to i32
%t7 = sitofp i32 %t6 to double 
%t8 = fcmp oeq double %t5, %t7
br i1 %t8, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t9 = sdiv i32 1, 2
%t10 = sitofp i32 1 to double 
%t11 = sitofp i32 2 to double 
%t12 = fdiv double %t10, %t11
%t13 = sitofp i32 %t9 to double 
%t14 = fcmp oeq double %t13, %t12
br i1 %t14, label %label4, label %label5
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label6
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t15 = sitofp i32 64 to double 
%t16 = sitofp i32 2 to double 
%t17 = fdiv double %t15, %t16
%t18 = sitofp i32 2 to double 
%t19 = fdiv double %t17, %t18
%t20 = sitofp i32 2 to double 
%t21 = fdiv double %t19, %t20
%t22 = sitofp i32 2 to double 
%t23 = fdiv double %t21, %t22
%t24 = sitofp i32 2 to double 
%t25 = fdiv double %t23, %t24
%t26 = sitofp i32 2 to double 
%t27 = fdiv double %t25, %t26
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t27)
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str3 to i8*))
%t28 = sub i32 4, 2
%t29 = sub i32 %t28, 1
%t30 = sub i32 5, 3
%t31 = sub i32 %t30, 1
%t32 = mul i32 %t29, %t31
%t33 = mul i32 -1, 2
%t34 = add i32 %t33, 3
%t35 = add i32 %t34, 1
%t36 = icmp eq i1 1, 0
%t37 = xor i1 1, %t36
%t38 = zext i1 %t37 to i32
%t39 = sub i32 %t35, %t38
%t40 = mul i32 %t32, %t39
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t40)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t41 = mul i32 3, 3
%t42 = add i32 2, %t41
%t43 = add i32 %t42, 5
%t44 = sdiv i32 10, 2
%t45 = add i32 %t43, %t44
%t46 = sub i32 %t45, 6
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t46)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
%t47 = fmul double 1.5, 1.5
%t48 = fmul double %t47, 1.5
%t49 = fmul double %t48, 1.5
%t50 = fmul double %t49, 1.5
%t51 = fmul double %t50, 1.5
%t52 = fmul double %t51, 1.5
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t52)
ret i32 0
}
