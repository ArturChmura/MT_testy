; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[7 x i8] c"Pass: \00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[7 x i8] c"Pass: \00"
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[7 x i8] c"Pass: \00"
@str6 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2c = alloca i32
store i32 10, i32* %v1a
%t1 = load i32, i32* %v1a
store i32 %t1, i32* %v1a
%t2 = load i32, i32* %v1a
store i32 %t2, i32* %v1a
%t3 = load i32, i32* %v1a
store i32 %t3, i32* %v2c
%t4 = load i32, i32* %v2c
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str1 to i8*))
%t5 = load i32, i32* %v2c
%t6 = icmp eq i32 10, %t5
br i1 %t6, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
store i32 20, i32* %v1a
%t7 = load i32, i32* %v1a
%t8 = add i32 4, %t7
store i32 %t8, i32* %v2c
%t9 = load i32, i32* %v2c
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str3 to i8*))
%t10 = load i32, i32* %v2c
%t11 = icmp eq i32 24, %t10
br i1 %t11, label %label4, label %label5
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label6
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t12 = mul i32 -1, 9
%t13 = mul i32 -1, %t12
%t14 = xor i32 %t13, -1 
store i32 %t14, i32* %v2c
%t15 = load i32, i32* %v2c
%t16 = xor i32 9, -1 
store i32 %t16, i32* %v1a
%t17 = load i32, i32* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str5 to i8*))
%t18 = load i32, i32* %v1a
%t19 = load i32, i32* %v2c
%t20 = icmp eq i32 %t18, %t19
br i1 %t20, label %label7, label %label8
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label9
label8:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label9
label9:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str6 to i8*))
ret i32 0
}
