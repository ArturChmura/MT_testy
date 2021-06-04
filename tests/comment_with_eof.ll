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
%v1Zmienna = alloca i32
%t1 = mul i32 4, 7
%t2 = add i32 2, %t1
store i32 %t2, i32* %v1Zmienna
%t3 = load i32, i32* %v1Zmienna
%t4 = load i32, i32* %v1Zmienna
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t4)
ret i32 0
}
