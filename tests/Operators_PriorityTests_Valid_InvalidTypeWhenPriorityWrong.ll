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
%v1num = alloca i32
%v2real = alloca double
%v3b = alloca i1
%t1 = load double, double* %v2real
%t2 = fptosi double %t1 to i32
%t3 = sdiv i32 %t2, 2
store i32 %t3, i32* %v1num
%t4 = load i32, i32* %v1num
%t5 = load i32, i32* %v1num
%t6 = mul i32 %t5, 5
%t7 = load double, double* %v2real
%t8 = fdiv double %t7, 2.0
%t9 = sitofp i32 %t6 to double 
%t10 = fcmp oeq double %t9, %t8
store i1 %t10, i1* %v3b
%t11 = load i1, i1* %v3b
%t12 = xor i32 1, -1 
%t13 = fptosi double 2.0 to i32
%t14 = icmp eq i32 %t12, %t13
store i1 %t14, i1* %v3b
%t15 = load i1, i1* %v3b
%t16 = xor i32 1, -1 
%t17 = fptosi double 24.0 to i32
%t18 = xor i1 1, 0
%t19 = zext i1 %t18 to i32
%t20 = and i32 1, %t19
%t21 = sdiv i32 %t17, %t20
%t22 = icmp eq i32 %t16, %t21
br label %label1
label1:
br i1 %t22, label %label2, label %label4
label2:
%t23 = icmp eq i32 1, 1
br label %label3
label3:
br label %label4
label4:
%t24 = phi i1 [%t22,%label1],[%t23,%label3]
store i1 %t24, i1* %v3b
%t25 = load i1, i1* %v3b
%t26 = load i32, i32* %v1num
%t27 = and i32 1, 1
%t28 = icmp eq i32 %t26, %t27
%t29 = load i32, i32* %v1num
%t30 = or i32 1, 0
%t31 = or i32 %t30, 1
%t32 = xor i32 2, -1 
%t33 = or i32 %t31, %t32
%t34 = icmp ne i32 %t29, %t33
%t35 = icmp eq i1 %t28, %t34
%t36 = xor i1 1, %t35
%t37 = icmp eq i1 1, %t36
%t38 = zext i1 %t37 to i32
store i32 %t38, i32* %v1num
%t39 = load i32, i32* %v1num
%t40 = sitofp i32 %t39 to double 
store double %t40, double* %v2real
%t41 = load double, double* %v2real
store double %t41, double* %v2real
%t42 = load double, double* %v2real
ret i32 0
}
