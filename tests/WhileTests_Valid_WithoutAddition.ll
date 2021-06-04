; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[58 x i8] c"He is a man of focus, commitment and sheer fucking will.
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1c = alloca i32
store i32 0, i32* %v1c
%t1 = load i32, i32* %v1c
br label %label1
label1:
%t2 = load i32, i32* %v1c
%t3 = icmp slt i32 %t2, 4
br i1 %t3, label %label2, label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([58 x i8]* @str1 to i8*))
%t4 = load i32, i32* %v1c
%t5 = icmp eq i32 %t4, 0
br i1 %t5, label %label4, label %label6
label4:
store i32 1, i32* %v1c
%t6 = load i32, i32* %v1c
br label %label5
label6:
%t7 = load i32, i32* %v1c
%t8 = icmp eq i32 %t7, 1
br i1 %t8, label %label7, label %label9
label7:
store i32 2, i32* %v1c
%t9 = load i32, i32* %v1c
br label %label8
label9:
%t10 = load i32, i32* %v1c
%t11 = icmp eq i32 %t10, 2
br i1 %t11, label %label10, label %label12
label10:
store i32 3, i32* %v1c
%t12 = load i32, i32* %v1c
br label %label11
label12:
%t13 = load i32, i32* %v1c
%t14 = icmp eq i32 %t13, 3
br i1 %t14, label %label13, label %label14
label13:
store i32 4, i32* %v1c
%t15 = load i32, i32* %v1c
br label %label14
label14:
br label %label11
label11:
br label %label8
label8:
br label %label5
label5:
br label %label1
label3:
ret i32 0
}
