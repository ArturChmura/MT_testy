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
%v1k = alloca double
%t1 = fneg double 5.01 
%t2 = fneg double %t1 
%t3 = fneg double %t2 
%t4 = fneg double %t3 
%t5 = fneg double %t4 
%t6 = fneg double %t5 
%t7 = fneg double %t6 
%t8 = fneg double %t7 
%t9 = fneg double %t8 
%t10 = fneg double %t9 
%t11 = fneg double %t10 
%t12 = fneg double %t11 
%t13 = fneg double %t12 
store double %t13, double* %v1k
%t14 = load double, double* %v1k
ret i32 0
}
