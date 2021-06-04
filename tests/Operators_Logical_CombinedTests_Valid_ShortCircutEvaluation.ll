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
%v1b = alloca i1
%v2k = alloca i32
%v3c = alloca i32
%t1 = load i32, i32* %v2k
%t2 = load i32, i32* %v3c
%t3 = icmp eq i32 %t1, %t2
br label %label1
label1:
br i1 %t3, label %label4, label %label2
label2:
%t4 = sdiv i32 5, 0
%t5 = icmp eq i32 %t4, 1
br label %label3
label3:
br label %label4
label4:
%t6 = phi i1 [%t3,%label1],[%t5,%label3]
store i1 %t6, i1* %v1b
%t7 = load i1, i1* %v1b
%t8 = load i32, i32* %v2k
%t9 = load i32, i32* %v3c
%t10 = icmp ne i32 %t8, %t9
br label %label5
label5:
br i1 %t10, label %label6, label %label8
label6:
%t11 = sdiv i32 5, 0
%t12 = icmp eq i32 1, %t11
br label %label7
label7:
br label %label8
label8:
%t13 = phi i1 [%t10,%label5],[%t12,%label7]
store i1 %t13, i1* %v1b
%t14 = load i1, i1* %v1b
%t15 = load i32, i32* %v2k
%t16 = load i32, i32* %v3c
%t17 = icmp ne i32 %t15, %t16
br label %label17
label17:
br i1 %t17, label %label20, label %label18
label18:
%t18 = load i32, i32* %v2k
%t19 = load i32, i32* %v3c
%t20 = icmp eq i32 %t18, %t19
br label %label19
label19:
br label %label20
label20:
%t21 = phi i1 [%t17,%label17],[%t20,%label19]
br label %label13
label13:
br i1 %t21, label %label14, label %label16
label14:
%t22 = load i32, i32* %v2k
%t23 = load i32, i32* %v3c
%t24 = icmp slt i32 %t22, %t23
br label %label15
label15:
br label %label16
label16:
%t25 = phi i1 [%t21,%label13],[%t24,%label15]
br label %label9
label9:
br i1 %t25, label %label10, label %label12
label10:
%t26 = sdiv i32 5, 0
%t27 = icmp eq i32 %t26, 1
br label %label11
label11:
br label %label12
label12:
%t28 = phi i1 [%t25,%label9],[%t27,%label11]
store i1 %t28, i1* %v1b
%t29 = load i1, i1* %v1b
%t30 = load i32, i32* %v2k
%t31 = load i32, i32* %v3c
%t32 = icmp eq i32 %t30, %t31
br label %label33
label33:
br i1 %t32, label %label34, label %label36
label34:
%t33 = load i32, i32* %v2k
%t34 = load i32, i32* %v3c
%t35 = icmp ne i32 %t33, %t34
br label %label35
label35:
br label %label36
label36:
%t36 = phi i1 [%t32,%label33],[%t35,%label35]
br label %label29
label29:
br i1 %t36, label %label32, label %label30
label30:
%t37 = load i32, i32* %v2k
%t38 = load i32, i32* %v3c
%t39 = add i32 %t37, %t38
%t40 = add i32 %t39, 1
%t41 = icmp eq i32 1, %t40
br label %label31
label31:
br label %label32
label32:
%t42 = phi i1 [%t36,%label29],[%t41,%label31]
br label %label25
label25:
br i1 %t42, label %label26, label %label28
label26:
%t43 = load i32, i32* %v2k
%t44 = load i32, i32* %v3c
%t45 = add i32 %t44, 1
%t46 = sdiv i32 %t43, %t45
%t47 = icmp eq i32 %t46, 0
br label %label27
label27:
br label %label28
label28:
%t48 = phi i1 [%t42,%label25],[%t47,%label27]
br label %label21
label21:
br i1 %t48, label %label24, label %label22
label22:
%t49 = sdiv i32 5, 0
%t50 = icmp eq i32 %t49, 1
br label %label23
label23:
br label %label24
label24:
%t51 = phi i1 [%t48,%label21],[%t50,%label23]
store i1 %t51, i1* %v1b
%t52 = load i1, i1* %v1b
ret i32 0
}
