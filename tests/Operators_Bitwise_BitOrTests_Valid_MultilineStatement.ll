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
%t1 = or i32 1, 1
%t2 = or i32 %t1, 1
%t3 = or i32 1, 1
%t4 = zext i1 0 to i32
%t5 = or i32 %t3, %t4
%t6 = or i32 %t5, 1
%t7 = sub i32 %t6, 1
store i32 %t7, i32* %v1k
%t8 = load i32, i32* %v1k
ret i32 0
}
