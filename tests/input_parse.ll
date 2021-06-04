; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[11 x i8] c"podaj int \00"
@str2 = constant[14 x i8] c"podaj double \00"
@str3 = constant[11 x i8] c"podaj int \00"
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i1
%v3c = alloca double
%v4d = alloca double
call i32 (i8*, ...) @printf(i8* bitcast ([11 x i8]* @str1 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_res to i8*), i32* %v1a)
call i32 (i8*, ...) @printf(i8* bitcast ([14 x i8]* @str2 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v3c)
call i32 (i8*, ...) @printf(i8* bitcast ([11 x i8]* @str3 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v4d)
%t1 = load i32, i32* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t1)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
%t2 = load double, double* %v3c
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t2)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
%t3 = load double, double* %v4d
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t3)
ret i32 0
}
