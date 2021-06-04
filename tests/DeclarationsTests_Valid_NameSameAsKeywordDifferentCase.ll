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
%v1iF = alloca i1
%v2elsE = alloca i1
%v3WhilE = alloca i1
%v4reaD = alloca i32
%v5Write = alloca i32
%v6Program = alloca i32
%v7Return = alloca double
%v8True = alloca double
%v9False = alloca double
%t1 = load double, double* %v9False
%t2 = load double, double* %v8True
%t3 = load i1, i1* %v1iF
ret i32 0
}
