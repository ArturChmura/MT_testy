; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[40 x i8] c"marek powiedzial \22dupa dupa\22 \5Cchyba tak\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1dupa = alloca i32
%v2dup = alloca double
%v3dup1 = alloca double
%v4dup2 = alloca double
%v5dup3 = alloca double
%v6dup4 = alloca double
%t1 = load double, double* %v5dup3
%t2 = fptosi double %t1 to i32
%t3 = sitofp i32 %t2 to double 
store double %t3, double* %v4dup2
%t4 = load double, double* %v4dup2
store double %t4, double* %v2dup
%t5 = load double, double* %v2dup
call i32 (i8*, ...) @printf(i8* bitcast ([40 x i8]* @str1 to i8*))
%t6 = sitofp i32 3 to double 
%t7 = fcmp oeq double 1.0, %t6
br i1 %t7, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
%t8 = sitofp i32 3 to double 
%t9 = fcmp une double 1.0, %t8
br i1 %t9, label %label4, label %label5
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label6
label6:
%t10 = sitofp i32 3 to double 
%t11 = fcmp olt double 1.0, %t10
br i1 %t11, label %label7, label %label8
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label9
label8:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label9
label9:
%t12 = sitofp i32 3 to double 
%t13 = fcmp ogt double 1.0, %t12
br i1 %t13, label %label10, label %label11
label10:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label12
label11:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label12
label12:
%t14 = icmp sge i32 3, 3
br i1 %t14, label %label13, label %label14
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label15
label14:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label15
label15:
%t15 = icmp sge i32 1, 3
br i1 %t15, label %label16, label %label17
label16:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label18
label17:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label18
label18:
%t16 = icmp sle i32 3, 3
br i1 %t16, label %label19, label %label20
label19:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label21
label20:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label21
label21:
%t17 = sitofp i32 3 to double 
%t18 = fcmp ole double 1.0, %t17
br i1 %t18, label %label22, label %label23
label22:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label24
label23:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label24
label24:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double 1.0)
br i1 1, label %label25, label %label26
label25:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label27
label26:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label27
label27:
ret i32 0
}
