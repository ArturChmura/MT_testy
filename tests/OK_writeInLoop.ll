; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i1
store i32 5, i32* %v1a
%t1 = load i32, i32* %v1a
br label %label1
label1:
%t2 = load i32, i32* %v1a
%t3 = icmp sgt i32 %t2, 0
br i1 %t3, label %label2, label %label3
label2:
%t4 = load i32, i32* %v1a
%t5 = sitofp i32 %t4 to double 
%t6 = fadd double %t5, 1.0756
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t6)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t7 = load i32, i32* %v1a
%t8 = sub i32 %t7, 1
store i32 %t8, i32* %v1a
%t9 = load i32, i32* %v1a
br label %label1
label3:
ret i32 0
}
