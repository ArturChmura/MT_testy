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
%t1 = mul i32 5, 5
%t2 = sub i32 %t1, 4
%t3 = mul i32 -1, %t2
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t3)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
br label %label8
label8:
br i1 1, label %label9, label %label11
label9:
br label %label10
label10:
br label %label11
label11:
%t4 = phi i1 [1,%label8],[0,%label10]
br label %label4
label4:
br i1 %t4, label %label7, label %label5
label5:
br label %label6
label6:
br label %label7
label7:
%t5 = phi i1 [%t4,%label4],[0,%label6]
%t6 = xor i1 1, %t5
br i1 %t6, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t7 = xor i32 1, -1 
%t8 = xor i32 %t7, -1 
%t9 = xor i32 %t8, -1 
%t10 = xor i32 %t9, -1 
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t10)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t11 = fptosi double 12.895 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t11)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t12 = sitofp i32 1 to double 
%t13 = sitofp i32 2 to double 
%t14 = fdiv double %t12, %t13
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t14)
ret i32 0
}
