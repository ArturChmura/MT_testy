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
%v1a = alloca i1
%v2d = alloca double
%v3b = alloca i32
%v4X = alloca i32
%v5Y = alloca double
%v6Z = alloca i1
%v7x2 = alloca i32
%v8k129543 = alloca double
%v9m4O = alloca double
%v10bbbb = alloca i1
%v11z2F13e = alloca i1
%v12ammA = alloca i1
%v13K22k = alloca i32
%v14KKaa1 = alloca double
%v15QWEEEE2222 = alloca i1
ret i32 0
}
