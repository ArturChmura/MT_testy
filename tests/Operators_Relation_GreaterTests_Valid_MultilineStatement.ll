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
%v2k = alloca i32
%t1 = icmp sgt i32 1, 1
%t2 = icmp eq i1 %t1, 1
%t3 = icmp sgt i32 1, 1
%t4 = icmp eq i1 %t3, 1
%t5 = icmp eq i1 %t4, 0
store i1 %t5, i1* %v1b
%t6 = load i1, i1* %v1b
%t7 = icmp sgt i32 1, 1
%t8 = fcmp ogt double 2.0, 3.0
%t9 = icmp eq i1 %t7, %t8
%t10 = zext i1 %t9 to i32
store i32 %t10, i32* %v2k
%t11 = load i32, i32* %v2k
ret i32 0
}
