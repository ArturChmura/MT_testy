; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[6 x i8] c"FAIL
\00"
@str2 = constant[5 x i8] c"FAIL\00"
@str3 = constant[5 x i8] c"FAIL\00"
@str4 = constant[4 x i8] c"OK
\00"
@str5 = constant[3 x i8] c"OK\00"
@str6 = constant[3 x i8] c"OK\00"
@str7 = constant[4 x i8] c"OK
\00"
@str8 = constant[5 x i8] c"FAIL\00"
@str9 = constant[5 x i8] c"FAIL\00"
@str10 = constant[3 x i8] c"OK\00"
@str11 = constant[3 x i8] c"OK\00"
@str12 = constant[3 x i8] c"OK\00"
@str13 = constant[5 x i8] c"FAIL\00"
@str14 = constant[3 x i8] c"OK\00"
@str15 = constant[7 x i8] c"FINISH\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i32
store i32 10, i32* %v1a
%t1 = load i32, i32* %v1a
%t2 = mul i32 -1, 21
store i32 %t2, i32* %v2b
%t3 = load i32, i32* %v2b
%t4 = load i32, i32* %v1a
%t5 = load i32, i32* %v2b
%t6 = icmp slt i32 %t4, %t5
br i1 %t6, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str1 to i8*))
br label %label2
label2:
%t7 = load i32, i32* %v1a
%t8 = load i32, i32* %v2b
%t9 = icmp slt i32 %t7, %t8
br i1 %t9, label %label3, label %label4
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str3 to i8*))
br label %label4
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str4 to i8*))
%t10 = load i32, i32* %v1a
%t11 = load i32, i32* %v2b
%t12 = icmp sgt i32 %t10, %t11
br i1 %t12, label %label5, label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str5 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str6 to i8*))
br label %label6
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str7 to i8*))
%t13 = load i32, i32* %v1a
%t14 = load i32, i32* %v2b
%t15 = icmp slt i32 %t13, %t14
br i1 %t15, label %label7, label %label9
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str9 to i8*))
br label %label8
label9:
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str10 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str11 to i8*))
br label %label8
label8:
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str12 to i8*))
%t16 = load i32, i32* %v1a
%t17 = load i32, i32* %v2b
%t18 = icmp slt i32 %t16, %t17
br i1 %t18, label %label10, label %label12
label10:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str13 to i8*))
br label %label11
label12:
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str14 to i8*))
br label %label11
label11:
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str15 to i8*))
ret i32 0
}
