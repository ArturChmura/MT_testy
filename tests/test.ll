; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[9 x i8] c"dupeczka\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i1
%t1 = icmp eq i1 1, 1
br i1 %t1, label %label1, label %label2
label1:
br label %label2
label2:
%t2 = icmp eq i1 1, 1
br i1 %t2, label %label3, label %label4
label3:
br label %label4
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @str1 to i8*))
ret i32 0
}
