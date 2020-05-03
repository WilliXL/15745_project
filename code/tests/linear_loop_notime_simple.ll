; ModuleID = 'tests/linear_loop_notime_simple.bc'
source_filename = "tests/linear_loop_notime.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @_Z8criticalPi(i32* nocapture %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %2 ]
  %4 = trunc i64 %3 to i32
  %5 = mul nsw i32 %4, %4
  %6 = trunc i64 %3 to i32
  %7 = sub nsw i32 %5, %6
  %8 = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %7, i32* %8, align 4, !tbaa !2
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 10000000
  br i1 %10, label %.preheader, label %2

.preheader:                                       ; preds = %2
  br label %12

11:                                               ; preds = %12
  ret i32 0

12:                                               ; preds = %.preheader, %12
  %13 = phi i64 [ %18, %12 ], [ 1, %.preheader ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !2
  %17 = getelementptr inbounds i32, i32* %0, i64 %13
  store i32 %16, i32* %17, align 4, !tbaa !2
  %18 = add nuw nsw i64 %13, 2
  %19 = icmp ult i64 %13, 9999998
  br i1 %19, label %12, label %11
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  br label %2

1:                                                ; preds = %2
  ret i32 0

2:                                                ; preds = %2, %0
  %3 = phi i32 [ 0, %0 ], [ %7, %2 ]
  %4 = call noalias dereferenceable_or_null(40000000) i8* @malloc(i64 40000000) #4
  %5 = bitcast i8* %4 to i32*
  %6 = call i32 @_Z8criticalPi(i32* %5)
  call void @free(i8* %4) #4
  %7 = add nuw nsw i32 %3, 1
  %8 = icmp eq i32 %7, 25
  br i1 %8, label %1, label %2
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-++20200412073436+50d7e5d5e7d-1~exp1~20200412054917.132 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
