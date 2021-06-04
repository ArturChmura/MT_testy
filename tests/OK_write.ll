; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[38 x i8] c"Kolejne liczby calkowite mniejsze od \00"
@str2 = constant[6 x i8] c" to: \00"
@str3 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1liczba = alloca double
%v2n = alloca i32
store i32 0, i32* %v2n
%t1 = load i32, i32* %v2n
store double 11.065, double* %v1liczba
%t2 = load double, double* %v1liczba
call i32 (i8*, ...) @printf(i8* bitcast ([38 x i8]* @str1 to i8*))
%t3 = load double, double* %v1liczba
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t3)
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str2 to i8*))
br label %label1
label1:
%t4 = load i32, i32* %v2n
%t5 = load double, double* %v1liczba
%t6 = sitofp i32 %t4 to double 
%t7 = fcmp olt double %t6, %t5
br i1 %t7, label %label2, label %label3
label2:
%t8 = load i32, i32* %v2n
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t8)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t9 = load i32, i32* %v2n
%t10 = add i32 %t9, 1
store i32 %t10, i32* %v2n
%t11 = load i32, i32* %v2n
br label %label1
label3:
ret i32 0
}
