; ModuleID = 'tests/linear_loop_notime_simple.bc'
source_filename = "tests/linear_loop_notime.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z8criticalPi(i32* %0) #0 {
  br label %2

2:                                                ; preds = %1, %7
  %indvars.iv9 = phi i64 [ 0, %1 ], [ %indvars.iv.next10, %7 ]
  %.018 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %3 = mul nsw i32 %.018, %.018
  %4 = trunc i64 %indvars.iv9 to i32
  %5 = sub nsw i32 %3, %4
  %6 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv9
  store i32 %5, i32* %6, align 4
  br label %7

7:                                                ; preds = %2
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %8 = add nuw nsw i32 %.018, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next10, 10000000
  br i1 %exitcond11, label %2, label %9

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %15
  %indvars.iv5 = phi i64 [ 1, %9 ], [ %indvars.iv.next6, %15 ]
  %11 = sub nuw nsw i64 %indvars.iv5, 1
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv5
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %10
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next6, 100
  br i1 %exitcond7, label %10, label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16, %22
  %indvars.iv = phi i64 [ 1, %16 ], [ %indvars.iv.next, %22 ]
  %18 = sub nuw nsw i64 %indvars.iv, 1
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 10000000
  br i1 %exitcond, label %17, label %23

23:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %0, %6
  %.01 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = call noalias i8* @malloc(i64 40000000) #3
  %3 = bitcast i8* %2 to i32*
  %4 = call i32 @_Z8criticalPi(i32* %3)
  %5 = bitcast i32* %3 to i8*
  call void @free(i8* %5) #3
  br label %6

6:                                                ; preds = %1
  %7 = add nuw nsw i32 %.01, 1
  %exitcond = icmp ne i32 %7, 25
  br i1 %exitcond, label %1, label %8

8:                                                ; preds = %6
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-++20200412073436+50d7e5d5e7d-1~exp1~20200412054917.132 "}
