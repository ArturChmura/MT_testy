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
%v1stloc = alloca i32
%v2ldc = alloca i32
%v3ldloc = alloca i1
%v4br = alloca double
store i32 5, i32* %v1stloc
%t1 = load i32, i32* %v1stloc
store i1 1, i1* %v3ldloc
%t2 = load i1, i1* %v3ldloc
%t3 = mul i32 -1, 5
store i32 %t3, i32* %v2ldc
%t4 = load i32, i32* %v2ldc
store double 0.505, double* %v4br
%t5 = load double, double* %v4br
ret i32 0
}
