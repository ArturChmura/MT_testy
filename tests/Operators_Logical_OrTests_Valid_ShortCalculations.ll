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
br label %label1
label1:
br i1 1, label %label4, label %label2
label2:
%t1 = fdiv double 1.0, 0.0
%t2 = sitofp i32 3 to double 
%t3 = fcmp oeq double %t2, %t1
br label %label3
label3:
br label %label4
label4:
%t4 = phi i1 [1,%label1],[%t3,%label3]
ret i32 0
}
