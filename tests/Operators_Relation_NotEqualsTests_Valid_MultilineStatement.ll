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
%t1 = icmp ne i32 1, 1
%t2 = icmp ne i1 %t1, 1
%t3 = icmp ne i32 1, 1
%t4 = icmp ne i1 %t3, 1
%t5 = icmp ne i1 %t4, 0
store i1 %t5, i1* %v1b
%t6 = load i1, i1* %v1b
ret i32 0
}
