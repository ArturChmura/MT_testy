; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1k = alloca i32
%v2isPrime = alloca i1
%v3num = alloca i32
%v4val = alloca i32
%v5val2 = alloca i32
%v6i = alloca i32
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_res to i8*), i32* %v1k)
store i32 2, i32* %v6i
%t1 = load i32, i32* %v6i
br label %label1
label1:
%t2 = load i32, i32* %v6i
%t3 = load i32, i32* %v1k
%t4 = icmp slt i32 %t2, %t3
br i1 %t4, label %label2, label %label3
label2:
store i1 0, i1* %v2isPrime
%t5 = load i1, i1* %v2isPrime
%t6 = load i32, i32* %v6i
store i32 %t6, i32* %v3num
%t7 = load i32, i32* %v3num
%t8 = load i32, i32* %v3num
%t9 = icmp sle i32 %t8, 3
br i1 %t9, label %label7, label %label9
label7:
store i1 1, i1* %v2isPrime
%t10 = load i1, i1* %v2isPrime
br label %label8
label9:
%t11 = load i32, i32* %v3num
%t12 = and i32 %t11, 1
%t13 = icmp ne i32 %t12, 0
br label %label12
label12:
br i1 %t13, label %label13, label %label15
label13:
%t14 = load i32, i32* %v3num
%t15 = sdiv i32 %t14, 3
%t16 = mul i32 %t15, 3
%t17 = load i32, i32* %v3num
%t18 = icmp ne i32 %t16, %t17
br label %label14
label14:
br label %label15
label15:
%t19 = phi i1 [%t13,%label12],[%t18,%label14]
br i1 %t19, label %label10, label %label11
label10:
store i32 5, i32* %v4val
%t20 = load i32, i32* %v4val
br label %label4
label4:
%t21 = load i32, i32* %v4val
%t22 = load i32, i32* %v4val
%t23 = mul i32 %t21, %t22
%t24 = load i32, i32* %v3num
%t25 = icmp sle i32 %t23, %t24
br label %label16
label16:
br i1 %t25, label %label17, label %label19
label17:
%t26 = load i32, i32* %v4val
%t27 = icmp sgt i32 %t26, 4
br label %label18
label18:
br label %label19
label19:
%t28 = phi i1 [%t25,%label16],[%t27,%label18]
br i1 %t28, label %label5, label %label6
label5:
%t29 = load i32, i32* %v4val
%t30 = add i32 %t29, 2
store i32 %t30, i32* %v5val2
%t31 = load i32, i32* %v5val2
%t32 = load i32, i32* %v3num
%t33 = load i32, i32* %v4val
%t34 = sdiv i32 %t32, %t33
%t35 = load i32, i32* %v4val
%t36 = mul i32 %t34, %t35
%t37 = load i32, i32* %v3num
%t38 = icmp eq i32 %t36, %t37
br label %label22
label22:
br i1 %t38, label %label25, label %label23
label23:
%t39 = load i32, i32* %v3num
%t40 = load i32, i32* %v5val2
%t41 = sdiv i32 %t39, %t40
%t42 = load i32, i32* %v5val2
%t43 = mul i32 %t41, %t42
%t44 = load i32, i32* %v3num
%t45 = icmp eq i32 %t43, %t44
br label %label24
label24:
br label %label25
label25:
%t46 = phi i1 [%t38,%label22],[%t45,%label24]
br i1 %t46, label %label20, label %label26
label20:
store i32 4, i32* %v4val
%t47 = load i32, i32* %v4val
br label %label21
label26:
%t48 = load i32, i32* %v4val
%t49 = add i32 %t48, 6
store i32 %t49, i32* %v4val
%t50 = load i32, i32* %v4val
br label %label21
label21:
br label %label4
label6:
%t51 = load i32, i32* %v4val
%t52 = icmp ne i32 %t51, 4
store i1 %t52, i1* %v2isPrime
%t53 = load i1, i1* %v2isPrime
br label %label11
label11:
br label %label8
label8:
%t54 = load i1, i1* %v2isPrime
br i1 %t54, label %label27, label %label28
label27:
%t55 = load i32, i32* %v6i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t55)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
br label %label28
label28:
%t56 = load i32, i32* %v6i
%t57 = add i32 %t56, 1
store i32 %t57, i32* %v6i
%t58 = load i32, i32* %v6i
br label %label1
label3:
ret i32 0
}
