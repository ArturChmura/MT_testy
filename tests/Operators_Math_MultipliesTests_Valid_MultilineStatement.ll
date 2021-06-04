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
%t1 = mul i32 5, 2
%t2 = sitofp i32 %t1 to double 
%t3 = fmul double %t2, 5.0
%t4 = fmul double %t3, 1.0
%t5 = sitofp i32 0 to double 
%t6 = fmul double %t4, %t5
ret i32 0
}
