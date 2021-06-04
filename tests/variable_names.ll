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
%v1asd787896ASE2 = alloca i32
store i32 10, i32* %v1asd787896ASE2
%t1 = load i32, i32* %v1asd787896ASE2
%t2 = load i32, i32* %v1asd787896ASE2
%t3 = load i32, i32* %v1asd787896ASE2
%t4 = mul i32 %t2, %t3
%t5 = load i32, i32* %v1asd787896ASE2
%t6 = sub i32 %t4, %t5
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t6)
ret i32 0
}
