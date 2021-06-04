; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1i = alloca i32
%v2b = alloca i1
store i1 1, i1* %v2b
%t1 = load i1, i1* %v2b
store i32 0, i32* %v1i
%t2 = load i32, i32* %v1i
br label %label1
label1:
%t3 = load i1, i1* %v2b
br label %label10
label10:
br i1 %t3, label %label11, label %label13
label11:
%t4 = load i32, i32* %v1i
%t5 = xor i32 %t4, -1 
%t6 = icmp slt i32 %t5, 10
br label %label12
label12:
br label %label13
label13:
%t7 = phi i1 [%t3,%label10],[%t6,%label12]
br i1 %t7, label %label2, label %label3
label2:
%t8 = load i32, i32* %v1i
%t9 = xor i32 %t8, -1 
%t10 = icmp slt i32 %t9, 10
br i1 %t10, label %label14, label %label16
label14:
br label %label4
label4:
%t11 = load i1, i1* %v2b
br i1 %t11, label %label5, label %label6
label5:
store i1 0, i1* %v2b
%t12 = load i1, i1* %v2b
%t13 = load i32, i32* %v1i
%t14 = add i32 %t13, 1
store i32 %t14, i32* %v1i
%t15 = load i32, i32* %v1i
br label %label4
label6:
br label %label15
label16:
store i1 0, i1* %v2b
%t16 = load i1, i1* %v2b
%t17 = load i1, i1* %v2b
br i1 %t17, label %label17, label %label19
label17:
br label %label18
label19:
store i1 1, i1* %v2b
%t18 = load i1, i1* %v2b
br label %label18
label18:
br label %label15
label15:
br label %label7
label7:
%t19 = load i1, i1* %v2b
%t20 = xor i1 1, %t19
br i1 %t20, label %label8, label %label9
label8:
store i1 1, i1* %v2b
%t21 = load i1, i1* %v2b
%t22 = load i32, i32* %v1i
%t23 = add i32 %t22, 1
store i32 %t23, i32* %v1i
%t24 = load i32, i32* %v1i
br label %label7
label9:
br label %label1
label3:
%t25 = load i32, i32* %v1i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t25)
ret i32 0
}
