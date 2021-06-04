; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[6 x i8] c"
ok: \00"
@str2 = constant[6 x i8] c"
ok: \00"
@str3 = constant[6 x i8] c"
ok: \00"
@str4 = constant[6 x i8] c"
ok: \00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i1
store i32 0, i32* %v1a
%t1 = load i32, i32* %v1a
br label %label1
label1:
br i1 1, label %label4, label %label2
label2:
store i32 10, i32* %v1a
%t2 = load i32, i32* %v1a
%t3 = icmp sgt i32 %t2, 0
br label %label3
label3:
br label %label4
label4:
%t4 = phi i1 [1,%label1],[%t3,%label3]
store i1 %t4, i1* %v2b
%t5 = load i1, i1* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str1 to i8*))
%t6 = load i32, i32* %v1a
%t7 = icmp eq i32 %t6, 0
br i1 %t7, label %label5, label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label7
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label7
label7:
store i32 0, i32* %v1a
%t8 = load i32, i32* %v1a
br label %label8
label8:
br i1 1, label %label9, label %label11
label9:
store i32 10, i32* %v1a
%t9 = load i32, i32* %v1a
%t10 = icmp sgt i32 %t9, 0
br label %label10
label10:
br label %label11
label11:
%t11 = phi i1 [1,%label8],[%t10,%label10]
store i1 %t11, i1* %v2b
%t12 = load i1, i1* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str2 to i8*))
%t13 = load i32, i32* %v1a
%t14 = icmp eq i32 %t13, 10
br i1 %t14, label %label12, label %label13
label12:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label14
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label14
label14:
store i32 0, i32* %v1a
%t15 = load i32, i32* %v1a
store i32 10, i32* %v1a
%t16 = load i32, i32* %v1a
%t17 = icmp sgt i32 %t16, 0
br label %label15
label15:
br i1 %t17, label %label18, label %label16
label16:
br label %label17
label17:
br label %label18
label18:
%t18 = phi i1 [%t17,%label15],[1,%label17]
store i1 %t18, i1* %v2b
%t19 = load i1, i1* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str3 to i8*))
%t20 = load i32, i32* %v1a
%t21 = icmp eq i32 %t20, 10
br i1 %t21, label %label19, label %label20
label19:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label21
label20:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label21
label21:
store i32 0, i32* %v1a
%t22 = load i32, i32* %v1a
store i32 10, i32* %v1a
%t23 = load i32, i32* %v1a
%t24 = icmp eq i32 %t23, 0
br label %label22
label22:
br i1 %t24, label %label23, label %label25
label23:
br label %label24
label24:
br label %label25
label25:
%t25 = phi i1 [%t24,%label22],[1,%label24]
store i1 %t25, i1* %v2b
%t26 = load i1, i1* %v2b
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str4 to i8*))
%t27 = load i32, i32* %v1a
%t28 = icmp eq i32 %t27, 10
br i1 %t28, label %label26, label %label27
label26:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label28
label27:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label28
label28:
ret i32 0
}
