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
%v1d = alloca double
%v2k = alloca i32
store double 22.555555, double* %v1d
%t1 = load double, double* %v1d
%t2 = zext i1 1 to i32
%t3 = load double, double* %v1d
%t4 = fptosi double %t3 to i32
%t5 = add i32 %t2, %t4
store i32 %t5, i32* %v2k
%t6 = load i32, i32* %v2k
ret i32 0
}
