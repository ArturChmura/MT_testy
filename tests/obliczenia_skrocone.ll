; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[5 x i8] c"FAIL\00"
@str2 = constant[5 x i8] c"FAIL\00"
@str3 = constant[5 x i8] c"FAIL\00"
@str4 = constant[5 x i8] c"FAIL\00"
@str5 = constant[3 x i8] c"OK\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i32
%v3c = alloca i1
store i32 10, i32* %v1a
%t1 = load i32, i32* %v1a
store i32 11, i32* %v2b
%t2 = load i32, i32* %v2b
store i1 0, i1* %v3c
%t3 = load i1, i1* %v3c
%t4 = load i32, i32* %v1a
%t5 = load i32, i32* %v2b
%t6 = icmp eq i32 %t4, %t5
br label %label3
label3:
br i1 %t6, label %label4, label %label6
label4:
store i32 20, i32* %v1a
%t7 = load i32, i32* %v1a
%t8 = icmp sgt i32 %t7, 0
br label %label5
label5:
br label %label6
label6:
%t9 = phi i1 [%t6,%label3],[%t8,%label5]
br i1 %t9, label %label1, label %label2
label1:
br label %label2
label2:
%t10 = load i32, i32* %v1a
%t11 = icmp eq i32 20, %t10
br i1 %t11, label %label7, label %label8
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str1 to i8*))
br label %label8
label8:
%t12 = icmp ne i32 15, 41
br label %label9
label9:
br i1 %t12, label %label12, label %label10
label10:
%t13 = mul i32 -1, 1
store i32 %t13, i32* %v1a
%t14 = load i32, i32* %v1a
%t15 = icmp eq i32 %t14, 5
br label %label11
label11:
br label %label12
label12:
%t16 = phi i1 [%t12,%label9],[%t15,%label11]
store i1 %t16, i1* %v3c
%t17 = load i1, i1* %v3c
%t18 = load i32, i32* %v1a
%t19 = mul i32 -1, 1
%t20 = icmp eq i32 %t18, %t19
br i1 %t20, label %label13, label %label14
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str2 to i8*))
br label %label14
label14:
%t21 = icmp ne i32 15, 41
br label %label19
label19:
br i1 %t21, label %label22, label %label20
label20:
%t22 = icmp eq i32 21, 21
br label %label21
label21:
br label %label22
label22:
%t23 = phi i1 [%t21,%label19],[%t22,%label21]
br label %label15
label15:
br i1 %t23, label %label18, label %label16
label16:
store i32 0, i32* %v1a
%t24 = load i32, i32* %v1a
%t25 = icmp eq i32 %t24, 2
br label %label17
label17:
br label %label18
label18:
%t26 = phi i1 [%t23,%label15],[%t25,%label17]
store i1 %t26, i1* %v3c
%t27 = load i1, i1* %v3c
%t28 = load i32, i32* %v1a
%t29 = icmp eq i32 %t28, 0
br i1 %t29, label %label23, label %label24
label23:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str3 to i8*))
br label %label24
label24:
%t30 = icmp eq i32 15, 41
br label %label29
label29:
br i1 %t30, label %label32, label %label30
label30:
%t31 = icmp eq i32 21, 20
br label %label31
label31:
br label %label32
label32:
%t32 = phi i1 [%t30,%label29],[%t31,%label31]
br label %label25
label25:
br i1 %t32, label %label28, label %label26
label26:
store i32 10, i32* %v1a
%t33 = load i32, i32* %v1a
%t34 = icmp eq i32 %t33, 5
br label %label27
label27:
br label %label28
label28:
%t35 = phi i1 [%t32,%label25],[%t34,%label27]
store i1 %t35, i1* %v3c
%t36 = load i1, i1* %v3c
%t37 = load i32, i32* %v1a
%t38 = icmp ne i32 %t37, 10
br i1 %t38, label %label33, label %label34
label33:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str4 to i8*))
br label %label34
label34:
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str5 to i8*))
ret i32 0
}
