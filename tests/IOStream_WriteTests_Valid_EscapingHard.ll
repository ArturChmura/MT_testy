; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[1 x i8] c"\00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[2 x i8] c" \00"
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[2 x i8] c"\5C\00"
@str6 = constant[2 x i8] c"
\00"
@str7 = constant[3 x i8] c"\5C \00"
@str8 = constant[2 x i8] c"
\00"
@str9 = constant[3 x i8] c" \5C\00"
@str10 = constant[2 x i8] c"
\00"
@str11 = constant[3 x i8] c"  \00"
@str12 = constant[2 x i8] c"
\00"
@str13 = constant[5 x i8] c"\5C \5C \00"
@str14 = constant[2 x i8] c"
\00"
@str15 = constant[16 x i8] c"\5C     \5C  \5C \5C   \00"
@str16 = constant[2 x i8] c"
\00"
@str17 = constant[7 x i8] c"\5C \5C \5C \00"
@str18 = constant[2 x i8] c"
\00"
@str19 = constant[3 x i8] c"\5C\5C\00"
@str20 = constant[2 x i8] c"
\00"
@str21 = constant[5 x i8] c"\5C\5C\5C\5C\00"
@str22 = constant[2 x i8] c"
\00"
@str23 = constant[2 x i8] c"m\00"
@str24 = constant[2 x i8] c"
\00"
@str25 = constant[2 x i8] c"r\00"
@str26 = constant[2 x i8] c"
\00"
@str27 = constant[2 x i8] c"\22\00"
@str28 = constant[2 x i8] c"
\00"
@str29 = constant[3 x i8] c"\22\22\00"
@str30 = constant[2 x i8] c"
\00"
@str31 = constant[3 x i8] c"\5C\22\00"
@str32 = constant[2 x i8] c"
\00"
@str33 = constant[6 x i8] c"\5C\5C\5C\5C\22\00"
@str34 = constant[2 x i8] c"
\00"
@str35 = constant[4 x i8] c"\5C\22\5C\00"
@str36 = constant[2 x i8] c"
\00"
@str37 = constant[22 x i8] c"\22\22\5C\22\5C\5C\22\5C\5C\5C\22\5C\5C\5C\22\5C\5C\22\5C\22\22\00"
@str38 = constant[2 x i8] c"
\00"
@str39 = constant[5 x i8] c"uxx\22\00"
@str40 = constant[2 x i8] c"
\00"
@str41 = constant[8 x i8] c"\5C\22hey\22\5C\00"
@str42 = constant[2 x i8] c"
\00"
@str43 = constant[16 x i8] c"\5CEscape it all\5C\00"
@str44 = constant[2 x i8] c"
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
call i32 (i8*, ...) @printf(i8* bitcast ([1 x i8]* @str1 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str5 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str6 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str7 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str8 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str9 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str10 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str11 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str12 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str13 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str14 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([16 x i8]* @str15 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str16 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str17 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str18 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str19 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str20 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str21 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str22 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str23 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str24 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str25 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str26 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str27 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str28 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str29 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str30 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str31 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str32 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str33 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str34 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str35 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str36 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([22 x i8]* @str37 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str38 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str39 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str40 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([8 x i8]* @str41 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str42 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([16 x i8]* @str43 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str44 to i8*))
ret i32 0
}
