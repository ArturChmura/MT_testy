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
%v1wynik = alloca i1
br label %label5
label5:
br i1 1, label %label8, label %label6
label6:
br label %label7
label7:
br label %label8
label8:
%t1 = phi i1 [1,%label5],[0,%label7]
br label %label1
label1:
br i1 %t1, label %label4, label %label2
label2:
br label %label3
label3:
br label %label4
label4:
%t2 = phi i1 [%t1,%label1],[1,%label3]
store i1 %t2, i1* %v1wynik
%t3 = load i1, i1* %v1wynik
ret i32 0
}
