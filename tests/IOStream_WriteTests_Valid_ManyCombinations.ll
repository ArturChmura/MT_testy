; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[7 x i8] c"Simple\00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[5 x i8] c"123
\00"
@str4 = constant[10 x i8] c"123.0234
\00"
@str5 = constant[37 x i8] c"98713ny458vyno88&t8&^VR&^VESA*DBUYU
\00"
@str6 = constant[28 x i8] c"'''bool int double write ''\00"
@str7 = constant[6 x i8] c"write\00"
@str8 = constant[2 x i8] c"
\00"
@str9 = constant[4 x i8] c";;;\00"
@str10 = constant[2 x i8] c"
\00"
@str11 = constant[2 x i8] c"
\00"
@str12 = constant[2 x i8] c"
\00"
@str13 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str3 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([10 x i8]* @str4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([37 x i8]* @str5 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([28 x i8]* @str6 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str7 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str9 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str10 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 1)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str11 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double 3.14)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str12 to i8*))
br i1 0, label %label1, label %label2
label1:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label3
label3:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str13 to i8*))
br i1 1, label %label4, label %label5
label4:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label6
label5:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label6
label6:
ret i32 0
}
