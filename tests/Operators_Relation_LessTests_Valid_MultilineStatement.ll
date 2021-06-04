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
%t1 = icmp slt i32 1, 1
%t2 = zext i1 %t1 to i32
%t3 = sitofp i32 %t2 to double 
%t4 = fcmp olt double %t3, 2.0
%t5 = icmp slt i32 1, 1
%t6 = icmp slt i32 1, 1
%t7 = icmp eq i1 %t5, %t6
%t8 = sitofp i32 2 to double 
%t9 = fcmp olt double 2.5, %t8
%t10 = icmp eq i1 %t7, %t9
store i1 %t10, i1* %v1b
%t11 = load i1, i1* %v1b
ret i32 0
}
