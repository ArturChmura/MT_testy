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
@str6 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = sitofp i32 1 to double 
%t2 = fcmp oeq double %t1, 1.0
br i1 %t2, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t3 = zext i1 1 to i32
%t4 = icmp eq i32 1, %t3
br i1 %t4, label %label4, label %label5
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label6
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t5 = fptosi double 1.05 to i32
%t6 = sitofp i32 %t5 to double 
%t7 = fcmp une double 1.05, %t6
br i1 %t7, label %label7, label %label8
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label9
label8:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label9
label9:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t8 = sitofp i32 1 to double 
%t9 = fcmp ogt double 1.05, %t8
%t10 = zext i1 %t9 to i32
%t11 = icmp sgt i32 %t10, 1
br i1 %t11, label %label10, label %label11
label10:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label12
label11:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label12
label12:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t12 = sitofp i32 1 to double 
%t13 = fcmp ogt double 1.05, %t12
%t14 = zext i1 %t13 to i32
%t15 = icmp sge i32 %t14, 1
br i1 %t15, label %label13, label %label14
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label15
label14:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label15
label15:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
%t16 = sitofp i32 1 to double 
%t17 = sitofp i32 1 to double 
%t18 = fcmp ole double %t17, %t16
br i1 %t18, label %label16, label %label17
label16:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label18
label17:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label18
label18:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str6 to i8*))
%t19 = icmp slt i32 1, 2
%t20 = zext i1 %t19 to i32
%t21 = icmp slt i32 %t20, 2
%t22 = zext i1 %t21 to i32
%t23 = icmp slt i32 %t22, 2
br i1 %t23, label %label19, label %label20
label19:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label21
label20:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label21
label21:
ret i32 0
}
