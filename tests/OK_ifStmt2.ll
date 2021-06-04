; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[7 x i8] c"9 > 10\00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[48 x i8] c"Uroczyscie przysiegam, ze knuje cos niedobrego.\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = icmp sgt i32 9, 10
br i1 %t1, label %label1, label %label3
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str1 to i8*))
br label %label2
label3:
br label %label10
label10:
br i1 1, label %label13, label %label11
label11:
br label %label12
label12:
br label %label13
label13:
%t2 = phi i1 [1,%label10],[0,%label12]
br label %label6
label6:
br i1 %t2, label %label7, label %label9
label7:
br label %label8
label8:
br label %label9
label9:
%t3 = phi i1 [%t2,%label6],[0,%label8]
br i1 %t3, label %label4, label %label14
label4:
br i1 0, label %label15, label %label16
label15:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label17
label16:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label17
label17:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
br label %label5
label14:
%t4 = xor i1 1, 0
%t5 = xor i1 1, %t4
br i1 %t5, label %label18, label %label20
label18:
br i1 0, label %label21, label %label22
label21:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label23
label22:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label23
label23:
br label %label19
label20:
call i32 (i8*, ...) @printf(i8* bitcast ([48 x i8]* @str3 to i8*))
br label %label19
label19:
br label %label5
label5:
br label %label2
label2:
ret i32 0
}
