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
%v1a = alloca i32
%v2b = alloca double
%v3c = alloca i1
%v4d = alloca i1
%v5e = alloca i32
%v6g = alloca double
%v7aa = alloca double
%v8ab = alloca i32
%v9cc = alloca i32
%v10dd = alloca double
%v11eee = alloca i1
%v12gag = alloca double
ret i32 0
}
