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
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1b = alloca i1
%t1 = add i32 5, 5
%t2 = add i32 %t1, 3
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t2)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t3 = sitofp i32 7 to double 
%t4 = fadd double %t3, 7.5
%t5 = sitofp i32 16 to double 
%t6 = fsub double %t5, 1.5
%t7 = fcmp oeq double %t4, %t6
br label %label4
label4:
br i1 %t7, label %label5, label %label7
label5:
store i1 1, i1* %v1b
%t8 = load i1, i1* %v1b
br label %label6
label6:
br label %label7
label7:
%t9 = phi i1 [%t7,%label4],[%t8,%label6]
br i1 %t9, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t10 = sitofp i32 20 to double 
%t11 = fadd double %t10, 1.45
%t12 = fptosi double %t11 to i32
%t13 = mul i32 %t12, 3
%t14 = sitofp i32 %t13 to double 
%t15 = sitofp i32 2 to double 
%t16 = fadd double %t14, %t15
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t16)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t17 = or i32 1, 0
%t18 = and i32 1, %t17
%t19 = sitofp i32 %t18 to double 
%t20 = fptosi double %t19 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t20)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t21 = load i1, i1* %v1b
br label %label11
label11:
br i1 %t21, label %label12, label %label14
label12:
store i1 0, i1* %v1b
%t22 = load i1, i1* %v1b
br label %label15
label15:
br i1 %t22, label %label18, label %label16
label16:
store i1 1, i1* %v1b
%t23 = load i1, i1* %v1b
br label %label17
label17:
br label %label18
label18:
%t24 = phi i1 [%t22,%label15],[%t23,%label17]
br label %label13
label13:
br label %label14
label14:
%t25 = phi i1 [%t21,%label11],[%t24,%label13]
br i1 %t25, label %label8, label %label9
label8:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label10
label9:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label10
label10:
ret i32 0
}
