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
@str6 = constant[7 x i8] c"Koniec\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = or i32 1, 0
%t2 = and i32 %t1, 0
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t2)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t3 = or i32 1, 0
%t4 = or i32 %t3, 0
%t5 = or i32 %t4, 0
%t6 = sitofp i32 %t5 to double 
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t6)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t7 = and i32 1, 0
%t8 = xor i32 1, -1 
%t9 = xor i32 %t8, -1 
%t10 = or i32 %t7, %t9
%t11 = or i32 0, %t10
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t11)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t12 = and i32 1, 0
%t13 = or i32 %t12, 1
%t14 = or i32 1, 0
%t15 = and i32 %t14, 1
%t16 = icmp eq i32 %t13, %t15
br i1 %t16, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t17 = or i32 0, 0
%t18 = or i32 0, 1
%t19 = icmp eq i32 %t17, %t18
%t20 = zext i1 %t19 to i32
%t21 = and i32 1, 1
%t22 = and i32 1, 0
%t23 = icmp eq i32 %t21, %t22
%t24 = zext i1 %t23 to i32
%t25 = icmp eq i32 %t20, %t24
%t26 = xor i1 1, %t25
br i1 %t26, label %label4, label %label5
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label6
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
%t27 = and i32 1, 1
%t28 = and i32 %t27, 1
%t29 = and i32 %t28, 1
%t30 = or i32 %t29, 0
%t31 = fptosi double 1.25 to i32
%t32 = icmp eq i32 %t30, %t31
br i1 %t32, label %label7, label %label8
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str6 to i8*))
br label %label8
label8:
ret i32 0
}
