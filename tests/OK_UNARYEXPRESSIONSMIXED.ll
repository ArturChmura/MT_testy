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
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = xor i1 1, 0
%t2 = zext i1 %t1 to i32
%t3 = mul i32 -1, %t2
%t4 = mul i32 -1, %t3
%t5 = mul i32 -1, %t4
%t6 = xor i32 %t5, -1 
%t7 = xor i32 %t6, -1 
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t7)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t8 = xor i1 1, 0
%t9 = xor i1 1, %t8
%t10 = xor i1 1, %t9
%t11 = zext i1 %t10 to i32
%t12 = sitofp i32 %t11 to double 
%t13 = fneg double 0.25 
%t14 = fneg double %t13 
%t15 = fmul double %t12, %t14
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t15)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t16 = fptosi double 9.999 to i32
%t17 = mul i32 -1, 5
%t18 = mul i32 -1, %t17
%t19 = add i32 %t16, %t18
%t20 = xor i32 %t19, -1 
%t21 = xor i32 %t20, -1 
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t21)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t22 = xor i1 1, 1
br label %label4
label4:
br i1 %t22, label %label5, label %label7
label5:
%t23 = xor i1 1, 0
br label %label6
label6:
br label %label7
label7:
%t24 = phi i1 [%t22,%label4],[%t23,%label6]
%t25 = xor i1 1, %t24
br i1 %t25, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t26 = sitofp i32 8 to double 
%t27 = fptosi double %t26 to i32
%t28 = sitofp i32 %t27 to double 
%t29 = fadd double %t28, 0.12
%t30 = fptosi double %t29 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t30)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
%t31 = fptosi double 7.458927364 to i32
%t32 = xor i32 %t31, -1 
%t33 = xor i32 %t32, -1 
%t34 = xor i32 %t33, -1 
%t35 = xor i32 %t34, -1 
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t35)
ret i32 0
}
