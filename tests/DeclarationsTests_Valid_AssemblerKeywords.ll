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
%v1float64 = alloca double
%v2int32 = alloca i32
%v3ceq = alloca i1
%v4dup = alloca i32
%v5clt = alloca i1
%v6stloc = alloca double
%v7pop = alloca i32
%v8or = alloca i1
%v9and = alloca i1
%v10neg = alloca i1
%v11ldloca = alloca i32
ret i32 0
}
