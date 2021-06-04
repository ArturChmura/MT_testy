; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[2 x i8] c"
\00"
@str2 = constant[2 x i8] c"
\00"
@str3 = constant[2 x i8] c"
\00"
@str4 = constant[2 x i8] c"
\00"
@str5 = constant[8 x i8] c"akuku!
\00"
@str6 = constant[4 x i8] c"OK
\00"
@str7 = constant[8 x i8] c"really
\00"
@str8 = constant[6 x i8] c"FAIL
\00"
@str9 = constant[6 x i8] c"FAIL
\00"
@str10 = constant[4 x i8] c"OK
\00"
@str11 = constant[11 x i8] c"seriously
\00"
@str12 = constant[2 x i8] c"
\00"
@str13 = constant[31 x i8] c"ERROR brak skroconych wyrazen
\00"
@str14 = constant[9 x i8] c"SUCCESS
\00"
@str15 = constant[7 x i8] c"FAIL 
\00"
@str16 = constant[5 x i8] c"OK: \00"
@str17 = constant[2 x i8] c"
\00"
@str18 = constant[5 x i8] c"OK: \00"
@str19 = constant[2 x i8] c"
\00"
@str20 = constant[5 x i8] c"OK: \00"
@str21 = constant[3 x i8] c" 
\00"
@str22 = constant[5 x i8] c"OK: \00"
@str23 = constant[2 x i8] c"
\00"
@str24 = constant[4 x i8] c"OK
\00"
@str25 = constant[4 x i8] c"OK
\00"
@str26 = constant[6 x i8] c"FAIL
\00"
@str27 = constant[18 x i8] c"unexpected write
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca i32
%v2b = alloca i32
%v3c = alloca i32
%v4br = alloca i32
%v5pop = alloca double
%v6POPjazzANDrockANDrollMAAAN = alloca double
%v7X = alloca double
%v8Y = alloca double
%v9Z = alloca double
%v10q = alloca i1
%v11r = alloca i1
%v12p = alloca i1
store i32 0, i32* %v1a
%t1 = load i32, i32* %v1a
%t2 = load i32, i32* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t2)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str1 to i8*))
%t3 = load double, double* %v7X
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t3)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str2 to i8*))
call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_res to i8*), i32* %v1a)
call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_res to i8*), double* %v7X)
%t4 = load i32, i32* %v1a
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t4)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str3 to i8*))
%t5 = load double, double* %v7X
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t5)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str4 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([8 x i8]* @str5 to i8*))
%t6 = zext i1 1 to i32
%t7 = mul i32 2, %t6
%t8 = icmp eq i32 2, %t7
br i1 %t8, label %label7, label %label9
label7:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str6 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([8 x i8]* @str7 to i8*))
br label %label8
label9:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str8 to i8*))
br label %label8
label8:
%t9 = mul i32 -1, 14
%t10 = mul i32 -1, 14
%t11 = icmp eq i32 %t9, %t10
%t12 = icmp eq i1 0, %t11
br i1 %t12, label %label10, label %label12
label10:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str9 to i8*))
br label %label11
label12:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str10 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([11 x i8]* @str11 to i8*))
br label %label11
label11:
store double 1.123, double* %v7X
%t13 = load double, double* %v7X
br label %label1
label1:
%t14 = load double, double* %v7X
%t15 = sitofp i32 5 to double 
%t16 = fcmp olt double %t14, %t15
br i1 %t16, label %label2, label %label3
label2:
%t17 = load double, double* %v7X
%t18 = sitofp i32 1 to double 
%t19 = fadd double %t17, %t18
store double %t19, double* %v7X
%t20 = load double, double* %v7X
%t21 = load double, double* %v7X
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t21)
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str12 to i8*))
br label %label1
label3:
%t22 = mul i32 10, 4
%t23 = add i32 1, %t22
store i32 1, i32* %v1a
%t24 = load i32, i32* %v1a
%t25 = load i32, i32* %v1a
%t26 = icmp eq i32 %t25, 1
br label %label13
label13:
br i1 %t26, label %label16, label %label14
label14:
store i32 10, i32* %v1a
%t27 = load i32, i32* %v1a
%t28 = icmp sgt i32 %t27, 5
br label %label15
label15:
br label %label16
label16:
%t29 = phi i1 [%t26,%label13],[%t28,%label15]
store i1 %t29, i1* %v10q
%t30 = load i1, i1* %v10q
%t31 = load i32, i32* %v1a
%t32 = icmp eq i32 %t31, 10
br i1 %t32, label %label17, label %label18
label17:
call i32 (i8*, ...) @printf(i8* bitcast ([31 x i8]* @str13 to i8*))
br label %label18
label18:
store i32 1, i32* %v1a
%t33 = load i32, i32* %v1a
store double 2.5, double* %v7X
%t34 = load double, double* %v7X
%t35 = load i32, i32* %v1a
%t36 = load double, double* %v7X
%t37 = sitofp i32 %t35 to double 
%t38 = fcmp olt double %t37, %t36
store i1 %t38, i1* %v10q
%t39 = load i1, i1* %v10q
%t40 = load i32, i32* %v1a
%t41 = load double, double* %v7X
%t42 = sitofp i32 %t40 to double 
%t43 = fcmp ole double %t42, %t41
store i1 %t43, i1* %v12p
%t44 = load i1, i1* %v12p
%t45 = load i1, i1* %v12p
br label %label19
label19:
br i1 %t45, label %label20, label %label22
label20:
%t46 = load i1, i1* %v10q
br label %label21
label21:
br label %label22
label22:
%t47 = phi i1 [%t45,%label19],[%t46,%label21]
store i1 %t47, i1* %v11r
%t48 = load i1, i1* %v11r
%t49 = load double, double* %v7X
%t50 = load i32, i32* %v1a
%t51 = sitofp i32 %t50 to double 
%t52 = fcmp ogt double %t49, %t51
store i1 %t52, i1* %v12p
%t53 = load i1, i1* %v12p
%t54 = load double, double* %v7X
%t55 = load i32, i32* %v1a
%t56 = sitofp i32 %t55 to double 
%t57 = fcmp oge double %t54, %t56
store i1 %t57, i1* %v10q
%t58 = load i1, i1* %v10q
%t59 = load i1, i1* %v12p
br label %label27
label27:
br i1 %t59, label %label28, label %label30
label28:
%t60 = load i1, i1* %v11r
br label %label29
label29:
br label %label30
label30:
%t61 = phi i1 [%t59,%label27],[%t60,%label29]
br label %label23
label23:
br i1 %t61, label %label24, label %label26
label24:
%t62 = load i1, i1* %v10q
br label %label25
label25:
br label %label26
label26:
%t63 = phi i1 [%t61,%label23],[%t62,%label25]
store i1 %t63, i1* %v11r
%t64 = load i1, i1* %v11r
%t65 = load double, double* %v7X
%t66 = load i32, i32* %v1a
%t67 = sitofp i32 %t66 to double 
%t68 = fcmp une double %t65, %t67
store i1 %t68, i1* %v12p
%t69 = load i1, i1* %v12p
%t70 = icmp eq i32 2, 2
store i1 %t70, i1* %v10q
%t71 = load i1, i1* %v10q
%t72 = load i1, i1* %v12p
br label %label35
label35:
br i1 %t72, label %label36, label %label38
label36:
%t73 = load i1, i1* %v11r
br label %label37
label37:
br label %label38
label38:
%t74 = phi i1 [%t72,%label35],[%t73,%label37]
br label %label31
label31:
br i1 %t74, label %label32, label %label34
label32:
%t75 = load i1, i1* %v10q
br label %label33
label33:
br label %label34
label34:
%t76 = phi i1 [%t74,%label31],[%t75,%label33]
store i1 %t76, i1* %v11r
%t77 = load i1, i1* %v11r
%t78 = load i1, i1* %v11r
%t79 = xor i1 1, %t78
%t80 = xor i1 1, %t79
br label %label41
label41:
br i1 %t80, label %label44, label %label42
label42:
br label %label43
label43:
br label %label44
label44:
%t81 = phi i1 [%t80,%label41],[0,%label43]
br i1 %t81, label %label39, label %label45
label39:
call i32 (i8*, ...) @printf(i8* bitcast ([9 x i8]* @str14 to i8*))
br label %label40
label45:
call i32 (i8*, ...) @printf(i8* bitcast ([7 x i8]* @str15 to i8*))
br label %label40
label40:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str16 to i8*))
%t82 = and i32 5, 7
%t83 = icmp eq i32 %t82, 5
br i1 %t83, label %label46, label %label47
label46:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label48
label47:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label48
label48:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str17 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str18 to i8*))
%t84 = or i32 4, 8
%t85 = icmp eq i32 %t84, 12
br i1 %t85, label %label49, label %label50
label49:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label51
label50:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label51
label51:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str19 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str20 to i8*))
%t86 = mul i32 24, 2
%t87 = sub i32 148, %t86
%t88 = mul i32 -1, 4
%t89 = mul i32 %t88, 5
%t90 = sdiv i32 %t89, 4
%t91 = sub i32 %t87, %t90
%t92 = add i32 2, 3
%t93 = sub i32 %t91, %t92
%t94 = icmp eq i32 %t93, 100
br i1 %t94, label %label52, label %label53
label52:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label54
label53:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label54
label54:
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @str21 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @str22 to i8*))
%t95 = xor i1 1, 0
%t96 = xor i1 1, %t95
%t97 = xor i1 1, %t96
%t98 = xor i1 1, %t97
%t99 = xor i1 1, %t98
br i1 %t99, label %label55, label %label56
label55:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label57
label56:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label57
label57:
call i32 (i8*, ...) @printf(i8* bitcast ([2 x i8]* @str23 to i8*))
%t100 = fsub double 3.14, 0.14
%t101 = sitofp i32 4 to double 
%t102 = fsub double %t100, %t101
%t103 = sitofp i32 1 to double 
%t104 = fadd double %t102, %t103
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t104)
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 0)
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double 0.0)
%t105 = fneg double 0.0 
store double %t105, double* %v7X
%t106 = load double, double* %v7X
%t107 = mul i32 -1, 0
store i32 %t107, i32* %v1a
%t108 = load i32, i32* %v1a
%t109 = mul i32 -1, 41
%t110 = add i32 %t109, 21
%t111 = mul i32 4, %t110
%t112 = add i32 1, %t111
store i32 %t112, i32* %v2b
%t113 = load i32, i32* %v2b
%t114 = zext i1 1 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t114)
%t115 = zext i1 1 to i32
%t116 = sitofp i32 %t115 to double 
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t116)
%t117 = fneg double 24.157127 
%t118 = fptosi double %t117 to i32
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t118)
%t119 = mul i32 -1, 24212
%t120 = sitofp i32 %t119 to double 
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double %t120)
store i32 0, i32* %v1a
%t121 = load i32, i32* %v1a
br label %label4
label4:
%t122 = load i32, i32* %v1a
%t123 = add i32 %t122, 1
store i32 %t123, i32* %v1a
%t124 = load i32, i32* %v1a
%t125 = icmp slt i32 %t124, 5
br i1 %t125, label %label5, label %label6
label5:
br label %label4
label6:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str24 to i8*))
br i1 1, label %label58, label %label60
label58:
br label %label59
label60:
br label %label59
label59:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str25 to i8*))
ret i32 0
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @str26 to i8*))
call i32 (i8*, ...) @printf(i8* bitcast ([18 x i8]* @str27 to i8*))
%t126 = sdiv i32 10, 0
call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 %t126)
ret i32 0
}
