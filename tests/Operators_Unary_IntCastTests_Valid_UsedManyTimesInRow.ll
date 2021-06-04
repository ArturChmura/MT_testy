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
%t1 = fptosi double 2.0 to i32
%t2 = add i32 %t1, 3
%t3 = zext i1 1 to i32
%t4 = add i32 %t2, %t3
%t5 = zext i1 0 to i32
%t6 = add i32 %t4, %t5
store i32 %t6, i32* %v1k
%t7 = load i32, i32* %v1k
%t8 = fptosi double 2.0 to i32
%t9 = sitofp i32 %t8 to double 
%t10 = fptosi double %t9 to i32
store i32 %t10, i32* %v1k
%t11 = load i32, i32* %v1k
ret i32 0
}
