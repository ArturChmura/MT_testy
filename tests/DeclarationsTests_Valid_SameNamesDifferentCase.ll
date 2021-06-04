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
%v1aA = alloca i32
%v2aa = alloca i32
%v3Aa = alloca i1
%v4AA = alloca double
%v5bbBb = alloca i32
%v6bbbB = alloca i32
%v7ee = alloca double
%v8eE = alloca i32
%v9gA = alloca double
%v10GA = alloca i1
%v11Kaladin = alloca i32
%v12kaladin = alloca i1
ret i32 0
}
