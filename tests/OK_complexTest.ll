; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[5 x i8] c"Loop\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i32
%v3c = alloca double
store i32 5, i32* %v1a
%t1 = load i32, i32* %v1a
store i32 8, i32* %v2b
%t2 = load i32, i32* %v2b
store double 0.2, double* %v3c
%t3 = load double, double* %v3c
br label %label1
label1:
br label %label4
label4:
br i1 1, label %label5, label %label7
label5:
%t4 = load i32, i32* %v2b
%t5 = sitofp i32 %t4 to double 
%t6 = load i32, i32* %v1a
%t7 = sitofp i32 %t6 to double 
%t8 = fdiv double %t5, %t7
%t9 = sitofp i32 1 to double 
%t10 = fsub double %t8, %t9
%t11 = load double, double* %v3c
%t12 = fcmp oge double %t10, %t11
br label %label6
label6:
br label %label7
label7:
%t13 = phi i1 [1,%label4],[%t12,%label6]
br i1 %t13, label %label2, label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str1 to i8*))
%t14 = load i32, i32* %v2b
%t15 = sub i32 1, %t14
%t16 = mul i32 -1, %t15
store i32 %t16, i32* %v2b
%t17 = load i32, i32* %v2b
br label %label1
label3:
ret i32 0
}
