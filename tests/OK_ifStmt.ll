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
%v1a = alloca i32
%t1 = mul i32 5, 5
%t2 = icmp sgt i32 %t1, 24
br i1 %t2, label %label1, label %label3
label1:
store i32 10, i32* %v1a
%t3 = load i32, i32* %v1a
%t4 = load i32, i32* %v1a
%t5 = add i32 %t4, 10
store i32 %t5, i32* %v1a
%t6 = load i32, i32* %v1a
br label %label2
label3:
%t7 = mul i32 -1, 3
store i32 %t7, i32* %v1a
%t8 = load i32, i32* %v1a
br label %label2
label2:
ret i32 0
}
