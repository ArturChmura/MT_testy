; prolog
@int_res = constant [3 x i8] c"%d\00"
@double_res = constant [4 x i8] c"%lf\00"
@hex_scanf = constant [3 x i8] c"%X\00"
@hex_write = constant [5 x i8] c"0X%X\00"
@true_res = constant [5 x i8] c"True\00"
@false_res = constant [6 x i8] c"False\00"
@str1 = constant[4 x i8] c"Nic\00"
@str2 = constant[4 x i8] c"Nic\00"
declare i32 @printf(i8* noalias nocapture, ...)
declare i32 @scanf(i8* noalias nocapture, ...)
define i32 @main()
{
%t1 = icmp sgt i32 1, 0
br i1 %t1, label %label1, label %label2
label1:
br label %label5
label5:
br i1 1, label %label6, label %label8
label6:
br label %label9
label9:
br i1 1, label %label12, label %label10
label10:
br label %label11
label11:
br label %label12
label12:
%t2 = phi i1 [1,%label9],[0,%label11]
br label %label7
label7:
br label %label8
label8:
%t3 = phi i1 [1,%label5],[%t2,%label7]
br i1 %t3, label %label3, label %label13
label3:
%t4 = mul i32 5, 5
%t5 = icmp slt i32 %t4, 20
br i1 %t5, label %label14, label %label16
label14:
%t6 = icmp sgt i32 1, 0
br label %label28
label28:
br i1 %t6, label %label29, label %label31
label29:
br label %label30
label30:
br label %label31
label31:
%t7 = phi i1 [%t6,%label28],[1,%label30]
br label %label24
label24:
br i1 %t7, label %label25, label %label27
label25:
br label %label32
label32:
br i1 1, label %label35, label %label33
label33:
br label %label34
label34:
br label %label35
label35:
%t8 = phi i1 [1,%label32],[0,%label34]
br label %label26
label26:
br label %label27
label27:
%t9 = phi i1 [%t7,%label24],[%t8,%label26]
br label %label20
label20:
br i1 %t9, label %label21, label %label23
label21:
%t10 = mul i32 5, 5
%t11 = icmp slt i32 %t10, 20
br label %label22
label22:
br label %label23
label23:
%t12 = phi i1 [%t9,%label20],[%t11,%label22]
br i1 %t12, label %label17, label %label18
label17:
call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @true_res to i8*))
br label %label19
label18:
call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @false_res to i8*))
br label %label19
label19:
br label %label15
label16:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str1 to i8*))
br label %label15
label15:
br label %label4
label13:
call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @str2 to i8*))
br label %label4
label4:
br label %label2
label2:
ret i32 0
}
