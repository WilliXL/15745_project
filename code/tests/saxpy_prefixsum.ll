; ModuleID = 'tests/saxpy_prefixsum.bc'
source_filename = "tests/saxpy_prefixsum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Total: %d, Average: %d\0A\00", align 1

; Function Attrs: uwtable
define dso_local void @_Z15saxpy_prefixsumv() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  br label %4

1:                                                ; preds = %91
  %2 = inttoptr i64 %52 to i32*
  %3 = inttoptr i64 %92 to i32*
  br label %115

4:                                                ; preds = %91, %0
  %5 = phi i32 [ 0, %0 ], [ %96, %91 ]
  %6 = phi i64 [ 0, %0 ], [ %52, %91 ]
  %7 = phi i64 [ 0, %0 ], [ %53, %91 ]
  %8 = phi i32* [ null, %0 ], [ %94, %91 ]
  %9 = phi i64 [ 0, %0 ], [ %95, %91 ]
  %10 = phi i64 [ 0, %0 ], [ %92, %91 ]
  %11 = phi i32* [ null, %0 ], [ %50, %91 ]
  %12 = tail call i32 @rand() #7
  %13 = srem i32 %12, 3000000
  %14 = inttoptr i64 %7 to i32*
  %15 = icmp eq i32* %11, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  store i32 %13, i32* %14, align 4, !tbaa !2
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  br label %49

18:                                               ; preds = %4
  %19 = sub i64 %7, %6
  %20 = ashr exact i64 %19, 2
  %21 = icmp eq i64 %19, 0
  %22 = select i1 %21, i64 1, i64 %20
  %23 = add nsw i64 %22, %20
  %24 = icmp ult i64 %23, %20
  %25 = icmp ugt i64 %23, 4611686018427387903
  %26 = or i1 %24, %25
  %27 = select i1 %26, i64 4611686018427387903, i64 %23
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = shl nuw i64 %27, 2
  %31 = invoke i8* @_Znwm(i64 %30)
          to label %32 unwind label %98

32:                                               ; preds = %29
  %33 = bitcast i8* %31 to i32*
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi i32* [ %33, %32 ], [ null, %18 ]
  %36 = getelementptr inbounds i32, i32* %35, i64 %20
  store i32 %13, i32* %36, align 4, !tbaa !2
  br i1 %21, label %40, label %37

37:                                               ; preds = %34
  %38 = bitcast i32* %35 to i8*
  %39 = inttoptr i64 %6 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 %19, i1 false) #7
  br label %40

40:                                               ; preds = %34, %37
  %41 = getelementptr inbounds i32, i32* %35, i64 1
  %42 = getelementptr inbounds i32, i32* %41, i64 %20
  %43 = icmp eq i64 %6, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = inttoptr i64 %6 to i8*
  tail call void @_ZdlPv(i8* nonnull %45) #7
  br label %46

46:                                               ; preds = %44, %40
  %47 = ptrtoint i32* %35 to i64
  %48 = getelementptr inbounds i32, i32* %35, i64 %27
  br label %49

49:                                               ; preds = %46, %16
  %50 = phi i32* [ %48, %46 ], [ %11, %16 ]
  %51 = phi i32* [ %42, %46 ], [ %17, %16 ]
  %52 = phi i64 [ %47, %46 ], [ %6, %16 ]
  %53 = ptrtoint i32* %51 to i64
  %54 = tail call i32 @rand() #7
  %55 = srem i32 %54, 3000000
  %56 = inttoptr i64 %9 to i32*
  %57 = icmp eq i32* %8, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  store i32 %55, i32* %56, align 4, !tbaa !2
  %59 = getelementptr inbounds i32, i32* %56, i64 1
  br label %91

60:                                               ; preds = %49
  %61 = sub i64 %9, %10
  %62 = ashr exact i64 %61, 2
  %63 = icmp eq i64 %61, 0
  %64 = select i1 %63, i64 1, i64 %62
  %65 = add nsw i64 %64, %62
  %66 = icmp ult i64 %65, %62
  %67 = icmp ugt i64 %65, 4611686018427387903
  %68 = or i1 %66, %67
  %69 = select i1 %68, i64 4611686018427387903, i64 %65
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  %72 = shl nuw i64 %69, 2
  %73 = invoke i8* @_Znwm(i64 %72)
          to label %74 unwind label %100

74:                                               ; preds = %71
  %75 = bitcast i8* %73 to i32*
  br label %76

76:                                               ; preds = %74, %60
  %77 = phi i32* [ %75, %74 ], [ null, %60 ]
  %78 = getelementptr inbounds i32, i32* %77, i64 %62
  store i32 %55, i32* %78, align 4, !tbaa !2
  br i1 %63, label %82, label %79

79:                                               ; preds = %76
  %80 = bitcast i32* %77 to i8*
  %81 = inttoptr i64 %10 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 %61, i1 false) #7
  br label %82

82:                                               ; preds = %76, %79
  %83 = getelementptr inbounds i32, i32* %77, i64 1
  %84 = getelementptr inbounds i32, i32* %83, i64 %62
  %85 = icmp eq i64 %10, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = inttoptr i64 %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %87) #7
  br label %88

88:                                               ; preds = %86, %82
  %89 = ptrtoint i32* %77 to i64
  %90 = getelementptr inbounds i32, i32* %77, i64 %69
  br label %91

91:                                               ; preds = %88, %58
  %92 = phi i64 [ %89, %88 ], [ %10, %58 ]
  %93 = phi i32* [ %84, %88 ], [ %59, %58 ]
  %94 = phi i32* [ %90, %88 ], [ %8, %58 ]
  %95 = ptrtoint i32* %93 to i64
  %96 = add nuw nsw i32 %5, 1
  %97 = icmp eq i32 %96, 3000000
  br i1 %97, label %1, label %4

98:                                               ; preds = %29
  %99 = landingpad { i8*, i32 }
          cleanup
  br label %102

100:                                              ; preds = %71
  %101 = landingpad { i8*, i32 }
          cleanup
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi { i8*, i32 } [ %101, %100 ], [ %99, %98 ]
  %104 = phi i64 [ %52, %100 ], [ %6, %98 ]
  %105 = icmp eq i64 %10, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = inttoptr i64 %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %107) #7
  br label %108

108:                                              ; preds = %102, %106
  %109 = icmp eq i64 %104, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  %111 = inttoptr i64 %104 to i8*
  tail call void @_ZdlPv(i8* nonnull %111) #7
  br label %112

112:                                              ; preds = %108, %110
  resume { i8*, i32 } %103

113:                                              ; preds = %115
  %114 = load i32, i32* %2, align 4, !tbaa !2
  br label %134

115:                                              ; preds = %115, %1
  %116 = phi i64 [ 0, %1 ], [ %123, %115 ]
  %117 = getelementptr inbounds i32, i32* %2, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !2
  %119 = getelementptr inbounds i32, i32* %3, i64 %116
  %120 = load i32, i32* %119, align 4, !tbaa !2
  %121 = mul nsw i32 %120, %118
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %117, align 4, !tbaa !2
  %123 = add nuw nsw i64 %116, 1
  %124 = icmp eq i64 %123, 3000000
  br i1 %124, label %113, label %115

125:                                              ; preds = %134
  %126 = icmp eq i64 %92, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = inttoptr i64 %92 to i8*
  tail call void @_ZdlPv(i8* nonnull %128) #7
  br label %129

129:                                              ; preds = %125, %127
  %130 = icmp eq i64 %52, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = inttoptr i64 %52 to i8*
  tail call void @_ZdlPv(i8* nonnull %132) #7
  br label %133

133:                                              ; preds = %129, %131
  ret void

134:                                              ; preds = %134, %113
  %135 = phi i32 [ %114, %113 ], [ %139, %134 ]
  %136 = phi i64 [ 1, %113 ], [ %140, %134 ]
  %137 = getelementptr inbounds i32, i32* %2, i64 %136
  %138 = load i32, i32* %137, align 4, !tbaa !2
  %139 = add nsw i32 %135, %138
  store i32 %139, i32* %137, align 4, !tbaa !2
  %140 = add nuw nsw i64 %136, 1
  %141 = icmp eq i64 %140, 3000000
  br i1 %141, label %125, label %134
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  br label %4

1:                                                ; preds = %4
  %2 = sdiv i32 %12, 100
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %2)
  ret i32 0

4:                                                ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %12, %4 ]
  %6 = phi i32 [ 0, %0 ], [ %13, %4 ]
  %7 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #7
  tail call void @_Z15saxpy_prefixsumv()
  %8 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #7
  %9 = sub nsw i64 %8, %7
  %10 = sdiv i64 %9, 1000000
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 %5, %11
  %13 = add nuw nsw i32 %6, 1
  %14 = icmp eq i32 %13, 100
  br i1 %14, label %1, label %4
}

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #4

; Function Attrs: nobuiltin nofree
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #6

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-++20200412073436+50d7e5d5e7d-1~exp1~20200412054917.132 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
