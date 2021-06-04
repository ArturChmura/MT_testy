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
%v2a = alloca i1
%t1 = load i1, i1* %v2a
br label %label5
label5:
br i1 %t1, label %label6, label %label8
label6:
%t2 = load i1, i1* %v1b
br label %label7
label7:
br label %label8
label8:
%t3 = phi i1 [%t1,%label5],[%t2,%label7]
br label %label1
label1:
br i1 %t3, label %label2, label %label4
label2:
br label %label13
label13:
br i1 1, label %label14, label %label16
label14:
br label %label15
label15:
br label %label16
label16:
%t4 = phi i1 [1,%label13],[0,%label15]
br label %label9
label9:
br i1 %t4, label %label10, label %label12
label10:
br label %label11
label11:
br label %label12
label12:
%t5 = phi i1 [%t4,%label9],[1,%label11]
br label %label3
label3:
br label %label4
label4:
%t6 = phi i1 [%t3,%label1],[%t5,%label3]
store i1 %t6, i1* %v2a
%t7 = load i1, i1* %v2a
ret i32 0
}
