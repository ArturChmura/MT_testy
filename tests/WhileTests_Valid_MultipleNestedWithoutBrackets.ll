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
store i32 0, i32* %v1i
%t1 = load i32, i32* %v1i
br label %label1
label1:
%t2 = load i32, i32* %v1i
%t3 = icmp eq i32 %t2, 0
br i1 %t3, label %label2, label %label3
label2:
br label %label4
label4:
%t4 = load i32, i32* %v1i
%t5 = icmp eq i32 %t4, 0
br i1 %t5, label %label5, label %label6
label5:
br label %label7
label7:
%t6 = load i32, i32* %v1i
%t7 = icmp eq i32 %t6, 0
br i1 %t7, label %label8, label %label9
label8:
%t8 = load i32, i32* %v1i
%t9 = add i32 %t8, 1
store i32 %t9, i32* %v1i
%t10 = load i32, i32* %v1i
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t10)
br label %label7
label9:
br label %label4
label6:
br label %label1
label3:
ret i32 0
}
