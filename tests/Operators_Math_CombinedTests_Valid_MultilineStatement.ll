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
%t1 = sitofp i32 2 to double 
%t2 = fdiv double %t1, 3.0
%t3 = mul i32 -1, 555
%t4 = sitofp i32 %t3 to double 
%t5 = fmul double %t2, %t4
%t6 = sitofp i32 5 to double 
%t7 = fadd double %t6, %t5
%t8 = fsub double %t7, 0.000001
%t9 = sitofp i32 555 to double 
%t10 = fsub double %t8, %t9
ret i32 0
}
