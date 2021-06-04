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
%v1k = alloca i32
br i1 1, label %label1, label %label2
label1:
store i32 5, i32* %v1k
%t1 = load i32, i32* %v1k
br label %label2
label2:
%t2 = sub i32 5, 2
%t3 = mul i32 10, 30
%t4 = icmp slt i32 %t2, %t3
br i1 %t4, label %label3, label %label5
label3:
%t5 = load i32, i32* %v1k
%t6 = add i32 %t5, 1
store i32 %t6, i32* %v1k
%t7 = load i32, i32* %v1k
br label %label4
label5:
%t8 = load i32, i32* %v1k
%t9 = sub i32 %t8, 1
store i32 %t9, i32* %v1k
%t10 = load i32, i32* %v1k
br label %label4
label4:
br i1 0, label %label6, label %label7
label6:
br i1 1, label %label8, label %label9
label8:
br i1 0, label %label10, label %label12
label10:
store i32 0, i32* %v1k
%t11 = load i32, i32* %v1k
br label %label11
label12:
store i32 1, i32* %v1k
%t12 = load i32, i32* %v1k
br label %label11
label11:
br label %label9
label9:
br label %label7
label7:
ret i32 0
}
