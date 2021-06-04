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
%t1 = add i32 1, 1
%t2 = add i32 1, %t1
%t3 = add i32 1, %t2
%t4 = add i32 1, %t3
%t5 = add i32 1, %t4
%t6 = add i32 1, %t5
%t7 = add i32 1, %t6
%t8 = add i32 1, %t7
%t9 = add i32 1, %t8
%t10 = add i32 1, %t9
%t11 = add i32 1, %t10
%t12 = add i32 1, %t11
%t13 = add i32 1, %t12
%t14 = add i32 1, %t13
%t15 = add i32 1, %t14
%t16 = add i32 1, %t15
%t17 = add i32 1, %t16
%t18 = add i32 1, %t17
%t19 = add i32 1, %t18
%t20 = add i32 1, %t19
%t21 = add i32 1, %t20
%t22 = add i32 1, %t21
%t23 = add i32 1, %t22
%t24 = add i32 1, %t23
%t25 = add i32 1, %t24
%t26 = add i32 1, %t25
%t27 = add i32 1, %t26
%t28 = add i32 1, %t27
%t29 = add i32 1, %t28
%t30 = add i32 1, %t29
%t31 = add i32 1, %t30
%t32 = add i32 1, %t31
%t33 = add i32 1, %t32
%t34 = add i32 1, %t33
%t35 = add i32 1, %t34
%t36 = add i32 1, %t35
%t37 = add i32 1, %t36
%t38 = add i32 1, %t37
%t39 = add i32 1, %t38
%t40 = add i32 1, %t39
%t41 = add i32 1, %t40
%t42 = add i32 1, %t41
%t43 = add i32 1, %t42
%t44 = add i32 1, %t43
%t45 = add i32 1, %t44
%t46 = add i32 1, %t45
%t47 = add i32 1, %t46
%t48 = add i32 1, %t47
%t49 = add i32 1, %t48
%t50 = add i32 1, %t49
%t51 = add i32 1, %t50
%t52 = add i32 1, %t51
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t52)
ret i32 0
}
