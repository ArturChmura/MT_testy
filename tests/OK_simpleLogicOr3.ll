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
%v2b = alloca i32
%v3wynik = alloca i1
store i32 200, i32* %v1a
%t1 = load i32, i32* %v1a
store i32 200, i32* %v2b
%t2 = load i32, i32* %v2b
%t3 = icmp eq i1 1, 0
br label %label1
label1:
br i1 %t3, label %label4, label %label2
label2:
%t4 = load i32, i32* %v1a
%t5 = load i32, i32* %v2b
%t6 = icmp eq i32 %t4, %t5
br label %label3
label3:
br label %label4
label4:
%t7 = phi i1 [%t3,%label1],[%t6,%label3]
store i1 %t7, i1* %v3wynik
%t8 = load i1, i1* %v3wynik
ret i32 0
}
