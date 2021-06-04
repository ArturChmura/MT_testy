; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[12 x i8] c"First step
\00"
@str2 = constant[17 x i8] c"    Second step
\00"
@str3 = constant[20 x i8] c"        Third step
\00"
@str4 = constant[17 x i8] c"            ...
\00"
@str5 = constant[46 x i8] c"                You went to infinity and ...
\00"
@str6 = constant[20 x i8] c"You failed anyway.
\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1cond = alloca i1
%v2num = alloca i32
%v3dec = alloca double
%v4temp = alloca double
store i32 0, i32* %v2num
%t1 = load i32, i32* %v2num
%t2 = sitofp i32 0 to double 
store double %t2, double* %v3dec
%t3 = load double, double* %v3dec
%t4 = sitofp i32 0 to double 
store double %t4, double* %v4temp
%t5 = load double, double* %v4temp
%t6 = load i32, i32* %v2num
%t7 = load i32, i32* %v2num
%t8 = icmp sle i32 %t6, %t7
%t9 = load double, double* %v3dec
%t10 = load double, double* %v3dec
%t11 = fcmp ogt double %t9, %t10
%t12 = xor i1 1, %t11
%t13 = icmp eq i1 %t8, %t12
store i1 %t13, i1* %v1cond
%t14 = load i1, i1* %v1cond
%t15 = load i1, i1* %v1cond
%t16 = xor i1 1, %t15
br i1 %t16, label %label4, label %label5
label4:
ret i32 0
br label %label5
label5:
%t17 = load i1, i1* %v1cond
br label %label6
label6:
br i1 %t17, label %label7, label %label9
label7:
%t18 = load i32, i32* %v2num
%t19 = xor i32 %t18, -1 
%t20 = load i32, i32* %v2num
%t21 = xor i32 %t20, -1 
%t22 = icmp eq i32 %t19, %t21
br label %label10
label10:
br i1 %t22, label %label13, label %label11
label11:
%t23 = load i32, i32* %v2num
%t24 = sdiv i32 %t23, 0
%t25 = icmp eq i32 %t24, 0
br label %label12
label12:
br label %label13
label13:
%t26 = phi i1 [%t22,%label10],[%t25,%label12]
br label %label8
label8:
br label %label9
label9:
%t27 = phi i1 [%t17,%label6],[%t26,%label8]
store i1 %t27, i1* %v1cond
%t28 = load i1, i1* %v1cond
%t29 = load i1, i1* %v1cond
%t30 = xor i1 1, %t29
br i1 %t30, label %label14, label %label15
label14:
ret i32 0
br label %label15
label15:
%t31 = load i1, i1* %v1cond
br label %label16
label16:
br i1 %t31, label %label17, label %label19
label17:
%t32 = load i32, i32* %v2num
%t33 = load double, double* %v3dec
%t34 = sitofp i32 %t32 to double 
%t35 = fadd double %t34, %t33
%t36 = sitofp i32 0 to double 
%t37 = fcmp oeq double %t35, %t36
br label %label20
label20:
br i1 %t37, label %label23, label %label21
label21:
%t38 = load double, double* %v3dec
%t39 = fdiv double %t38, 0.0
%t40 = load i32, i32* %v2num
%t41 = sitofp i32 %t40 to double 
%t42 = fdiv double %t41, 0.0
%t43 = fcmp olt double %t39, %t42
br label %label22
label22:
br label %label23
label23:
%t44 = phi i1 [%t37,%label20],[%t43,%label22]
br label %label18
label18:
br label %label19
label19:
%t45 = phi i1 [%t31,%label16],[%t44,%label18]
store i1 %t45, i1* %v1cond
%t46 = load i1, i1* %v1cond
%t47 = load i1, i1* %v1cond
%t48 = xor i1 1, %t47
br i1 %t48, label %label24, label %label25
label24:
ret i32 0
br label %label25
label25:
%t49 = sitofp i32 1 to double 
store double %t49, double* %v4temp
%t50 = load double, double* %v4temp
store double 2.0, double* %v4temp
%t51 = load double, double* %v4temp
%t52 = fadd double %t50, %t51
%t53 = fsub double %t52, 2.0
%t54 = load double, double* %v3dec
%t55 = fneg double %t54 
%t56 = fneg double %t55 
%t57 = load double, double* %v3dec
%t58 = fneg double %t57 
%t59 = fneg double %t58 
%t60 = fneg double %t59 
%t61 = fneg double %t60 
%t62 = fcmp oeq double %t56, %t61
%t63 = zext i1 %t62 to i32
%t64 = mul i32 10, %t63
%t65 = sitofp i32 %t64 to double 
%t66 = fadd double %t53, %t65
%t67 = load i32, i32* %v2num
%t68 = load i32, i32* %v2num
%t69 = icmp slt i32 %t67, %t68
%t70 = xor i1 1, %t69
%t71 = zext i1 %t70 to i32
%t72 = mul i32 100, %t71
%t73 = sitofp i32 %t72 to double 
%t74 = fadd double %t66, %t73
%t75 = load i32, i32* %v2num
%t76 = load i32, i32* %v2num
%t77 = icmp sgt i32 %t75, %t76
%t78 = icmp eq i1 %t77, 1
%t79 = zext i1 %t78 to i32
%t80 = mul i32 1000, %t79
%t81 = sitofp i32 %t80 to double 
%t82 = fadd double %t74, %t81
%t83 = load i32, i32* %v2num
%t84 = load i32, i32* %v2num
%t85 = xor i32 %t84, -1 
%t86 = or i32 %t83, %t85
%t87 = load double, double* %v3dec
%t88 = sitofp i32 1 to double 
%t89 = fsub double %t87, %t88
%t90 = sitofp i32 %t86 to double 
%t91 = fcmp olt double %t90, %t89
%t92 = zext i1 %t91 to i32
%t93 = mul i32 10000, %t92
%t94 = sitofp i32 %t93 to double 
%t95 = fadd double %t82, %t94
%t96 = load i32, i32* %v2num
%t97 = add i32 %t96, 2
%t98 = load i32, i32* %v2num
%t99 = add i32 %t98, 2
%t100 = and i32 %t97, %t99
%t101 = icmp eq i32 %t100, 2
%t102 = zext i1 %t101 to i32
%t103 = mul i32 100000, %t102
%t104 = sitofp i32 %t103 to double 
%t105 = fadd double %t95, %t104
%t106 = load i32, i32* %v2num
%t107 = xor i32 %t106, -1 
%t108 = mul i32 -1, %t107
%t109 = load i32, i32* %v2num
%t110 = xor i32 %t109, -1 
%t111 = sdiv i32 %t108, %t110
%t112 = mul i32 -1, 1
%t113 = icmp eq i32 %t111, %t112
%t114 = zext i1 %t113 to i32
%t115 = mul i32 1000000, %t114
%t116 = sitofp i32 %t115 to double 
%t117 = fadd double %t105, %t116
%t118 = load i32, i32* %v2num
%t119 = load i32, i32* %v2num
%t120 = xor i32 %t119, -1 
%t121 = mul i32 -1, %t120
%t122 = load i32, i32* %v2num
%t123 = xor i32 %t122, -1 
%t124 = mul i32 -1, %t123
%t125 = or i32 %t121, %t124
%t126 = sdiv i32 %t118, %t125
%t127 = mul i32 10000000, %t126
%t128 = sitofp i32 %t127 to double 
%t129 = fadd double %t117, %t128
%t130 = load i32, i32* %v2num
%t131 = xor i32 %t130, -1 
%t132 = mul i32 -1, %t131
%t133 = load i32, i32* %v2num
%t134 = mul i32 -1, %t133
%t135 = xor i32 %t134, -1 
%t136 = mul i32 %t132, %t135
%t137 = icmp sge i32 %t136, 0
%t138 = zext i1 %t137 to i32
%t139 = mul i32 100000000, %t138
%t140 = sitofp i32 %t139 to double 
%t141 = fadd double %t129, %t140
store double %t141, double* %v4temp
%t142 = load double, double* %v4temp
%t143 = load double, double* %v4temp
%t144 = fcmp olt double %t143, 1100111.00000001
br label %label30
label30:
br i1 %t144, label %label31, label %label33
label31:
%t145 = load double, double* %v4temp
%t146 = fcmp ogt double %t145, 1100110.99999999
br label %label32
label32:
br label %label33
label33:
%t147 = phi i1 [%t144,%label30],[%t146,%label32]
br label %label26
label26:
br i1 %t147, label %label29, label %label27
label27:
%t148 = load i1, i1* %v1cond
%t149 = xor i1 1, %t148
br label %label28
label28:
br label %label29
label29:
%t150 = phi i1 [%t147,%label26],[%t149,%label28]
store i1 %t150, i1* %v1cond
%t151 = load i1, i1* %v1cond
%t152 = load i1, i1* %v1cond
br i1 %t152, label %label34, label %label35
label34:
call i32 (i8*, ...) @printf(i8* bitcast ([12 x i8]* @str1 to i8*))
store i32 2147483647, i32* %v2num
%t153 = load i32, i32* %v2num
%t154 = load i32, i32* %v2num
%t155 = sitofp i32 %t154 to double 
store double %t155, double* %v3dec
%t156 = load double, double* %v3dec
%t157 = load i32, i32* %v2num
%t158 = load double, double* %v3dec
%t159 = fptosi double %t158 to i32
%t160 = icmp eq i32 %t157, %t159
br label %label40
label40:
br i1 %t160, label %label41, label %label43
label41:
%t161 = load i32, i32* %v2num
%t162 = add i32 %t161, 1
%t163 = icmp slt i32 %t162, 0
br label %label42
label42:
br label %label43
label43:
%t164 = phi i1 [%t160,%label40],[%t163,%label42]
br label %label36
label36:
br i1 %t164, label %label37, label %label39
label37:
%t165 = load double, double* %v3dec
%t166 = sitofp i32 1 to double 
%t167 = fadd double %t165, %t166
%t168 = sitofp i32 0 to double 
%t169 = fcmp ogt double %t167, %t168
br label %label38
label38:
br label %label39
label39:
%t170 = phi i1 [%t164,%label36],[%t169,%label38]
store i1 %t170, i1* %v1cond
%t171 = load i1, i1* %v1cond
%t172 = load i1, i1* %v1cond
br i1 %t172, label %label44, label %label45
label44:
call i32 (i8*, ...) @printf(i8* bitcast ([17 x i8]* @str2 to i8*))
%t173 = xor i32 2147483647, -1 
%t174 = xor i32 %t173, -1 
%t175 = and i32 %t174, 0
%t176 = mul i32 2147483647, 0
%t177 = icmp eq i32 %t175, %t176
%t178 = xor i1 1, %t177
%t179 = xor i1 1, %t178
%t180 = icmp ne i1 %t179, 0
store i1 %t180, i1* %v1cond
%t181 = load i1, i1* %v1cond
%t182 = load i1, i1* %v1cond
br i1 %t182, label %label46, label %label47
label46:
call i32 (i8*, ...) @printf(i8* bitcast ([20 x i8]* @str3 to i8*))
%t183 = load i1, i1* %v1cond
%t184 = xor i1 1, %t183
%t185 = zext i1 %t184 to i32
%t186 = xor i32 %t185, -1 
%t187 = mul i32 -1, %t186
%t188 = icmp eq i32 1, %t187
store i1 %t188, i1* %v1cond
%t189 = load i1, i1* %v1cond
%t190 = load i1, i1* %v1cond
br i1 %t190, label %label48, label %label49
label48:
call i32 (i8*, ...) @printf(i8* bitcast ([17 x i8]* @str4 to i8*))
%t191 = load i32, i32* %v2num
%t192 = sdiv i32 %t191, 2
%t193 = add i32 %t192, 2
%t194 = and i32 1, %t193
%t195 = and i32 %t194, 1
store i32 %t195, i32* %v2num
%t196 = load i32, i32* %v2num
store i1 1, i1* %v1cond
%t197 = load i1, i1* %v1cond
%t198 = zext i1 %t197 to i32
%t199 = icmp eq i32 1, %t198
store i1 0, i1* %v1cond
%t200 = load i1, i1* %v1cond
%t201 = icmp ne i1 %t199, %t200
store i1 1, i1* %v1cond
%t202 = load i1, i1* %v1cond
%t203 = icmp eq i1 %t201, %t202
store i1 %t203, i1* %v1cond
%t204 = load i1, i1* %v1cond
br label %label1
label1:
%t205 = load i1, i1* %v1cond
br i1 %t205, label %label2, label %label3
label2:
call i32 (i8*, ...) @printf(i8* bitcast ([46 x i8]* @str5 to i8*))
%t206 = load i32, i32* %v2num
%t207 = xor i32 %t206, -1 
%t208 = mul i32 -1, %t207
%t209 = icmp eq i32 %t208, 2
%t210 = xor i1 1, %t209
store i1 %t210, i1* %v1cond
%t211 = load i1, i1* %v1cond
br label %label1
label3:
br label %label49
label49:
br label %label47
label47:
br label %label45
label45:
br label %label35
label35:
call i32 (i8*, ...) @printf(i8* bitcast ([20 x i8]* @str6 to i8*))
ret i32 0
}
