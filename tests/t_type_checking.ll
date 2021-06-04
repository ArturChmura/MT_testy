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
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1sztos = alloca i32
%v2a = alloca i1
%v3siema = alloca double
%t1 = mul i32 -1, 102
store i32 %t1, i32* %v1sztos
%t2 = load i32, i32* %v1sztos
store i1 0, i1* %v2a
%t3 = load i1, i1* %v2a
%t4 = mul i32 -1, 10
%t5 = sitofp i32 %t4 to double 
store double %t5, double* %v3siema
%t6 = load double, double* %v3siema
store double 101.75, double* %v3siema
%t7 = load double, double* %v3siema
%t8 = fneg double 104.27 
store double %t8, double* %v3siema
%t9 = load double, double* %v3siema
%t10 = fneg double 10.5 
%t11 = fmul double %t10, 20.2
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t11)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t12 = fneg double 10.24 
%t13 = sitofp i32 5 to double 
%t14 = fmul double %t12, %t13
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t14)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
%t15 = sitofp i32 5 to double 
%t16 = fdiv double %t15, 421.4
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t16)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t17 = xor i1 1, 1
br i1 %t17, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
ret i32 0
}
