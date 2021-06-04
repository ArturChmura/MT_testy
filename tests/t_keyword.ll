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
%v1pop = alloca i32
%v2float = alloca double
%v3stloc = alloca i1
%v4ldloc = alloca i32
%v5add = alloca i32
%v6mul = alloca i32
%t1 = mul i32 -1, 10
store i32 %t1, i32* %v6mul
%t2 = load i32, i32* %v6mul
store i32 184, i32* %v4ldloc
%t3 = load i32, i32* %v4ldloc
%t4 = load i32, i32* %v6mul
%t5 = load i32, i32* %v4ldloc
%t6 = add i32 %t4, %t5
%t7 = add i32 %t6, 1
store i32 %t7, i32* %v5add
%t8 = load i32, i32* %v5add
%t9 = load i32, i32* %v5add
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t9)
ret i32 0
}
