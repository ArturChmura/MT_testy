; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[5 x i8] c"poo
\00"
@str2 = constant[5 x i8] c"boo
\00"
@str3 = constant[5 x i8] c"too
\00"
@str4 = constant[5 x i8] c"doo
\00"
@str5 = constant[5 x i8] c"goo
\00"
@str6 = constant[5 x i8] c"koo
\00"
@str7 = constant[5 x i8] c"woo
\00"
@str8 = constant[5 x i8] c"foo
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
br i1 1, label %label1, label %label2
label1:
br i1 1, label %label3, label %label5
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str1 to i8*))
br label %label4
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str2 to i8*))
br label %label4
label4:
br label %label2
label2:
br i1 1, label %label6, label %label7
label6:
br i1 0, label %label8, label %label10
label8:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str3 to i8*))
br label %label9
label10:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str4 to i8*))
br label %label9
label9:
br label %label7
label7:
br i1 0, label %label11, label %label12
label11:
br i1 1, label %label13, label %label15
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str5 to i8*))
br label %label14
label15:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str6 to i8*))
br label %label14
label14:
br label %label12
label12:
br i1 0, label %label16, label %label17
label16:
br i1 0, label %label18, label %label20
label18:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str7 to i8*))
br label %label19
label20:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str8 to i8*))
br label %label19
label19:
br label %label17
label17:
ret i32 0
}
