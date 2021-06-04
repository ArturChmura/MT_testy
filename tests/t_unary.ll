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
%v1a = alloca i32
%v2i = alloca i1
%v3b = alloca double
store double 3.5, double* %v3b
%t1 = load double, double* %v3b
%t2 = sub i32 3, 3
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t2)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t3 = add i32 3, 5
%t4 = sdiv i32 %t3, 1
%t5 = sub i32 10, %t4
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t6 = mul i32 -1, 3
%t7 = sub i32 3, %t6
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t7)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t8 = mul i32 -1, 2
%t9 = sub i32 3, %t8
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t9)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t10 = mul i32 -1, 2
%t11 = mul i32 -1, %t10
%t12 = sub i32 3, %t11
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t12)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
%t13 = mul i32 -1, 5
%t14 = sub i32 5, %t13
store i32 %t14, i32* %v1a
%t15 = load i32, i32* %v1a
%t16 = mul i32 -1, 5
%t17 = mul i32 %t16, 4
%t18 = load double, double* %v3b
%t19 = fptosi double %t18 to i32
%t20 = mul i32 -1, %t19
%t21 = sdiv i32 %t17, %t20
%t22 = load i32, i32* %v1a
%t23 = xor i32 %t22, -1 
%t24 = mul i32 %t21, %t23
%t25 = add i32 10, %t24
store i32 %t25, i32* %v1a
%t26 = load i32, i32* %v1a
%t27 = add i32 4, 2
%t28 = mul i32 -1, %t27
%t29 = mul i32 2, %t28
%t30 = sub i32 14, %t29
store i32 %t30, i32* %v1a
%t31 = load i32, i32* %v1a
%t32 = xor i1 1, 1
br i1 %t32, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str6 to i8*))
%t33 = xor i1 1, 1
%t34 = xor i1 1, %t33
%t35 = zext i1 %t34 to i32
%t36 = xor i32 %t35, -1 
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t36)
ret i32 0
}
