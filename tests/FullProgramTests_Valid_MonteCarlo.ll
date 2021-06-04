; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[23 x i8] c"PI between 3 and 3.3: \00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%v1a = alloca double
%v2c = alloca double
%v3m = alloca double
%v4seed = alloca double
%v5x = alloca double
%v6y = alloca double
%v7i = alloca i32
%v8iters = alloca i32
%v9inside = alloca i32
%v10pi = alloca double
store i32 0, i32* %v7i
%t1 = load i32, i32* %v7i
store i32 0, i32* %v9inside
%t2 = load i32, i32* %v9inside
store i32 1000, i32* %v8iters
%t3 = load i32, i32* %v8iters
%t4 = sitofp i32 123456789 to double 
store double %t4, double* %v4seed
%t5 = load double, double* %v4seed
%t6 = sitofp i32 48271 to double 
store double %t6, double* %v1a
%t7 = load double, double* %v1a
%t8 = sitofp i32 0 to double 
store double %t8, double* %v2c
%t9 = load double, double* %v2c
%t10 = sitofp i32 2147483647 to double 
store double %t10, double* %v3m
%t11 = load double, double* %v3m
br label %label1
label1:
%t12 = load i32, i32* %v7i
%t13 = load i32, i32* %v8iters
%t14 = icmp slt i32 %t12, %t13
br i1 %t14, label %label2, label %label3
label2:
%t15 = load double, double* %v1a
%t16 = load double, double* %v4seed
%t17 = fmul double %t15, %t16
%t18 = load double, double* %v2c
%t19 = fadd double %t17, %t18
store double %t19, double* %v4seed
%t20 = load double, double* %v4seed
br label %label4
label4:
%t21 = load double, double* %v4seed
%t22 = load double, double* %v3m
%t23 = fcmp ogt double %t21, %t22
br i1 %t23, label %label5, label %label6
label5:
%t24 = load double, double* %v4seed
%t25 = load double, double* %v3m
%t26 = fsub double %t24, %t25
store double %t26, double* %v4seed
%t27 = load double, double* %v4seed
br label %label4
label6:
%t28 = load double, double* %v4seed
%t29 = sitofp i32 2 to double 
%t30 = fmul double %t29, %t28
%t31 = load double, double* %v3m
%t32 = fdiv double %t30, %t31
%t33 = sitofp i32 1 to double 
%t34 = fsub double %t32, %t33
store double %t34, double* %v5x
%t35 = load double, double* %v5x
%t36 = load double, double* %v1a
%t37 = load double, double* %v4seed
%t38 = fmul double %t36, %t37
%t39 = load double, double* %v2c
%t40 = fadd double %t38, %t39
store double %t40, double* %v4seed
%t41 = load double, double* %v4seed
br label %label7
label7:
%t42 = load double, double* %v4seed
%t43 = load double, double* %v3m
%t44 = fcmp ogt double %t42, %t43
br i1 %t44, label %label8, label %label9
label8:
%t45 = load double, double* %v4seed
%t46 = load double, double* %v3m
%t47 = fsub double %t45, %t46
store double %t47, double* %v4seed
%t48 = load double, double* %v4seed
br label %label7
label9:
%t49 = load double, double* %v4seed
%t50 = sitofp i32 2 to double 
%t51 = fmul double %t50, %t49
%t52 = load double, double* %v3m
%t53 = fdiv double %t51, %t52
%t54 = sitofp i32 1 to double 
%t55 = fsub double %t53, %t54
store double %t55, double* %v6y
%t56 = load double, double* %v6y
%t57 = load double, double* %v5x
%t58 = load double, double* %v5x
%t59 = fmul double %t57, %t58
%t60 = load double, double* %v6y
%t61 = load double, double* %v6y
%t62 = fmul double %t60, %t61
%t63 = fadd double %t59, %t62
%t64 = sitofp i32 1 to double 
%t65 = fcmp ole double %t63, %t64
br i1 %t65, label %label10, label %label11
label10:
%t66 = load i32, i32* %v9inside
%t67 = add i32 %t66, 1
store i32 %t67, i32* %v9inside
%t68 = load i32, i32* %v9inside
br label %label11
label11:
%t69 = load i32, i32* %v7i
%t70 = add i32 %t69, 1
store i32 %t70, i32* %v7i
%t71 = load i32, i32* %v7i
br label %label1
label3:
%t72 = load i32, i32* %v9inside
%t73 = sitofp i32 %t72 to double 
%t74 = fmul double 4.0, %t73
%t75 = load i32, i32* %v8iters
%t76 = sitofp i32 %t75 to double 
%t77 = fdiv double %t74, %t76
store double %t77, double* %v10pi
%t78 = load double, double* %v10pi
call i32 (i8*, ...) @printf(i8* bitcast ([23 x i8]* @str1 to i8*))
%t79 = load double, double* %v10pi
%t80 = sitofp i32 3 to double 
%t81 = fcmp ogt double %t79, %t80
br label %label15
label15:
br i1 %t81, label %label16, label %label18
label16:
%t82 = load double, double* %v10pi
%t83 = fcmp olt double %t82, 3.3
br label %label17
label17:
br label %label18
label18:
%t84 = phi i1 [%t81,%label15],[%t83,%label17]
br i1 %t84, label %label12, label %label13
label12:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label14
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label14
label14:
ret i32 0
}
