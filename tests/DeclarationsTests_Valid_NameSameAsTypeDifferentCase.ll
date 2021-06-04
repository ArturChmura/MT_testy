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
%v1Double = alloca double
%v2doUble = alloca double
%v3doublE = alloca double
%v4Int = alloca i32
%v5iNt = alloca i32
%v6inT = alloca i32
%v7Bool = alloca i1
%v8booL = alloca i1
%v9bOol = alloca i1
%t1 = load i32, i32* %v4Int
%t2 = load double, double* %v1Double
%t3 = load i1, i1* %v9bOol
ret i32 0
}
