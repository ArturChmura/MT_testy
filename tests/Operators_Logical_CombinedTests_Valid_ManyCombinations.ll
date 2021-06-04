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
br label %label1
label1:
br i1 1, label %label2, label %label4
label2:
br label %label3
label3:
br label %label4
label4:
%t1 = phi i1 [1,%label1],[0,%label3]
store i1 %t1, i1* %v1b
%t2 = load i1, i1* %v1b
br label %label5
label5:
br i1 1, label %label6, label %label8
label6:
%t3 = icmp eq i32 2, 2
br label %label7
label7:
br label %label8
label8:
%t4 = phi i1 [1,%label5],[%t3,%label7]
store i1 %t4, i1* %v1b
%t5 = load i1, i1* %v1b
%t6 = fcmp une double 3.14, 3.0
br label %label9
label9:
br i1 %t6, label %label12, label %label10
label10:
%t7 = icmp eq i32 5, 5
br label %label11
label11:
br label %label12
label12:
%t8 = phi i1 [%t6,%label9],[%t7,%label11]
store i1 %t8, i1* %v1b
%t9 = load i1, i1* %v1b
%t10 = icmp slt i32 1, 2
br label %label13
label13:
br i1 %t10, label %label14, label %label16
label14:
%t11 = mul i32 3, 5
%t12 = sitofp i32 1 to double 
%t13 = fdiv double %t12, 9.0
%t14 = sitofp i32 %t11 to double 
%t15 = fsub double %t14, %t13
%t16 = sitofp i32 2 to double 
%t17 = fcmp olt double %t15, %t16
br label %label15
label15:
br label %label16
label16:
%t18 = phi i1 [%t10,%label13],[%t17,%label15]
store i1 %t18, i1* %v1b
%t19 = load i1, i1* %v1b
ret i32 0
}
