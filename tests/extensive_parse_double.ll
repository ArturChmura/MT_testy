; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[2 x i8] c"
\00"
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[2 x i8] c"
\00"
@str6 = constant[2 x i8] c"
\00"
@str7 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1A1 = alloca double
%v2B1 = alloca double
%v3C1 = alloca double
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v1A1)
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v2B1)
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v3C1)
%t1 = load double, double* %v1A1
%t2 = fptosi double %t1 to i32
%t3 = load double, double* %v3C1
%t4 = sitofp i32 %t2 to double 
%t5 = fmul double %t4, %t3
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t6 = load double, double* %v2B1
%t7 = fptosi double %t6 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t7)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t8 = load double, double* %v2B1
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t8)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t9 = load double, double* %v1A1
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t9)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t10 = load double, double* %v3C1
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t10)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v1A1)
%t11 = load double, double* %v1A1
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t11)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str6 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v1A1)
%t12 = load double, double* %v1A1
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t12)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str7 to i8*))
ret i32 0
}
