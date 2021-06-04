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
%t1 = sdiv i32 5, 2
%t2 = sitofp i32 %t1 to double 
%t3 = fdiv double %t2, 3.0
%t4 = sitofp i32 555 to double 
%t5 = fdiv double %t3, %t4
%t6 = fdiv double %t5, 0.000001
ret i32 0
}
