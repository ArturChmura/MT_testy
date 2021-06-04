; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c" \00"
@str2 = constant[7 x i8] c"koniec\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1b = alloca i1
%v2c = alloca i1
%v3cnt = alloca i32
%v4cntTemp = alloca i32
store i1 1, i1* %v2c
%t1 = load i1, i1* %v2c
store i1 %t1, i1* %v1b
%t2 = load i1, i1* %v1b
store i32 3, i32* %v3cnt
%t3 = load i32, i32* %v3cnt
br label %label1
label1:
%t4 = load i1, i1* %v1b
br label %label7
label7:
br i1 %t4, label %label10, label %label8
label8:
%t5 = load i1, i1* %v2c
br label %label9
label9:
br label %label10
label10:
%t6 = phi i1 [%t4,%label7],[%t5,%label9]
br i1 %t6, label %label2, label %label3
label2:
%t7 = load i32, i32* %v3cnt
store i32 %t7, i32* %v4cntTemp
%t8 = load i32, i32* %v4cntTemp
br label %label4
label4:
%t9 = load i1, i1* %v1b
%t10 = icmp eq i1 %t9, 1
br label %label15
label15:
br i1 %t10, label %label16, label %label18
label16:
%t11 = load i1, i1* %v2c
%t12 = icmp eq i1 %t11, 1
br label %label17
label17:
br label %label18
label18:
%t13 = phi i1 [%t10,%label15],[%t12,%label17]
br label %label11
label11:
br i1 %t13, label %label12, label %label14
label12:
%t14 = load i32, i32* %v4cntTemp
%t15 = icmp sgt i32 %t14, 0
br label %label13
label13:
br label %label14
label14:
%t16 = phi i1 [%t13,%label11],[%t15,%label13]
br i1 %t16, label %label5, label %label6
label5:
%t17 = load i32, i32* %v4cntTemp
%t18 = mul i32 -1, %t17
%t19 = mul i32 -1, %t18
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t19)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t20 = load i32, i32* %v4cntTemp
%t21 = sub i32 %t20, 1
store i32 %t21, i32* %v4cntTemp
%t22 = load i32, i32* %v4cntTemp
br label %label4
label6:
%t23 = load i32, i32* %v3cnt
%t24 = icmp eq i32 %t23, 1
br i1 %t24, label %label19, label %label20
label19:
store i1 0, i1* %v1b
%t25 = load i1, i1* %v1b
br label %label20
label20:
%t26 = load i32, i32* %v3cnt
%t27 = icmp eq i32 %t26, 0
br i1 %t27, label %label21, label %label22
label21:
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str2 to i8*))
ret i32 0
br label %label22
label22:
%t28 = load i32, i32* %v3cnt
%t29 = sub i32 %t28, 1
store i32 %t29, i32* %v3cnt
%t30 = load i32, i32* %v3cnt
br label %label1
label3:
ret i32 0
}
