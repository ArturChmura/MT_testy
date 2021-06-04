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
%t1 = icmp sle i32 1, 1
%t2 = icmp sge i32 2, 2
%t3 = icmp eq i1 %t1, %t2
store i1 %t3, i1* %v1b
%t4 = load i1, i1* %v1b
%t5 = fcmp une double 2.0, 2.55
%t6 = icmp sgt i32 22, 2
%t7 = icmp eq i1 %t5, %t6
store i1 %t7, i1* %v1b
%t8 = load i1, i1* %v1b
%t9 = sitofp i32 2 to double 
%t10 = fcmp ogt double 2.5, %t9
%t11 = sitofp i32 2 to double 
%t12 = fcmp olt double %t11, 2.5
%t13 = icmp ne i1 %t10, %t12
store i1 %t13, i1* %v1b
%t14 = load i1, i1* %v1b
%t15 = icmp eq i1 1, 0
%t16 = icmp eq i1 %t15, 1
%t17 = icmp eq i1 %t16, 1
store i1 %t17, i1* %v1b
%t18 = load i1, i1* %v1b
ret i32 0
}
