; ModuleID = 'out.bc'
source_filename = "mega-stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [21 x i8] c"MEGA-STREAM! - v%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Small arrays:  %d elements\09\09(%.1lf KB)\0A\00", align 1
@Ni = dso_local local_unnamed_addr global i32 128, align 4
@.str.3 = private unnamed_addr constant [160 x i8] c"Medium arrays: %d x %d x %d x %d elements\09(%.1lf MB)\0A               %d x %d x %d x %d elements\09(%.1lf MB)\0A               %d x %d x %d x %d elements\09(%.1lf MB)\0A\00", align 1
@Nj = dso_local local_unnamed_addr global i32 16, align 4
@Nk = dso_local local_unnamed_addr global i32 16, align 4
@Nm = dso_local local_unnamed_addr global i32 64, align 4
@Nl = dso_local local_unnamed_addr global i32 16, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Large arrays:  %d x %d x %d x %d x %d elements\09(%.1lf MB)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Memory footprint: %.1lf MB\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Running %d times\0A\00", align 1
@ntimes = dso_local local_unnamed_addr global i32 100, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0) }, align 8
@1 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0) }, align 8
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"Sum total: %lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%12.1f %11.6f %11.6f %11.6f\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Total time: %11.6f\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"--outer\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--inner\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"--middle\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"--Nj\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--ntimes\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [29 x i8] c"ntimes must be 2 or greater\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"\09 Outer   is %12d elements\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\09 Middle are %12d elements\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"\09 Inner   is %12d elements\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Unrecognised argument \22%s\22\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c"Bandwidth MB/s  Min time    Max time    Avg time\00", align 1
@str.30 = private unnamed_addr constant [42 x i8] c"\09 --outer  n \09Set size of outer dimension\00", align 1
@str.31 = private unnamed_addr constant [44 x i8] c"\09 --inner  n \09Set size of middle dimensions\00", align 1
@str.32 = private unnamed_addr constant [42 x i8] c"\09 --middle n \09Set size of inner dimension\00", align 1
@str.33 = private unnamed_addr constant [42 x i8] c"\09 --Nj     n \09Set size of the j dimension\00", align 1
@str.34 = private unnamed_addr constant [39 x i8] c"\09 --ntimes n\09Run the benchmark n times\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  tail call void @parse_args(i32 %0, i8** %1)
  %13 = load i32, i32* @Ni, align 4, !tbaa !2
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = uitofp i64 %15 to double
  %17 = fmul double %16, 1.000000e-03
  %18 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %13, double %17)
  %19 = load i32, i32* @Ni, align 4, !tbaa !2
  %20 = load i32, i32* @Nj, align 4, !tbaa !2
  %21 = load i32, i32* @Nk, align 4, !tbaa !2
  %22 = load i32, i32* @Nm, align 4, !tbaa !2
  %23 = mul nsw i32 %20, %19
  %24 = mul i32 %22, %21
  %25 = mul i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = uitofp i64 %27 to double
  %29 = fmul double %28, 0x3EB0C6F7A0B5ED8D
  %30 = load i32, i32* @Nl, align 4, !tbaa !2
  %31 = mul i32 %22, %23
  %32 = mul i32 %31, %30
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 3
  %35 = uitofp i64 %34 to double
  %36 = fmul double %35, 0x3EB0C6F7A0B5ED8D
  %37 = mul i32 %24, %19
  %38 = mul i32 %37, %30
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  %41 = uitofp i64 %40 to double
  %42 = fmul double %41, 0x3EB0C6F7A0B5ED8D
  %43 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([160 x i8], [160 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, double %29, i32 %19, i32 %20, i32 %30, i32 %22, double %36, i32 %19, i32 %21, i32 %30, i32 %22, double %42)
  %44 = load i32, i32* @Ni, align 4, !tbaa !2
  %45 = load i32, i32* @Nj, align 4, !tbaa !2
  %46 = load i32, i32* @Nk, align 4, !tbaa !2
  %47 = load i32, i32* @Nl, align 4, !tbaa !2
  %48 = load i32, i32* @Nm, align 4, !tbaa !2
  %49 = mul nsw i32 %45, %44
  %50 = mul nsw i32 %49, %46
  %51 = mul nsw i32 %50, %47
  %52 = mul nsw i32 %51, %48
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = uitofp i64 %54 to double
  %56 = fmul double %55, 0x3EB0C6F7A0B5ED8D
  %57 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, double %56)
  %58 = load i32, i32* @Ni, align 4, !tbaa !2
  %59 = sitofp i32 %58 to double
  %60 = fmul double %59, 2.000000e+00
  %61 = load i32, i32* @Nj, align 4, !tbaa !2
  %62 = sitofp i32 %61 to double
  %63 = fmul double %60, %62
  %64 = load i32, i32* @Nk, align 4, !tbaa !2
  %65 = sitofp i32 %64 to double
  %66 = fmul double %63, %65
  %67 = load i32, i32* @Nl, align 4, !tbaa !2
  %68 = sitofp i32 %67 to double
  %69 = fmul double %66, %68
  %70 = load i32, i32* @Nm, align 4, !tbaa !2
  %71 = sitofp i32 %70 to double
  %72 = fmul double %69, %71
  %73 = mul nsw i32 %61, %58
  %74 = mul i32 %70, %64
  %75 = mul i32 %74, %73
  %76 = sitofp i32 %75 to double
  %77 = fadd double %72, %76
  %78 = mul i32 %70, %67
  %79 = mul i32 %78, %73
  %80 = sitofp i32 %79 to double
  %81 = fadd double %77, %80
  %82 = mul i32 %78, %58
  %83 = mul i32 %82, %64
  %84 = sitofp i32 %83 to double
  %85 = fadd double %81, %84
  %86 = fmul double %59, 3.000000e+00
  %87 = fadd double %86, %85
  %88 = mul i32 %78, %61
  %89 = mul i32 %88, %64
  %90 = sitofp i32 %89 to double
  %91 = fadd double %87, %90
  %92 = fmul double %91, 0x3EE0C6F7A0B5ED8D
  %93 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %92)
  %94 = load i32, i32* @Ni, align 4, !tbaa !2
  %95 = load i32, i32* @Nj, align 4, !tbaa !2
  %96 = load i32, i32* @Nk, align 4, !tbaa !2
  %97 = load i32, i32* @Nl, align 4, !tbaa !2
  %98 = load i32, i32* @Nm, align 4, !tbaa !2
  %99 = shl i32 %95, 1
  %100 = mul i32 %99, %96
  %101 = mul i32 %100, %97
  %102 = mul i32 %101, %98
  %103 = add i32 %102, 3
  %104 = mul i32 %103, %94
  %105 = sitofp i32 %104 to double
  %106 = sitofp i32 %94 to double
  %107 = fmul double %106, 2.000000e+00
  %108 = sitofp i32 %95 to double
  %109 = fmul double %107, %108
  %110 = sitofp i32 %96 to double
  %111 = fmul double %109, %110
  %112 = sitofp i32 %98 to double
  %113 = fmul double %111, %112
  %114 = fadd double %113, %105
  %115 = sitofp i32 %97 to double
  %116 = fmul double %109, %115
  %117 = fmul double %116, %112
  %118 = fadd double %117, %114
  %119 = fmul double %107, %110
  %120 = fmul double %119, %115
  %121 = fmul double %120, %112
  %122 = fadd double %121, %118
  %123 = fmul double %108, 2.000000e+00
  %124 = fmul double %123, %110
  %125 = fmul double %124, %115
  %126 = fmul double %125, %112
  %127 = fadd double %126, %122
  %128 = fmul double %127, 0x3EE0C6F7A0B5ED8D
  %129 = load i32, i32* @ntimes, align 4, !tbaa !2
  %130 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = tail call i32 @putchar(i32 10)
  %132 = load i32, i32* @ntimes, align 4, !tbaa !2
  %133 = zext i32 %132 to i64
  %134 = alloca double, i64 %133, align 16
  %135 = bitcast double** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %135) #10
  %136 = load i32, i32* @Ni, align 4, !tbaa !2
  %137 = sext i32 %136 to i64
  %138 = shl nsw i64 %137, 3
  %139 = load i32, i32* @Nj, align 4, !tbaa !2
  %140 = sext i32 %139 to i64
  %141 = mul i64 %138, %140
  %142 = load i32, i32* @Nk, align 4, !tbaa !2
  %143 = sext i32 %142 to i64
  %144 = mul i64 %141, %143
  %145 = load i32, i32* @Nl, align 4, !tbaa !2
  %146 = sext i32 %145 to i64
  %147 = mul i64 %144, %146
  %148 = load i32, i32* @Nm, align 4, !tbaa !2
  %149 = sext i32 %148 to i64
  %150 = mul i64 %147, %149
  %151 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %150) #10
  %152 = bitcast double** %3 to i8**
  store i8* %151, i8** %152, align 8, !tbaa !6
  %153 = bitcast double** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %153) #10
  %154 = load i32, i32* @Ni, align 4, !tbaa !2
  %155 = sext i32 %154 to i64
  %156 = shl nsw i64 %155, 3
  %157 = load i32, i32* @Nj, align 4, !tbaa !2
  %158 = sext i32 %157 to i64
  %159 = mul i64 %156, %158
  %160 = load i32, i32* @Nk, align 4, !tbaa !2
  %161 = sext i32 %160 to i64
  %162 = mul i64 %159, %161
  %163 = load i32, i32* @Nl, align 4, !tbaa !2
  %164 = sext i32 %163 to i64
  %165 = mul i64 %162, %164
  %166 = load i32, i32* @Nm, align 4, !tbaa !2
  %167 = sext i32 %166 to i64
  %168 = mul i64 %165, %167
  %169 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %168) #10
  %170 = bitcast double** %4 to i8**
  store i8* %169, i8** %170, align 8, !tbaa !6
  %171 = bitcast double** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %171) #10
  %172 = load i32, i32* @Ni, align 4, !tbaa !2
  %173 = sext i32 %172 to i64
  %174 = shl nsw i64 %173, 3
  %175 = load i32, i32* @Nj, align 4, !tbaa !2
  %176 = sext i32 %175 to i64
  %177 = mul i64 %174, %176
  %178 = load i32, i32* @Nk, align 4, !tbaa !2
  %179 = sext i32 %178 to i64
  %180 = mul i64 %177, %179
  %181 = load i32, i32* @Nm, align 4, !tbaa !2
  %182 = sext i32 %181 to i64
  %183 = mul i64 %180, %182
  %184 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %183) #10
  %185 = bitcast double** %5 to i8**
  store i8* %184, i8** %185, align 8, !tbaa !6
  %186 = bitcast double** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %186) #10
  %187 = load i32, i32* @Ni, align 4, !tbaa !2
  %188 = sext i32 %187 to i64
  %189 = shl nsw i64 %188, 3
  %190 = load i32, i32* @Nj, align 4, !tbaa !2
  %191 = sext i32 %190 to i64
  %192 = mul i64 %189, %191
  %193 = load i32, i32* @Nl, align 4, !tbaa !2
  %194 = sext i32 %193 to i64
  %195 = mul i64 %192, %194
  %196 = load i32, i32* @Nm, align 4, !tbaa !2
  %197 = sext i32 %196 to i64
  %198 = mul i64 %195, %197
  %199 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %198) #10
  %200 = bitcast double** %6 to i8**
  store i8* %199, i8** %200, align 8, !tbaa !6
  %201 = bitcast double** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %201) #10
  %202 = load i32, i32* @Ni, align 4, !tbaa !2
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %203, 3
  %205 = load i32, i32* @Nk, align 4, !tbaa !2
  %206 = sext i32 %205 to i64
  %207 = mul i64 %204, %206
  %208 = load i32, i32* @Nl, align 4, !tbaa !2
  %209 = sext i32 %208 to i64
  %210 = mul i64 %207, %209
  %211 = load i32, i32* @Nm, align 4, !tbaa !2
  %212 = sext i32 %211 to i64
  %213 = mul i64 %210, %212
  %214 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %213) #10
  %215 = bitcast double** %7 to i8**
  store i8* %214, i8** %215, align 8, !tbaa !6
  %216 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %216) #10
  %217 = load i32, i32* @Ni, align 4, !tbaa !2
  %218 = sext i32 %217 to i64
  %219 = shl nsw i64 %218, 3
  %220 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %219) #10
  %221 = bitcast double** %8 to i8**
  store i8* %220, i8** %221, align 8, !tbaa !6
  %222 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %222) #10
  %223 = load i32, i32* @Ni, align 4, !tbaa !2
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 3
  %226 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %225) #10
  %227 = bitcast double** %9 to i8**
  store i8* %226, i8** %227, align 8, !tbaa !6
  %228 = bitcast double** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %228) #10
  %229 = load i32, i32* @Ni, align 4, !tbaa !2
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 3
  %232 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %231) #10
  %233 = bitcast double** %10 to i8**
  store i8* %232, i8** %233, align 8, !tbaa !6
  %234 = bitcast double** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %234) #10
  %235 = load i32, i32* @Nj, align 4, !tbaa !2
  %236 = sext i32 %235 to i64
  %237 = shl nsw i64 %236, 3
  %238 = load i32, i32* @Nk, align 4, !tbaa !2
  %239 = sext i32 %238 to i64
  %240 = mul i64 %237, %239
  %241 = load i32, i32* @Nl, align 4, !tbaa !2
  %242 = sext i32 %241 to i64
  %243 = mul i64 %240, %242
  %244 = load i32, i32* @Nm, align 4, !tbaa !2
  %245 = sext i32 %244 to i64
  %246 = mul i64 %243, %245
  %247 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %246) #10
  %248 = bitcast double** %11 to i8**
  store i8* %247, i8** %248, align 8, !tbaa !6
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** nonnull %3, double** nonnull %4, double** nonnull %5, double** nonnull %6, double** nonnull %7, double** nonnull %8, double** nonnull %9, double** nonnull %10, double** nonnull %11) #10
  %249 = call double @omp_get_wtime() #10
  %250 = load i32, i32* @ntimes, align 4, !tbaa !2
  %251 = icmp sgt i32 %250, 0
  %252 = call double @omp_get_wtime() #10
  br i1 %251, label %253, label %256

253:                                              ; preds = %2
  %254 = bitcast double** %3 to i64*
  %255 = bitcast double** %4 to i64*
  br label %274

256:                                              ; preds = %274, %2
  %257 = phi double [ %252, %2 ], [ %300, %274 ]
  %258 = load i32, i32* @Nj, align 4, !tbaa !2
  %259 = load i32, i32* @Nk, align 4, !tbaa !2
  %260 = mul nsw i32 %259, %258
  %261 = load i32, i32* @Nl, align 4, !tbaa !2
  %262 = mul nsw i32 %260, %261
  %263 = load i32, i32* @Nm, align 4, !tbaa !2
  %264 = mul nsw i32 %262, %263
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %316

266:                                              ; preds = %256
  %267 = load double*, double** %11, align 8, !tbaa !6
  %268 = zext i32 %264 to i64
  %269 = add nsw i64 %268, -1
  %270 = and i64 %268, 7
  %271 = icmp ult i64 %269, 7
  br i1 %271, label %301, label %272

272:                                              ; preds = %266
  %273 = sub nsw i64 %268, %270
  br label %328

274:                                              ; preds = %253, %274
  %275 = phi i64 [ 0, %253 ], [ %296, %274 ]
  %276 = phi double [ %252, %253 ], [ %300, %274 ]
  %277 = load i32, i32* @Ni, align 4, !tbaa !2
  %278 = load i32, i32* @Nj, align 4, !tbaa !2
  %279 = load i32, i32* @Nk, align 4, !tbaa !2
  %280 = load i32, i32* @Nl, align 4, !tbaa !2
  %281 = load i32, i32* @Nm, align 4, !tbaa !2
  %282 = load double*, double** %4, align 8, !tbaa !6
  %283 = load double*, double** %3, align 8, !tbaa !6
  %284 = load double*, double** %5, align 8, !tbaa !6
  %285 = load double*, double** %6, align 8, !tbaa !6
  %286 = load double*, double** %7, align 8, !tbaa !6
  %287 = load double*, double** %8, align 8, !tbaa !6
  %288 = load double*, double** %9, align 8, !tbaa !6
  %289 = load double*, double** %10, align 8, !tbaa !6
  %290 = load double*, double** %11, align 8, !tbaa !6
  call void @kernel(i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, double* %282, double* %283, double* %284, double* %285, double* %286, double* %287, double* %288, double* %289, double* %290)
  %291 = load i64, i64* %254, align 8, !tbaa !6
  %292 = load i64, i64* %255, align 8, !tbaa !6
  store i64 %292, i64* %254, align 8, !tbaa !6
  store i64 %291, i64* %255, align 8, !tbaa !6
  %293 = call double @omp_get_wtime() #10
  %294 = fsub double %293, %276
  %295 = getelementptr inbounds double, double* %134, i64 %275
  store double %294, double* %295, align 8, !tbaa !8
  %296 = add nuw nsw i64 %275, 1
  %297 = load i32, i32* @ntimes, align 4, !tbaa !2
  %298 = sext i32 %297 to i64
  %299 = icmp slt i64 %296, %298
  %300 = call double @omp_get_wtime() #10
  br i1 %299, label %274, label %256

301:                                              ; preds = %328, %266
  %302 = phi double [ undef, %266 ], [ %362, %328 ]
  %303 = phi i64 [ 0, %266 ], [ %363, %328 ]
  %304 = phi double [ 0.000000e+00, %266 ], [ %362, %328 ]
  %305 = icmp eq i64 %270, 0
  br i1 %305, label %316, label %306

306:                                              ; preds = %301, %306
  %307 = phi i64 [ %313, %306 ], [ %303, %301 ]
  %308 = phi double [ %312, %306 ], [ %304, %301 ]
  %309 = phi i64 [ %314, %306 ], [ %270, %301 ]
  %310 = getelementptr inbounds double, double* %267, i64 %307
  %311 = load double, double* %310, align 8, !tbaa !8
  %312 = fadd double %308, %311
  %313 = add nuw nsw i64 %307, 1
  %314 = add i64 %309, -1
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %306, !llvm.loop !10

316:                                              ; preds = %301, %306, %256
  %317 = phi double [ 0.000000e+00, %256 ], [ %302, %301 ], [ %312, %306 ]
  %318 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), double %317)
  %319 = load i32, i32* @ntimes, align 4, !tbaa !2
  %320 = icmp sgt i32 %319, 1
  br i1 %320, label %321, label %383

321:                                              ; preds = %316
  %322 = zext i32 %319 to i64
  %323 = add nsw i64 %322, -1
  %324 = and i64 %323, 1
  %325 = icmp eq i32 %319, 2
  br i1 %325, label %366, label %326

326:                                              ; preds = %321
  %327 = sub nsw i64 %323, %324
  br label %405

328:                                              ; preds = %328, %272
  %329 = phi i64 [ 0, %272 ], [ %363, %328 ]
  %330 = phi double [ 0.000000e+00, %272 ], [ %362, %328 ]
  %331 = phi i64 [ %273, %272 ], [ %364, %328 ]
  %332 = getelementptr inbounds double, double* %267, i64 %329
  %333 = load double, double* %332, align 8, !tbaa !8
  %334 = fadd double %330, %333
  %335 = or i64 %329, 1
  %336 = getelementptr inbounds double, double* %267, i64 %335
  %337 = load double, double* %336, align 8, !tbaa !8
  %338 = fadd double %334, %337
  %339 = or i64 %329, 2
  %340 = getelementptr inbounds double, double* %267, i64 %339
  %341 = load double, double* %340, align 8, !tbaa !8
  %342 = fadd double %338, %341
  %343 = or i64 %329, 3
  %344 = getelementptr inbounds double, double* %267, i64 %343
  %345 = load double, double* %344, align 8, !tbaa !8
  %346 = fadd double %342, %345
  %347 = or i64 %329, 4
  %348 = getelementptr inbounds double, double* %267, i64 %347
  %349 = load double, double* %348, align 8, !tbaa !8
  %350 = fadd double %346, %349
  %351 = or i64 %329, 5
  %352 = getelementptr inbounds double, double* %267, i64 %351
  %353 = load double, double* %352, align 8, !tbaa !8
  %354 = fadd double %350, %353
  %355 = or i64 %329, 6
  %356 = getelementptr inbounds double, double* %267, i64 %355
  %357 = load double, double* %356, align 8, !tbaa !8
  %358 = fadd double %354, %357
  %359 = or i64 %329, 7
  %360 = getelementptr inbounds double, double* %267, i64 %359
  %361 = load double, double* %360, align 8, !tbaa !8
  %362 = fadd double %358, %361
  %363 = add nuw nsw i64 %329, 8
  %364 = add i64 %331, -8
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %301, label %328

366:                                              ; preds = %405, %321
  %367 = phi double [ undef, %321 ], [ %422, %405 ]
  %368 = phi double [ undef, %321 ], [ %424, %405 ]
  %369 = phi double [ undef, %321 ], [ %425, %405 ]
  %370 = phi i64 [ 1, %321 ], [ %426, %405 ]
  %371 = phi double [ 0.000000e+00, %321 ], [ %425, %405 ]
  %372 = phi double [ 0.000000e+00, %321 ], [ %424, %405 ]
  %373 = phi double [ 0x7FEFFFFFFFFFFFFF, %321 ], [ %422, %405 ]
  %374 = icmp eq i64 %324, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %366
  %376 = getelementptr inbounds double, double* %134, i64 %370
  %377 = load double, double* %376, align 8, !tbaa !8
  %378 = fadd double %371, %377
  %379 = fcmp ogt double %372, %377
  %380 = select i1 %379, double %372, double %377
  %381 = fcmp olt double %373, %377
  %382 = select i1 %381, double %373, double %377
  br label %383

383:                                              ; preds = %375, %366, %316
  %384 = phi double [ 0x7FEFFFFFFFFFFFFF, %316 ], [ %367, %366 ], [ %382, %375 ]
  %385 = phi double [ 0.000000e+00, %316 ], [ %368, %366 ], [ %380, %375 ]
  %386 = phi double [ 0.000000e+00, %316 ], [ %369, %366 ], [ %378, %375 ]
  %387 = add nsw i32 %319, -1
  %388 = sitofp i32 %387 to double
  %389 = fdiv double %386, %388
  %390 = call i32 @putchar(i32 10)
  %391 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str, i64 0, i64 0))
  %392 = fdiv double %128, %384
  %393 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), double %392, double %384, double %385, double %389)
  %394 = fsub double %257, %249
  %395 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), double %394)
  %396 = load i8*, i8** %152, align 8, !tbaa !6
  call void @free(i8* %396) #10
  %397 = load i8*, i8** %170, align 8, !tbaa !6
  call void @free(i8* %397) #10
  %398 = load i8*, i8** %185, align 8, !tbaa !6
  call void @free(i8* %398) #10
  %399 = load i8*, i8** %200, align 8, !tbaa !6
  call void @free(i8* %399) #10
  %400 = load i8*, i8** %215, align 8, !tbaa !6
  call void @free(i8* %400) #10
  %401 = load i8*, i8** %221, align 8, !tbaa !6
  call void @free(i8* %401) #10
  %402 = load i8*, i8** %227, align 8, !tbaa !6
  call void @free(i8* %402) #10
  %403 = load i8*, i8** %233, align 8, !tbaa !6
  call void @free(i8* %403) #10
  %404 = load i8*, i8** %248, align 8, !tbaa !6
  call void @free(i8* %404) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %234) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %228) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %222) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %216) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %201) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %186) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %171) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %153) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %135) #10
  ret i32 0

405:                                              ; preds = %405, %326
  %406 = phi i64 [ 1, %326 ], [ %426, %405 ]
  %407 = phi double [ 0.000000e+00, %326 ], [ %425, %405 ]
  %408 = phi double [ 0.000000e+00, %326 ], [ %424, %405 ]
  %409 = phi double [ 0x7FEFFFFFFFFFFFFF, %326 ], [ %422, %405 ]
  %410 = phi i64 [ %327, %326 ], [ %427, %405 ]
  %411 = getelementptr inbounds double, double* %134, i64 %406
  %412 = load double, double* %411, align 8, !tbaa !8
  %413 = fcmp olt double %409, %412
  %414 = select i1 %413, double %409, double %412
  %415 = fcmp ogt double %408, %412
  %416 = select i1 %415, double %408, double %412
  %417 = fadd double %407, %412
  %418 = add nuw nsw i64 %406, 1
  %419 = getelementptr inbounds double, double* %134, i64 %418
  %420 = load double, double* %419, align 8, !tbaa !8
  %421 = fcmp olt double %414, %420
  %422 = select i1 %421, double %414, double %420
  %423 = fcmp ogt double %416, %420
  %424 = select i1 %423, double %416, double %420
  %425 = fadd double %417, %420
  %426 = add nuw nsw i64 %406, 2
  %427 = add i64 %410, -2
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %366, label %405
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @parse_args(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %81, %2
  ret void

5:                                                ; preds = %2, %81
  %6 = phi i32 [ %83, %81 ], [ 1, %2 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8*, i8** %1, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !6
  %10 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = add nsw i32 %6, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14
  %16 = load i8*, i8** %15, align 8, !tbaa !6
  %17 = tail call i64 @strtol(i8* nocapture nonnull %16, i8** null, i32 10) #10
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @Nm, align 4, !tbaa !2
  br label %81

19:                                               ; preds = %5
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = add nsw i32 %6, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24
  %26 = load i8*, i8** %25, align 8, !tbaa !6
  %27 = tail call i64 @strtol(i8* nocapture nonnull %26, i8** null, i32 10) #10
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @Ni, align 4, !tbaa !2
  br label %81

29:                                               ; preds = %19
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = add nsw i32 %6, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8, !tbaa !6
  %37 = tail call i64 @strtol(i8* nocapture nonnull %36, i8** null, i32 10) #10
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @Nj, align 4, !tbaa !2
  store i32 %38, i32* @Nk, align 4, !tbaa !2
  store i32 %38, i32* @Nl, align 4, !tbaa !2
  br label %81

39:                                               ; preds = %29
  %40 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = add nsw i32 %6, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44
  %46 = load i8*, i8** %45, align 8, !tbaa !6
  %47 = tail call i64 @strtol(i8* nocapture nonnull %46, i8** null, i32 10) #10
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @Nj, align 4, !tbaa !2
  br label %81

49:                                               ; preds = %39
  %50 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0)) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = add nsw i32 %6, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54
  %56 = load i8*, i8** %55, align 8, !tbaa !6
  %57 = tail call i64 @strtol(i8* nocapture nonnull %56, i8** null, i32 10) #10
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @ntimes, align 4, !tbaa !2
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %81

60:                                               ; preds = %52
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %61) #12
  tail call void @exit(i32 1) #13
  unreachable

63:                                               ; preds = %49
  %64 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i8*, i8** %1, align 8, !tbaa !6
  %68 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* %67)
  %69 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.30, i64 0, i64 0))
  %70 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.31, i64 0, i64 0))
  %71 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.32, i64 0, i64 0))
  %72 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.33, i64 0, i64 0))
  %73 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.34, i64 0, i64 0))
  %74 = tail call i32 @putchar(i32 10)
  %75 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 64)
  %76 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 16)
  %77 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 128)
  tail call void @exit(i32 0) #13
  unreachable

78:                                               ; preds = %63
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* %9) #12
  tail call void @exit(i32 1) #13
  unreachable

81:                                               ; preds = %12, %32, %52, %42, %22
  %82 = phi i32 [ %13, %12 ], [ %23, %22 ], [ %33, %32 ], [ %43, %42 ], [ %53, %52 ]
  %83 = add nsw i32 %82, 1
  %84 = icmp slt i32 %83, %0
  br i1 %84, label %5, label %4
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @aligned_alloc(i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, double** nocapture readonly dereferenceable(8) %2, double** nocapture readonly dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6, double** nocapture readonly dereferenceable(8) %7, double** nocapture readonly dereferenceable(8) %8, double** nocapture readonly dereferenceable(8) %9, double** nocapture readonly dereferenceable(8) %10) #4 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = load i32, i32* @Nm, align 4, !tbaa !2
  %37 = add nsw i32 %36, -1
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %11
  %40 = load i32, i32* %0, align 4, !tbaa !2
  br label %241

41:                                               ; preds = %11
  %42 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #10
  store i32 0, i32* %12, align 4, !tbaa !2
  %43 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #10
  store i32 %37, i32* %13, align 4, !tbaa !2
  %44 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44) #10
  store i32 1, i32* %14, align 4, !tbaa !2
  %45 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45) #10
  store i32 0, i32* %15, align 4, !tbaa !2
  %46 = load i32, i32* %0, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %46, i32 34, i32* nonnull %15, i32* nonnull %12, i32* nonnull %13, i32* nonnull %14, i32 1, i32 1) #10
  %47 = load i32, i32* %13, align 4, !tbaa !2
  %48 = icmp slt i32 %47, %36
  %49 = select i1 %48, i32 %47, i32 %37
  store i32 %49, i32* %13, align 4, !tbaa !2
  %50 = load i32, i32* %12, align 4, !tbaa !2
  %51 = icmp sgt i32 %50, %49
  br i1 %51, label %240, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @Nl, align 4
  %54 = icmp sgt i32 %53, 0
  %55 = load i32, i32* @Nk, align 4
  %56 = icmp slt i32 %55, 1
  %57 = load i32, i32* @Nj, align 4
  %58 = icmp slt i32 %57, 1
  %59 = load i32, i32* @Ni, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = sext i32 %59 to i64
  %62 = sext i32 %57 to i64
  %63 = zext i32 %55 to i64
  %64 = zext i32 %57 to i64
  %65 = zext i32 %59 to i64
  %66 = mul nsw i64 %62, %61
  %67 = mul i32 %50, %53
  %68 = mul i32 %67, %55
  %69 = mul i32 %53, %55
  %70 = mul nsw i64 %62, %61
  %71 = and i64 %65, 4294967292
  %72 = add nsw i64 %71, -4
  %73 = lshr exact i64 %72, 2
  %74 = add nuw nsw i64 %73, 1
  %75 = or i1 %56, %58
  %76 = icmp ult i32 %59, 4
  %77 = and i64 %65, 4294967292
  %78 = and i64 %74, 3
  %79 = icmp ult i64 %72, 12
  %80 = sub nsw i64 %74, %78
  %81 = icmp eq i64 %78, 0
  %82 = icmp eq i64 %77, %65
  %83 = and i64 %65, 3
  %84 = icmp eq i64 %83, 0
  br label %85

85:                                               ; preds = %233, %52
  %86 = phi i32 [ %236, %233 ], [ 0, %52 ]
  %87 = phi i32 [ %234, %233 ], [ %50, %52 ]
  %88 = mul i32 %69, %86
  %89 = add i32 %68, %88
  br i1 %54, label %90, label %233

90:                                               ; preds = %85
  %91 = mul nsw i32 %53, %87
  br label %92

92:                                               ; preds = %90, %237
  %93 = phi i32 [ %238, %237 ], [ 0, %90 ]
  %94 = mul i32 %55, %93
  %95 = add i32 %89, %94
  %96 = sext i32 %95 to i64
  %97 = mul i64 %66, %96
  %98 = add i64 %97, %65
  br i1 %75, label %237, label %99

99:                                               ; preds = %92
  %100 = add nsw i32 %91, %93
  %101 = mul nsw i32 %55, %100
  %102 = sext i32 %101 to i64
  br label %103

103:                                              ; preds = %113, %99
  %104 = phi i64 [ 0, %99 ], [ %114, %113 ]
  %105 = mul i64 %70, %104
  %106 = add i64 %97, %105
  %107 = add i64 %98, %105
  %108 = load double*, double** %2, align 8
  %109 = load double*, double** %3, align 8
  br i1 %60, label %110, label %113

110:                                              ; preds = %103
  %111 = add nsw i64 %104, %102
  %112 = mul nsw i64 %111, %62
  br label %116

113:                                              ; preds = %211, %103
  %114 = add nuw nsw i64 %104, 1
  %115 = icmp eq i64 %114, %63
  br i1 %115, label %237, label %103

116:                                              ; preds = %211, %110
  %117 = phi i64 [ 0, %110 ], [ %212, %211 ]
  %118 = mul i64 %117, %61
  %119 = add i64 %106, %118
  %120 = add i64 %107, %118
  %121 = add nsw i64 %112, %117
  %122 = mul nsw i64 %121, %61
  br i1 %76, label %123, label %139

123:                                              ; preds = %210, %139, %116
  %124 = phi i64 [ 0, %139 ], [ 0, %116 ], [ %77, %210 ]
  %125 = xor i64 %124, -1
  %126 = add nsw i64 %125, %65
  br i1 %84, label %136, label %127

127:                                              ; preds = %123, %127
  %128 = phi i64 [ %133, %127 ], [ %124, %123 ]
  %129 = phi i64 [ %134, %127 ], [ %83, %123 ]
  %130 = add nsw i64 %122, %128
  %131 = getelementptr inbounds double, double* %108, i64 %130
  store double 1.000000e-02, double* %131, align 8, !tbaa !8
  %132 = getelementptr inbounds double, double* %109, i64 %130
  store double 0.000000e+00, double* %132, align 8, !tbaa !8
  %133 = add nuw nsw i64 %128, 1
  %134 = add i64 %129, -1
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %127, !llvm.loop !12

136:                                              ; preds = %127, %123
  %137 = phi i64 [ %124, %123 ], [ %133, %127 ]
  %138 = icmp ult i64 %126, 3
  br i1 %138, label %211, label %214

139:                                              ; preds = %116
  %140 = getelementptr double, double* %109, i64 %120
  %141 = getelementptr double, double* %109, i64 %119
  %142 = getelementptr double, double* %108, i64 %120
  %143 = getelementptr double, double* %108, i64 %119
  %144 = icmp ult double* %143, %140
  %145 = icmp ult double* %141, %142
  %146 = and i1 %144, %145
  br i1 %146, label %123, label %147

147:                                              ; preds = %139
  br i1 %79, label %193, label %148

148:                                              ; preds = %147, %148
  %149 = phi i64 [ %190, %148 ], [ 0, %147 ]
  %150 = phi i64 [ %191, %148 ], [ %80, %147 ]
  %151 = add nsw i64 %122, %149
  %152 = getelementptr inbounds double, double* %108, i64 %151
  %153 = bitcast double* %152 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %153, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %154 = getelementptr inbounds double, double* %152, i64 2
  %155 = bitcast double* %154 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %155, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %156 = getelementptr inbounds double, double* %109, i64 %151
  %157 = bitcast double* %156 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %157, align 8, !tbaa !8, !alias.scope !16
  %158 = getelementptr inbounds double, double* %156, i64 2
  %159 = bitcast double* %158 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %159, align 8, !tbaa !8, !alias.scope !16
  %160 = or i64 %149, 4
  %161 = add nsw i64 %122, %160
  %162 = getelementptr inbounds double, double* %108, i64 %161
  %163 = bitcast double* %162 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %163, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %164 = getelementptr inbounds double, double* %162, i64 2
  %165 = bitcast double* %164 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %165, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %166 = getelementptr inbounds double, double* %109, i64 %161
  %167 = bitcast double* %166 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %167, align 8, !tbaa !8, !alias.scope !16
  %168 = getelementptr inbounds double, double* %166, i64 2
  %169 = bitcast double* %168 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %169, align 8, !tbaa !8, !alias.scope !16
  %170 = or i64 %149, 8
  %171 = add nsw i64 %122, %170
  %172 = getelementptr inbounds double, double* %108, i64 %171
  %173 = bitcast double* %172 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %173, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %174 = getelementptr inbounds double, double* %172, i64 2
  %175 = bitcast double* %174 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %175, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %176 = getelementptr inbounds double, double* %109, i64 %171
  %177 = bitcast double* %176 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %177, align 8, !tbaa !8, !alias.scope !16
  %178 = getelementptr inbounds double, double* %176, i64 2
  %179 = bitcast double* %178 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %179, align 8, !tbaa !8, !alias.scope !16
  %180 = or i64 %149, 12
  %181 = add nsw i64 %122, %180
  %182 = getelementptr inbounds double, double* %108, i64 %181
  %183 = bitcast double* %182 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %183, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %184 = getelementptr inbounds double, double* %182, i64 2
  %185 = bitcast double* %184 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %185, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %186 = getelementptr inbounds double, double* %109, i64 %181
  %187 = bitcast double* %186 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %187, align 8, !tbaa !8, !alias.scope !16
  %188 = getelementptr inbounds double, double* %186, i64 2
  %189 = bitcast double* %188 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %189, align 8, !tbaa !8, !alias.scope !16
  %190 = add i64 %149, 16
  %191 = add i64 %150, -4
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %148, !llvm.loop !18

193:                                              ; preds = %148, %147
  %194 = phi i64 [ 0, %147 ], [ %190, %148 ]
  br i1 %81, label %210, label %195

195:                                              ; preds = %193, %195
  %196 = phi i64 [ %207, %195 ], [ %194, %193 ]
  %197 = phi i64 [ %208, %195 ], [ %78, %193 ]
  %198 = add nsw i64 %122, %196
  %199 = getelementptr inbounds double, double* %108, i64 %198
  %200 = bitcast double* %199 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %200, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %201 = getelementptr inbounds double, double* %199, i64 2
  %202 = bitcast double* %201 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %202, align 8, !tbaa !8, !alias.scope !13, !noalias !16
  %203 = getelementptr inbounds double, double* %109, i64 %198
  %204 = bitcast double* %203 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %204, align 8, !tbaa !8, !alias.scope !16
  %205 = getelementptr inbounds double, double* %203, i64 2
  %206 = bitcast double* %205 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %206, align 8, !tbaa !8, !alias.scope !16
  %207 = add i64 %196, 4
  %208 = add i64 %197, -1
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %195, !llvm.loop !20

210:                                              ; preds = %195, %193
  br i1 %82, label %211, label %123

211:                                              ; preds = %136, %214, %210
  %212 = add nuw nsw i64 %117, 1
  %213 = icmp eq i64 %212, %64
  br i1 %213, label %113, label %116

214:                                              ; preds = %136, %214
  %215 = phi i64 [ %231, %214 ], [ %137, %136 ]
  %216 = add nsw i64 %122, %215
  %217 = getelementptr inbounds double, double* %108, i64 %216
  store double 1.000000e-02, double* %217, align 8, !tbaa !8
  %218 = getelementptr inbounds double, double* %109, i64 %216
  store double 0.000000e+00, double* %218, align 8, !tbaa !8
  %219 = add nuw nsw i64 %215, 1
  %220 = add nsw i64 %122, %219
  %221 = getelementptr inbounds double, double* %108, i64 %220
  store double 1.000000e-02, double* %221, align 8, !tbaa !8
  %222 = getelementptr inbounds double, double* %109, i64 %220
  store double 0.000000e+00, double* %222, align 8, !tbaa !8
  %223 = add nuw nsw i64 %215, 2
  %224 = add nsw i64 %122, %223
  %225 = getelementptr inbounds double, double* %108, i64 %224
  store double 1.000000e-02, double* %225, align 8, !tbaa !8
  %226 = getelementptr inbounds double, double* %109, i64 %224
  store double 0.000000e+00, double* %226, align 8, !tbaa !8
  %227 = add nuw nsw i64 %215, 3
  %228 = add nsw i64 %122, %227
  %229 = getelementptr inbounds double, double* %108, i64 %228
  store double 1.000000e-02, double* %229, align 8, !tbaa !8
  %230 = getelementptr inbounds double, double* %109, i64 %228
  store double 0.000000e+00, double* %230, align 8, !tbaa !8
  %231 = add nuw nsw i64 %215, 4
  %232 = icmp eq i64 %231, %65
  br i1 %232, label %211, label %214, !llvm.loop !21

233:                                              ; preds = %237, %85
  %234 = add nsw i32 %87, 1
  %235 = icmp slt i32 %87, %49
  %236 = add i32 %86, 1
  br i1 %235, label %85, label %240

237:                                              ; preds = %113, %92
  %238 = add nuw nsw i32 %93, 1
  %239 = icmp slt i32 %238, %53
  br i1 %239, label %92, label %233

240:                                              ; preds = %233, %41
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %46) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10
  br label %241

241:                                              ; preds = %39, %240
  %242 = phi i32 [ %40, %39 ], [ %46, %240 ]
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #10
  %243 = load i32, i32* @Nm, align 4, !tbaa !2
  %244 = add nsw i32 %243, -1
  %245 = icmp sgt i32 %243, 0
  br i1 %245, label %246, label %359

246:                                              ; preds = %241
  %247 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %247) #10
  store i32 0, i32* %16, align 4, !tbaa !2
  %248 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %248) #10
  store i32 %244, i32* %17, align 4, !tbaa !2
  %249 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %249) #10
  store i32 1, i32* %18, align 4, !tbaa !2
  %250 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %250) #10
  store i32 0, i32* %19, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %19, i32* nonnull %16, i32* nonnull %17, i32* nonnull %18, i32 1, i32 1) #10
  %251 = load i32, i32* %17, align 4, !tbaa !2
  %252 = icmp slt i32 %251, %243
  %253 = select i1 %252, i32 %251, i32 %244
  store i32 %253, i32* %17, align 4, !tbaa !2
  %254 = load i32, i32* %16, align 4, !tbaa !2
  %255 = icmp sgt i32 %254, %253
  br i1 %255, label %358, label %256

256:                                              ; preds = %246
  %257 = load i32, i32* @Nk, align 4
  %258 = icmp slt i32 %257, 1
  %259 = load i32, i32* @Nj, align 4
  %260 = icmp slt i32 %259, 1
  %261 = load i32, i32* @Ni, align 4
  %262 = icmp sgt i32 %261, 0
  %263 = sext i32 %261 to i64
  %264 = sext i32 %259 to i64
  %265 = sext i32 %254 to i64
  %266 = sext i32 %257 to i64
  %267 = sext i32 %253 to i64
  %268 = zext i32 %257 to i64
  %269 = zext i32 %259 to i64
  %270 = zext i32 %261 to i64
  %271 = and i64 %270, 4294967292
  %272 = add nsw i64 %271, -4
  %273 = lshr exact i64 %272, 2
  %274 = add nuw nsw i64 %273, 1
  %275 = or i1 %258, %260
  %276 = icmp ult i32 %261, 4
  %277 = and i64 %270, 4294967292
  %278 = and i64 %274, 3
  %279 = icmp ult i64 %272, 12
  %280 = sub nsw i64 %274, %278
  %281 = icmp eq i64 %278, 0
  %282 = icmp eq i64 %277, %270
  br label %283

283:                                              ; preds = %355, %256
  %284 = phi i64 [ %356, %355 ], [ %265, %256 ]
  br i1 %275, label %355, label %285

285:                                              ; preds = %283
  %286 = mul nsw i64 %284, %266
  br label %287

287:                                              ; preds = %293, %285
  %288 = phi i64 [ 0, %285 ], [ %294, %293 ]
  %289 = load double*, double** %4, align 8
  br i1 %262, label %290, label %293

290:                                              ; preds = %287
  %291 = add nsw i64 %286, %288
  %292 = mul nsw i64 %291, %264
  br label %296

293:                                              ; preds = %346, %287
  %294 = add nuw nsw i64 %288, 1
  %295 = icmp eq i64 %294, %268
  br i1 %295, label %355, label %287

296:                                              ; preds = %346, %290
  %297 = phi i64 [ 0, %290 ], [ %347, %346 ]
  %298 = add nsw i64 %292, %297
  %299 = mul nsw i64 %298, %263
  br i1 %276, label %300, label %302

300:                                              ; preds = %345, %296
  %301 = phi i64 [ 0, %296 ], [ %277, %345 ]
  br label %349

302:                                              ; preds = %296
  br i1 %279, label %332, label %303

303:                                              ; preds = %302, %303
  %304 = phi i64 [ %329, %303 ], [ 0, %302 ]
  %305 = phi i64 [ %330, %303 ], [ %280, %302 ]
  %306 = add nsw i64 %299, %304
  %307 = getelementptr inbounds double, double* %289, i64 %306
  %308 = bitcast double* %307 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %308, align 8, !tbaa !8
  %309 = getelementptr inbounds double, double* %307, i64 2
  %310 = bitcast double* %309 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %310, align 8, !tbaa !8
  %311 = or i64 %304, 4
  %312 = add nsw i64 %299, %311
  %313 = getelementptr inbounds double, double* %289, i64 %312
  %314 = bitcast double* %313 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %314, align 8, !tbaa !8
  %315 = getelementptr inbounds double, double* %313, i64 2
  %316 = bitcast double* %315 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %316, align 8, !tbaa !8
  %317 = or i64 %304, 8
  %318 = add nsw i64 %299, %317
  %319 = getelementptr inbounds double, double* %289, i64 %318
  %320 = bitcast double* %319 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %320, align 8, !tbaa !8
  %321 = getelementptr inbounds double, double* %319, i64 2
  %322 = bitcast double* %321 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %322, align 8, !tbaa !8
  %323 = or i64 %304, 12
  %324 = add nsw i64 %299, %323
  %325 = getelementptr inbounds double, double* %289, i64 %324
  %326 = bitcast double* %325 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %326, align 8, !tbaa !8
  %327 = getelementptr inbounds double, double* %325, i64 2
  %328 = bitcast double* %327 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %328, align 8, !tbaa !8
  %329 = add i64 %304, 16
  %330 = add i64 %305, -4
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %303, !llvm.loop !22

332:                                              ; preds = %303, %302
  %333 = phi i64 [ 0, %302 ], [ %329, %303 ]
  br i1 %281, label %345, label %334

334:                                              ; preds = %332, %334
  %335 = phi i64 [ %342, %334 ], [ %333, %332 ]
  %336 = phi i64 [ %343, %334 ], [ %278, %332 ]
  %337 = add nsw i64 %299, %335
  %338 = getelementptr inbounds double, double* %289, i64 %337
  %339 = bitcast double* %338 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %339, align 8, !tbaa !8
  %340 = getelementptr inbounds double, double* %338, i64 2
  %341 = bitcast double* %340 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %341, align 8, !tbaa !8
  %342 = add i64 %335, 4
  %343 = add i64 %336, -1
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %334, !llvm.loop !23

345:                                              ; preds = %334, %332
  br i1 %282, label %346, label %300

346:                                              ; preds = %349, %345
  %347 = add nuw nsw i64 %297, 1
  %348 = icmp eq i64 %347, %269
  br i1 %348, label %293, label %296

349:                                              ; preds = %300, %349
  %350 = phi i64 [ %353, %349 ], [ %301, %300 ]
  %351 = add nsw i64 %299, %350
  %352 = getelementptr inbounds double, double* %289, i64 %351
  store double 2.000000e-02, double* %352, align 8, !tbaa !8, !nontemporal !24
  %353 = add nuw nsw i64 %350, 1
  %354 = icmp eq i64 %353, %270
  br i1 %354, label %346, label %349, !llvm.loop !25

355:                                              ; preds = %293, %283
  %356 = add nsw i64 %284, 1
  %357 = icmp slt i64 %284, %267
  br i1 %357, label %283, label %358

358:                                              ; preds = %355, %246
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %250) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %249) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %248) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %247) #10
  br label %359

359:                                              ; preds = %358, %241
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #10
  %360 = load i32, i32* @Nm, align 4, !tbaa !2
  %361 = add nsw i32 %360, -1
  %362 = icmp sgt i32 %360, 0
  br i1 %362, label %363, label %476

363:                                              ; preds = %359
  %364 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %364) #10
  store i32 0, i32* %20, align 4, !tbaa !2
  %365 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %365) #10
  store i32 %361, i32* %21, align 4, !tbaa !2
  %366 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %366) #10
  store i32 1, i32* %22, align 4, !tbaa !2
  %367 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %367) #10
  store i32 0, i32* %23, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %23, i32* nonnull %20, i32* nonnull %21, i32* nonnull %22, i32 1, i32 1) #10
  %368 = load i32, i32* %21, align 4, !tbaa !2
  %369 = icmp slt i32 %368, %360
  %370 = select i1 %369, i32 %368, i32 %361
  store i32 %370, i32* %21, align 4, !tbaa !2
  %371 = load i32, i32* %20, align 4, !tbaa !2
  %372 = icmp sgt i32 %371, %370
  br i1 %372, label %475, label %373

373:                                              ; preds = %363
  %374 = load i32, i32* @Nl, align 4
  %375 = icmp slt i32 %374, 1
  %376 = load i32, i32* @Nj, align 4
  %377 = icmp slt i32 %376, 1
  %378 = load i32, i32* @Ni, align 4
  %379 = icmp sgt i32 %378, 0
  %380 = sext i32 %378 to i64
  %381 = sext i32 %376 to i64
  %382 = sext i32 %371 to i64
  %383 = sext i32 %374 to i64
  %384 = sext i32 %370 to i64
  %385 = zext i32 %374 to i64
  %386 = zext i32 %376 to i64
  %387 = zext i32 %378 to i64
  %388 = and i64 %387, 4294967292
  %389 = add nsw i64 %388, -4
  %390 = lshr exact i64 %389, 2
  %391 = add nuw nsw i64 %390, 1
  %392 = or i1 %375, %377
  %393 = icmp ult i32 %378, 4
  %394 = and i64 %387, 4294967292
  %395 = and i64 %391, 3
  %396 = icmp ult i64 %389, 12
  %397 = sub nsw i64 %391, %395
  %398 = icmp eq i64 %395, 0
  %399 = icmp eq i64 %394, %387
  br label %400

400:                                              ; preds = %472, %373
  %401 = phi i64 [ %473, %472 ], [ %382, %373 ]
  br i1 %392, label %472, label %402

402:                                              ; preds = %400
  %403 = mul nsw i64 %401, %383
  br label %404

404:                                              ; preds = %410, %402
  %405 = phi i64 [ 0, %402 ], [ %411, %410 ]
  %406 = load double*, double** %5, align 8
  br i1 %379, label %407, label %410

407:                                              ; preds = %404
  %408 = add nsw i64 %403, %405
  %409 = mul nsw i64 %408, %381
  br label %413

410:                                              ; preds = %463, %404
  %411 = add nuw nsw i64 %405, 1
  %412 = icmp eq i64 %411, %385
  br i1 %412, label %472, label %404

413:                                              ; preds = %463, %407
  %414 = phi i64 [ 0, %407 ], [ %464, %463 ]
  %415 = add nsw i64 %409, %414
  %416 = mul nsw i64 %415, %380
  br i1 %393, label %417, label %419

417:                                              ; preds = %462, %413
  %418 = phi i64 [ 0, %413 ], [ %394, %462 ]
  br label %466

419:                                              ; preds = %413
  br i1 %396, label %449, label %420

420:                                              ; preds = %419, %420
  %421 = phi i64 [ %446, %420 ], [ 0, %419 ]
  %422 = phi i64 [ %447, %420 ], [ %397, %419 ]
  %423 = add nsw i64 %416, %421
  %424 = getelementptr inbounds double, double* %406, i64 %423
  %425 = bitcast double* %424 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %425, align 8, !tbaa !8
  %426 = getelementptr inbounds double, double* %424, i64 2
  %427 = bitcast double* %426 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %427, align 8, !tbaa !8
  %428 = or i64 %421, 4
  %429 = add nsw i64 %416, %428
  %430 = getelementptr inbounds double, double* %406, i64 %429
  %431 = bitcast double* %430 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %431, align 8, !tbaa !8
  %432 = getelementptr inbounds double, double* %430, i64 2
  %433 = bitcast double* %432 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %433, align 8, !tbaa !8
  %434 = or i64 %421, 8
  %435 = add nsw i64 %416, %434
  %436 = getelementptr inbounds double, double* %406, i64 %435
  %437 = bitcast double* %436 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %437, align 8, !tbaa !8
  %438 = getelementptr inbounds double, double* %436, i64 2
  %439 = bitcast double* %438 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %439, align 8, !tbaa !8
  %440 = or i64 %421, 12
  %441 = add nsw i64 %416, %440
  %442 = getelementptr inbounds double, double* %406, i64 %441
  %443 = bitcast double* %442 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %443, align 8, !tbaa !8
  %444 = getelementptr inbounds double, double* %442, i64 2
  %445 = bitcast double* %444 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %445, align 8, !tbaa !8
  %446 = add i64 %421, 16
  %447 = add i64 %422, -4
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %420, !llvm.loop !27

449:                                              ; preds = %420, %419
  %450 = phi i64 [ 0, %419 ], [ %446, %420 ]
  br i1 %398, label %462, label %451

451:                                              ; preds = %449, %451
  %452 = phi i64 [ %459, %451 ], [ %450, %449 ]
  %453 = phi i64 [ %460, %451 ], [ %395, %449 ]
  %454 = add nsw i64 %416, %452
  %455 = getelementptr inbounds double, double* %406, i64 %454
  %456 = bitcast double* %455 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %456, align 8, !tbaa !8
  %457 = getelementptr inbounds double, double* %455, i64 2
  %458 = bitcast double* %457 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %458, align 8, !tbaa !8
  %459 = add i64 %452, 4
  %460 = add i64 %453, -1
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %451, !llvm.loop !28

462:                                              ; preds = %451, %449
  br i1 %399, label %463, label %417

463:                                              ; preds = %466, %462
  %464 = add nuw nsw i64 %414, 1
  %465 = icmp eq i64 %464, %386
  br i1 %465, label %410, label %413

466:                                              ; preds = %417, %466
  %467 = phi i64 [ %470, %466 ], [ %418, %417 ]
  %468 = add nsw i64 %416, %467
  %469 = getelementptr inbounds double, double* %406, i64 %468
  store double 3.000000e-02, double* %469, align 8, !tbaa !8, !nontemporal !24
  %470 = add nuw nsw i64 %467, 1
  %471 = icmp eq i64 %470, %387
  br i1 %471, label %463, label %466, !llvm.loop !29

472:                                              ; preds = %410, %400
  %473 = add nsw i64 %401, 1
  %474 = icmp slt i64 %401, %384
  br i1 %474, label %400, label %475

475:                                              ; preds = %472, %363
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %367) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %366) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %365) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %364) #10
  br label %476

476:                                              ; preds = %475, %359
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #10
  %477 = load i32, i32* @Nm, align 4, !tbaa !2
  %478 = add nsw i32 %477, -1
  %479 = icmp sgt i32 %477, 0
  br i1 %479, label %480, label %593

480:                                              ; preds = %476
  %481 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %481) #10
  store i32 0, i32* %24, align 4, !tbaa !2
  %482 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %482) #10
  store i32 %478, i32* %25, align 4, !tbaa !2
  %483 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %483) #10
  store i32 1, i32* %26, align 4, !tbaa !2
  %484 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %484) #10
  store i32 0, i32* %27, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %27, i32* nonnull %24, i32* nonnull %25, i32* nonnull %26, i32 1, i32 1) #10
  %485 = load i32, i32* %25, align 4, !tbaa !2
  %486 = icmp slt i32 %485, %477
  %487 = select i1 %486, i32 %485, i32 %478
  store i32 %487, i32* %25, align 4, !tbaa !2
  %488 = load i32, i32* %24, align 4, !tbaa !2
  %489 = icmp sgt i32 %488, %487
  br i1 %489, label %592, label %490

490:                                              ; preds = %480
  %491 = load i32, i32* @Nl, align 4
  %492 = icmp slt i32 %491, 1
  %493 = load i32, i32* @Nk, align 4
  %494 = icmp slt i32 %493, 1
  %495 = load i32, i32* @Ni, align 4
  %496 = icmp sgt i32 %495, 0
  %497 = sext i32 %495 to i64
  %498 = sext i32 %493 to i64
  %499 = sext i32 %488 to i64
  %500 = sext i32 %491 to i64
  %501 = sext i32 %487 to i64
  %502 = zext i32 %491 to i64
  %503 = zext i32 %493 to i64
  %504 = zext i32 %495 to i64
  %505 = and i64 %504, 4294967292
  %506 = add nsw i64 %505, -4
  %507 = lshr exact i64 %506, 2
  %508 = add nuw nsw i64 %507, 1
  %509 = or i1 %492, %494
  %510 = icmp ult i32 %495, 4
  %511 = and i64 %504, 4294967292
  %512 = and i64 %508, 3
  %513 = icmp ult i64 %506, 12
  %514 = sub nsw i64 %508, %512
  %515 = icmp eq i64 %512, 0
  %516 = icmp eq i64 %511, %504
  br label %517

517:                                              ; preds = %589, %490
  %518 = phi i64 [ %590, %589 ], [ %499, %490 ]
  br i1 %509, label %589, label %519

519:                                              ; preds = %517
  %520 = mul nsw i64 %518, %500
  br label %521

521:                                              ; preds = %527, %519
  %522 = phi i64 [ 0, %519 ], [ %528, %527 ]
  %523 = load double*, double** %6, align 8
  br i1 %496, label %524, label %527

524:                                              ; preds = %521
  %525 = add nsw i64 %520, %522
  %526 = mul nsw i64 %525, %498
  br label %530

527:                                              ; preds = %580, %521
  %528 = add nuw nsw i64 %522, 1
  %529 = icmp eq i64 %528, %502
  br i1 %529, label %589, label %521

530:                                              ; preds = %580, %524
  %531 = phi i64 [ 0, %524 ], [ %581, %580 ]
  %532 = add nsw i64 %526, %531
  %533 = mul nsw i64 %532, %497
  br i1 %510, label %534, label %536

534:                                              ; preds = %579, %530
  %535 = phi i64 [ 0, %530 ], [ %511, %579 ]
  br label %583

536:                                              ; preds = %530
  br i1 %513, label %566, label %537

537:                                              ; preds = %536, %537
  %538 = phi i64 [ %563, %537 ], [ 0, %536 ]
  %539 = phi i64 [ %564, %537 ], [ %514, %536 ]
  %540 = add nsw i64 %533, %538
  %541 = getelementptr inbounds double, double* %523, i64 %540
  %542 = bitcast double* %541 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %542, align 8, !tbaa !8
  %543 = getelementptr inbounds double, double* %541, i64 2
  %544 = bitcast double* %543 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %544, align 8, !tbaa !8
  %545 = or i64 %538, 4
  %546 = add nsw i64 %533, %545
  %547 = getelementptr inbounds double, double* %523, i64 %546
  %548 = bitcast double* %547 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %548, align 8, !tbaa !8
  %549 = getelementptr inbounds double, double* %547, i64 2
  %550 = bitcast double* %549 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %550, align 8, !tbaa !8
  %551 = or i64 %538, 8
  %552 = add nsw i64 %533, %551
  %553 = getelementptr inbounds double, double* %523, i64 %552
  %554 = bitcast double* %553 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %554, align 8, !tbaa !8
  %555 = getelementptr inbounds double, double* %553, i64 2
  %556 = bitcast double* %555 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %556, align 8, !tbaa !8
  %557 = or i64 %538, 12
  %558 = add nsw i64 %533, %557
  %559 = getelementptr inbounds double, double* %523, i64 %558
  %560 = bitcast double* %559 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %560, align 8, !tbaa !8
  %561 = getelementptr inbounds double, double* %559, i64 2
  %562 = bitcast double* %561 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %562, align 8, !tbaa !8
  %563 = add i64 %538, 16
  %564 = add i64 %539, -4
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %537, !llvm.loop !30

566:                                              ; preds = %537, %536
  %567 = phi i64 [ 0, %536 ], [ %563, %537 ]
  br i1 %515, label %579, label %568

568:                                              ; preds = %566, %568
  %569 = phi i64 [ %576, %568 ], [ %567, %566 ]
  %570 = phi i64 [ %577, %568 ], [ %512, %566 ]
  %571 = add nsw i64 %533, %569
  %572 = getelementptr inbounds double, double* %523, i64 %571
  %573 = bitcast double* %572 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %573, align 8, !tbaa !8
  %574 = getelementptr inbounds double, double* %572, i64 2
  %575 = bitcast double* %574 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %575, align 8, !tbaa !8
  %576 = add i64 %569, 4
  %577 = add i64 %570, -1
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %568, !llvm.loop !31

579:                                              ; preds = %568, %566
  br i1 %516, label %580, label %534

580:                                              ; preds = %583, %579
  %581 = add nuw nsw i64 %531, 1
  %582 = icmp eq i64 %581, %503
  br i1 %582, label %527, label %530

583:                                              ; preds = %534, %583
  %584 = phi i64 [ %587, %583 ], [ %535, %534 ]
  %585 = add nsw i64 %533, %584
  %586 = getelementptr inbounds double, double* %523, i64 %585
  store double 4.000000e-02, double* %586, align 8, !tbaa !8, !nontemporal !24
  %587 = add nuw nsw i64 %584, 1
  %588 = icmp eq i64 %587, %504
  br i1 %588, label %580, label %583, !llvm.loop !32

589:                                              ; preds = %527, %517
  %590 = add nsw i64 %518, 1
  %591 = icmp slt i64 %518, %501
  br i1 %591, label %517, label %592

592:                                              ; preds = %589, %480
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %484) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %483) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %482) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %481) #10
  br label %593

593:                                              ; preds = %592, %476
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #10
  %594 = load i32, i32* @Ni, align 4, !tbaa !2
  %595 = add nsw i32 %594, -1
  %596 = icmp sgt i32 %594, 0
  br i1 %596, label %597, label %711

597:                                              ; preds = %593
  %598 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %598) #10
  store i32 0, i32* %28, align 4, !tbaa !2
  %599 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %599) #10
  store i32 %595, i32* %29, align 4, !tbaa !2
  %600 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %600) #10
  store i32 1, i32* %30, align 4, !tbaa !2
  %601 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %601) #10
  store i32 0, i32* %31, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %31, i32* nonnull %28, i32* nonnull %29, i32* nonnull %30, i32 1, i32 1) #10
  %602 = load i32, i32* %29, align 4, !tbaa !2
  %603 = icmp slt i32 %602, %594
  %604 = select i1 %603, i32 %602, i32 %595
  store i32 %604, i32* %29, align 4, !tbaa !2
  %605 = load i32, i32* %28, align 4, !tbaa !2
  %606 = icmp sgt i32 %605, %604
  br i1 %606, label %710, label %607

607:                                              ; preds = %597
  %608 = load double*, double** %7, align 8, !tbaa !6
  %609 = load double*, double** %8, align 8, !tbaa !6
  %610 = load double*, double** %9, align 8, !tbaa !6
  %611 = sext i32 %605 to i64
  %612 = sext i32 %604 to i64
  %613 = icmp sgt i64 %612, %611
  %614 = select i1 %613, i64 %612, i64 %611
  %615 = add nsw i64 %614, 1
  %616 = sub nsw i64 %615, %611
  %617 = icmp ult i64 %616, 4
  br i1 %617, label %701, label %618

618:                                              ; preds = %607
  %619 = getelementptr double, double* %608, i64 %611
  %620 = icmp sgt i64 %612, %611
  %621 = select i1 %620, i64 %612, i64 %611
  %622 = add nsw i64 %621, 1
  %623 = getelementptr double, double* %608, i64 %622
  %624 = getelementptr double, double* %609, i64 %611
  %625 = getelementptr double, double* %609, i64 %622
  %626 = getelementptr double, double* %610, i64 %611
  %627 = getelementptr double, double* %610, i64 %622
  %628 = icmp ult double* %619, %625
  %629 = icmp ult double* %624, %623
  %630 = and i1 %628, %629
  %631 = icmp ult double* %619, %627
  %632 = icmp ult double* %626, %623
  %633 = and i1 %631, %632
  %634 = or i1 %630, %633
  %635 = icmp ult double* %624, %627
  %636 = icmp ult double* %626, %625
  %637 = and i1 %635, %636
  %638 = or i1 %634, %637
  br i1 %638, label %701, label %639

639:                                              ; preds = %618
  %640 = and i64 %616, -4
  %641 = add nsw i64 %640, %611
  %642 = add nsw i64 %640, -4
  %643 = lshr exact i64 %642, 2
  %644 = add nuw nsw i64 %643, 1
  %645 = and i64 %644, 1
  %646 = icmp eq i64 %642, 0
  br i1 %646, label %682, label %647

647:                                              ; preds = %639
  %648 = sub nuw nsw i64 %644, %645
  br label %649

649:                                              ; preds = %649, %647
  %650 = phi i64 [ 0, %647 ], [ %679, %649 ]
  %651 = phi i64 [ %648, %647 ], [ %680, %649 ]
  %652 = add i64 %650, %611
  %653 = getelementptr inbounds double, double* %608, i64 %652
  %654 = bitcast double* %653 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %654, align 8, !tbaa !8, !alias.scope !33, !noalias !36
  %655 = getelementptr inbounds double, double* %653, i64 2
  %656 = bitcast double* %655 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %656, align 8, !tbaa !8, !alias.scope !33, !noalias !36
  %657 = getelementptr inbounds double, double* %609, i64 %652
  %658 = bitcast double* %657 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %658, align 8, !tbaa !8, !alias.scope !39, !noalias !40
  %659 = getelementptr inbounds double, double* %657, i64 2
  %660 = bitcast double* %659 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %660, align 8, !tbaa !8, !alias.scope !39, !noalias !40
  %661 = getelementptr inbounds double, double* %610, i64 %652
  %662 = bitcast double* %661 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %662, align 8, !tbaa !8, !alias.scope !40
  %663 = getelementptr inbounds double, double* %661, i64 2
  %664 = bitcast double* %663 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %664, align 8, !tbaa !8, !alias.scope !40
  %665 = or i64 %650, 4
  %666 = add i64 %665, %611
  %667 = getelementptr inbounds double, double* %608, i64 %666
  %668 = bitcast double* %667 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %668, align 8, !tbaa !8, !alias.scope !33, !noalias !36
  %669 = getelementptr inbounds double, double* %667, i64 2
  %670 = bitcast double* %669 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %670, align 8, !tbaa !8, !alias.scope !33, !noalias !36
  %671 = getelementptr inbounds double, double* %609, i64 %666
  %672 = bitcast double* %671 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %672, align 8, !tbaa !8, !alias.scope !39, !noalias !40
  %673 = getelementptr inbounds double, double* %671, i64 2
  %674 = bitcast double* %673 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %674, align 8, !tbaa !8, !alias.scope !39, !noalias !40
  %675 = getelementptr inbounds double, double* %610, i64 %666
  %676 = bitcast double* %675 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %676, align 8, !tbaa !8, !alias.scope !40
  %677 = getelementptr inbounds double, double* %675, i64 2
  %678 = bitcast double* %677 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %678, align 8, !tbaa !8, !alias.scope !40
  %679 = add i64 %650, 8
  %680 = add i64 %651, -2
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %682, label %649, !llvm.loop !41

682:                                              ; preds = %649, %639
  %683 = phi i64 [ 0, %639 ], [ %679, %649 ]
  %684 = icmp eq i64 %645, 0
  br i1 %684, label %699, label %685

685:                                              ; preds = %682
  %686 = add i64 %683, %611
  %687 = getelementptr inbounds double, double* %608, i64 %686
  %688 = bitcast double* %687 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %688, align 8, !tbaa !8, !alias.scope !33, !noalias !36
  %689 = getelementptr inbounds double, double* %687, i64 2
  %690 = bitcast double* %689 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %690, align 8, !tbaa !8, !alias.scope !33, !noalias !36
  %691 = getelementptr inbounds double, double* %609, i64 %686
  %692 = bitcast double* %691 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %692, align 8, !tbaa !8, !alias.scope !39, !noalias !40
  %693 = getelementptr inbounds double, double* %691, i64 2
  %694 = bitcast double* %693 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %694, align 8, !tbaa !8, !alias.scope !39, !noalias !40
  %695 = getelementptr inbounds double, double* %610, i64 %686
  %696 = bitcast double* %695 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %696, align 8, !tbaa !8, !alias.scope !40
  %697 = getelementptr inbounds double, double* %695, i64 2
  %698 = bitcast double* %697 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %698, align 8, !tbaa !8, !alias.scope !40
  br label %699

699:                                              ; preds = %682, %685
  %700 = icmp eq i64 %616, %640
  br i1 %700, label %710, label %701

701:                                              ; preds = %699, %618, %607
  %702 = phi i64 [ %611, %618 ], [ %611, %607 ], [ %641, %699 ]
  br label %703

703:                                              ; preds = %701, %703
  %704 = phi i64 [ %708, %703 ], [ %702, %701 ]
  %705 = getelementptr inbounds double, double* %608, i64 %704
  store double 6.000000e-02, double* %705, align 8, !tbaa !8
  %706 = getelementptr inbounds double, double* %609, i64 %704
  store double 7.000000e-02, double* %706, align 8, !tbaa !8
  %707 = getelementptr inbounds double, double* %610, i64 %704
  store double 8.000000e-02, double* %707, align 8, !tbaa !8
  %708 = add nsw i64 %704, 1
  %709 = icmp slt i64 %704, %612
  br i1 %709, label %703, label %710, !llvm.loop !42

710:                                              ; preds = %703, %699, %597
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %601) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %600) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %599) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %598) #10
  br label %711

711:                                              ; preds = %710, %593
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #10
  %712 = load i32, i32* @Nm, align 4, !tbaa !2
  %713 = add nsw i32 %712, -1
  %714 = icmp sgt i32 %712, 0
  br i1 %714, label %715, label %813

715:                                              ; preds = %711
  %716 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %716) #10
  store i32 0, i32* %32, align 4, !tbaa !2
  %717 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %717) #10
  store i32 %713, i32* %33, align 4, !tbaa !2
  %718 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %718) #10
  store i32 1, i32* %34, align 4, !tbaa !2
  %719 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %719) #10
  store i32 0, i32* %35, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %35, i32* nonnull %32, i32* nonnull %33, i32* nonnull %34, i32 1, i32 1) #10
  %720 = load i32, i32* %33, align 4, !tbaa !2
  %721 = icmp slt i32 %720, %712
  %722 = select i1 %721, i32 %720, i32 %713
  store i32 %722, i32* %33, align 4, !tbaa !2
  %723 = load i32, i32* %32, align 4, !tbaa !2
  %724 = icmp sgt i32 %723, %722
  br i1 %724, label %812, label %725

725:                                              ; preds = %715
  %726 = load i32, i32* @Nl, align 4
  %727 = icmp slt i32 %726, 1
  %728 = load i32, i32* @Nk, align 4
  %729 = icmp slt i32 %728, 1
  %730 = load i32, i32* @Nj, align 4
  %731 = icmp sgt i32 %730, 0
  %732 = mul i32 %723, %726
  %733 = mul i32 %732, %728
  %734 = mul i32 %733, %730
  %735 = mul i32 %726, %728
  %736 = mul i32 %735, %730
  %737 = mul i32 %728, %730
  %738 = zext i32 %730 to i64
  %739 = shl nuw nsw i64 %738, 3
  %740 = zext i32 %728 to i64
  %741 = add nsw i64 %740, -1
  %742 = or i1 %727, %729
  %743 = and i64 %740, 3
  %744 = icmp ult i64 %741, 3
  %745 = sub nsw i64 %740, %743
  %746 = icmp eq i64 %743, 0
  br label %747

747:                                              ; preds = %808, %725
  %748 = phi i32 [ %811, %808 ], [ 0, %725 ]
  %749 = phi i32 [ %809, %808 ], [ %723, %725 ]
  %750 = mul i32 %736, %748
  %751 = add i32 %734, %750
  br i1 %742, label %808, label %752

752:                                              ; preds = %747, %772
  %753 = phi i32 [ %773, %772 ], [ 0, %747 ]
  %754 = mul i32 %737, %753
  %755 = add i32 %751, %754
  %756 = load double*, double** %10, align 8
  br i1 %731, label %757, label %772

757:                                              ; preds = %752
  br i1 %744, label %758, label %775

758:                                              ; preds = %775, %757
  %759 = phi i64 [ 0, %757 ], [ %805, %775 ]
  br i1 %746, label %772, label %760

760:                                              ; preds = %758, %760
  %761 = phi i64 [ %769, %760 ], [ %759, %758 ]
  %762 = phi i64 [ %770, %760 ], [ %743, %758 ]
  %763 = trunc i64 %761 to i32
  %764 = mul i32 %730, %763
  %765 = add i32 %755, %764
  %766 = sext i32 %765 to i64
  %767 = getelementptr double, double* %756, i64 %766
  %768 = bitcast double* %767 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %768, i8 0, i64 %739, i1 false)
  %769 = add nuw nsw i64 %761, 1
  %770 = add i64 %762, -1
  %771 = icmp eq i64 %770, 0
  br i1 %771, label %772, label %760, !llvm.loop !43

772:                                              ; preds = %758, %760, %752
  %773 = add nuw nsw i32 %753, 1
  %774 = icmp eq i32 %773, %726
  br i1 %774, label %808, label %752

775:                                              ; preds = %757, %775
  %776 = phi i64 [ %805, %775 ], [ 0, %757 ]
  %777 = phi i64 [ %806, %775 ], [ %745, %757 ]
  %778 = trunc i64 %776 to i32
  %779 = mul i32 %730, %778
  %780 = add i32 %755, %779
  %781 = sext i32 %780 to i64
  %782 = getelementptr double, double* %756, i64 %781
  %783 = bitcast double* %782 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %783, i8 0, i64 %739, i1 false)
  %784 = trunc i64 %776 to i32
  %785 = or i32 %784, 1
  %786 = mul i32 %730, %785
  %787 = add i32 %755, %786
  %788 = sext i32 %787 to i64
  %789 = getelementptr double, double* %756, i64 %788
  %790 = bitcast double* %789 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %790, i8 0, i64 %739, i1 false)
  %791 = trunc i64 %776 to i32
  %792 = or i32 %791, 2
  %793 = mul i32 %730, %792
  %794 = add i32 %755, %793
  %795 = sext i32 %794 to i64
  %796 = getelementptr double, double* %756, i64 %795
  %797 = bitcast double* %796 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %797, i8 0, i64 %739, i1 false)
  %798 = trunc i64 %776 to i32
  %799 = or i32 %798, 3
  %800 = mul i32 %730, %799
  %801 = add i32 %755, %800
  %802 = sext i32 %801 to i64
  %803 = getelementptr double, double* %756, i64 %802
  %804 = bitcast double* %803 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %804, i8 0, i64 %739, i1 false)
  %805 = add nuw nsw i64 %776, 4
  %806 = add i64 %777, -4
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %758, label %775

808:                                              ; preds = %772, %747
  %809 = add nsw i32 %749, 1
  %810 = icmp slt i32 %749, %722
  %811 = add i32 %748, 1
  br i1 %810, label %747, label %812

812:                                              ; preds = %808, %715
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %719) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %718) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %717) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %716) #10
  br label %813

813:                                              ; preds = %812, %711
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

declare !callback !44 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

declare dso_local double @omp_get_wtime() local_unnamed_addr #5

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @kernel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double* noalias nocapture %5, double* noalias nocapture readonly %6, double* noalias nocapture %7, double* noalias nocapture %8, double* noalias nocapture %9, double* noalias nocapture readonly %10, double* noalias nocapture readonly %11, double* noalias nocapture readonly %12, double* noalias nocapture %13) local_unnamed_addr #6 {
  %15 = icmp sgt i32 %4, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %14
  %17 = icmp sgt i32 %3, 0
  %18 = icmp sgt i32 %2, 0
  %19 = icmp sgt i32 %1, 0
  %20 = icmp sgt i32 %0, 0
  %21 = sext i32 %0 to i64
  %22 = sext i32 %1 to i64
  %23 = sext i32 %2 to i64
  %24 = sext i32 %3 to i64
  %25 = zext i32 %4 to i64
  %26 = zext i32 %3 to i64
  %27 = zext i32 %2 to i64
  %28 = zext i32 %1 to i64
  %29 = zext i32 %1 to i64
  %30 = zext i32 %0 to i64
  %31 = and i64 %29, 4294967292
  %32 = add nsw i64 %31, -4
  %33 = lshr exact i64 %32, 2
  %34 = add nuw nsw i64 %33, 1
  %35 = icmp ult i32 %1, 4
  %36 = and i64 %29, 4294967292
  %37 = and i64 %34, 1
  %38 = icmp eq i64 %32, 0
  %39 = sub nuw nsw i64 %34, %37
  %40 = icmp eq i64 %37, 0
  %41 = icmp eq i64 %36, %29
  br label %42

42:                                               ; preds = %54, %16
  %43 = phi i64 [ 0, %16 ], [ %55, %54 ]
  br i1 %17, label %44, label %54

44:                                               ; preds = %42
  %45 = mul nsw i64 %43, %24
  %46 = mul nsw i64 %43, %23
  br label %48

47:                                               ; preds = %54, %14
  ret void

48:                                               ; preds = %162, %44
  %49 = phi i64 [ 0, %44 ], [ %163, %162 ]
  br i1 %18, label %50, label %162

50:                                               ; preds = %48
  %51 = add nsw i64 %49, %45
  %52 = mul nsw i64 %51, %23
  %53 = mul nsw i64 %51, %22
  br label %57

54:                                               ; preds = %162, %42
  %55 = add nuw nsw i64 %43, 1
  %56 = icmp eq i64 %55, %25
  br i1 %56, label %47, label %42

57:                                               ; preds = %173, %50
  %58 = phi i64 [ 0, %50 ], [ %174, %173 ]
  br i1 %19, label %59, label %173

59:                                               ; preds = %57
  %60 = add nsw i64 %58, %52
  %61 = mul nsw i64 %60, %22
  %62 = add nsw i64 %58, %46
  %63 = mul nsw i64 %62, %22
  %64 = mul nsw i64 %60, %21
  br i1 %20, label %113, label %65

65:                                               ; preds = %59
  br i1 %35, label %66, label %68

66:                                               ; preds = %112, %65
  %67 = phi i64 [ 0, %65 ], [ %36, %112 ]
  br label %165

68:                                               ; preds = %65
  br i1 %38, label %98, label %69

69:                                               ; preds = %68, %69
  %70 = phi i64 [ %95, %69 ], [ 0, %68 ]
  %71 = phi i64 [ %96, %69 ], [ %39, %68 ]
  %72 = add nsw i64 %70, %61
  %73 = getelementptr inbounds double, double* %13, i64 %72
  %74 = bitcast double* %73 to <2 x double>*
  %75 = load <2 x double>, <2 x double>* %74, align 8, !tbaa !8
  %76 = getelementptr inbounds double, double* %73, i64 2
  %77 = bitcast double* %76 to <2 x double>*
  %78 = load <2 x double>, <2 x double>* %77, align 8, !tbaa !8
  %79 = fadd <2 x double> %75, zeroinitializer
  %80 = fadd <2 x double> %78, zeroinitializer
  %81 = bitcast double* %73 to <2 x double>*
  store <2 x double> %79, <2 x double>* %81, align 8, !tbaa !8
  %82 = bitcast double* %76 to <2 x double>*
  store <2 x double> %80, <2 x double>* %82, align 8, !tbaa !8
  %83 = or i64 %70, 4
  %84 = add nsw i64 %83, %61
  %85 = getelementptr inbounds double, double* %13, i64 %84
  %86 = bitcast double* %85 to <2 x double>*
  %87 = load <2 x double>, <2 x double>* %86, align 8, !tbaa !8
  %88 = getelementptr inbounds double, double* %85, i64 2
  %89 = bitcast double* %88 to <2 x double>*
  %90 = load <2 x double>, <2 x double>* %89, align 8, !tbaa !8
  %91 = fadd <2 x double> %87, zeroinitializer
  %92 = fadd <2 x double> %90, zeroinitializer
  %93 = bitcast double* %85 to <2 x double>*
  store <2 x double> %91, <2 x double>* %93, align 8, !tbaa !8
  %94 = bitcast double* %88 to <2 x double>*
  store <2 x double> %92, <2 x double>* %94, align 8, !tbaa !8
  %95 = add i64 %70, 8
  %96 = add i64 %71, -2
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %69, !llvm.loop !46

98:                                               ; preds = %69, %68
  %99 = phi i64 [ 0, %68 ], [ %95, %69 ]
  br i1 %40, label %112, label %100

100:                                              ; preds = %98
  %101 = add nsw i64 %99, %61
  %102 = getelementptr inbounds double, double* %13, i64 %101
  %103 = bitcast double* %102 to <2 x double>*
  %104 = load <2 x double>, <2 x double>* %103, align 8, !tbaa !8
  %105 = getelementptr inbounds double, double* %102, i64 2
  %106 = bitcast double* %105 to <2 x double>*
  %107 = load <2 x double>, <2 x double>* %106, align 8, !tbaa !8
  %108 = fadd <2 x double> %104, zeroinitializer
  %109 = fadd <2 x double> %107, zeroinitializer
  %110 = bitcast double* %102 to <2 x double>*
  store <2 x double> %108, <2 x double>* %110, align 8, !tbaa !8
  %111 = bitcast double* %105 to <2 x double>*
  store <2 x double> %109, <2 x double>* %111, align 8, !tbaa !8
  br label %112

112:                                              ; preds = %98, %100
  br i1 %41, label %173, label %66

113:                                              ; preds = %59, %156
  %114 = phi i64 [ %160, %156 ], [ 0, %59 ]
  %115 = add nsw i64 %114, %61
  %116 = mul nsw i64 %115, %21
  %117 = add nsw i64 %114, %63
  %118 = mul nsw i64 %117, %21
  %119 = add nsw i64 %114, %53
  %120 = mul nsw i64 %119, %21
  br label %121

121:                                              ; preds = %121, %113
  %122 = phi i64 [ 0, %113 ], [ %154, %121 ]
  %123 = phi double [ 0.000000e+00, %113 ], [ %152, %121 ]
  %124 = add nsw i64 %122, %116
  %125 = getelementptr inbounds double, double* %6, i64 %124
  %126 = load double, double* %125, align 8, !tbaa !8
  %127 = getelementptr inbounds double, double* %10, i64 %122
  %128 = load double, double* %127, align 8, !tbaa !8
  %129 = add nsw i64 %122, %118
  %130 = getelementptr inbounds double, double* %7, i64 %129
  %131 = load double, double* %130, align 8, !tbaa !8
  %132 = fmul double %128, %131
  %133 = fadd double %126, %132
  %134 = getelementptr inbounds double, double* %11, i64 %122
  %135 = load double, double* %134, align 8, !tbaa !8
  %136 = add nsw i64 %122, %120
  %137 = getelementptr inbounds double, double* %8, i64 %136
  %138 = load double, double* %137, align 8, !tbaa !8
  %139 = fmul double %135, %138
  %140 = fadd double %133, %139
  %141 = getelementptr inbounds double, double* %12, i64 %122
  %142 = load double, double* %141, align 8, !tbaa !8
  %143 = add nsw i64 %122, %64
  %144 = getelementptr inbounds double, double* %9, i64 %143
  %145 = load double, double* %144, align 8, !tbaa !8
  %146 = fmul double %142, %145
  %147 = fadd double %140, %146
  %148 = fmul double %147, 2.000000e-01
  %149 = fsub double %148, %131
  store double %149, double* %130, align 8, !tbaa !8
  %150 = fsub double %148, %138
  store double %150, double* %137, align 8, !tbaa !8
  %151 = fsub double %148, %145
  store double %151, double* %144, align 8, !tbaa !8
  %152 = fadd double %123, %147
  %153 = getelementptr inbounds double, double* %5, i64 %124
  store double %147, double* %153, align 8, !tbaa !8, !nontemporal !24
  %154 = add nuw nsw i64 %122, 1
  %155 = icmp eq i64 %154, %30
  br i1 %155, label %156, label %121

156:                                              ; preds = %121
  %157 = getelementptr inbounds double, double* %13, i64 %115
  %158 = load double, double* %157, align 8, !tbaa !8
  %159 = fadd double %152, %158
  store double %159, double* %157, align 8, !tbaa !8
  %160 = add nuw nsw i64 %114, 1
  %161 = icmp eq i64 %160, %29
  br i1 %161, label %173, label %113

162:                                              ; preds = %173, %48
  %163 = add nuw nsw i64 %49, 1
  %164 = icmp eq i64 %163, %26
  br i1 %164, label %54, label %48

165:                                              ; preds = %66, %165
  %166 = phi i64 [ %171, %165 ], [ %67, %66 ]
  %167 = add nsw i64 %166, %61
  %168 = getelementptr inbounds double, double* %13, i64 %167
  %169 = load double, double* %168, align 8, !tbaa !8
  %170 = fadd double %169, 0.000000e+00
  store double %170, double* %168, align 8, !tbaa !8
  %171 = add nuw nsw i64 %166, 1
  %172 = icmp eq i64 %171, %28
  br i1 %172, label %173, label %165, !llvm.loop !47

173:                                              ; preds = %165, %156, %112, %57
  %174 = add nuw nsw i64 %58, 1
  %175 = icmp eq i64 %174, %27
  br i1 %175, label %162, label %57
}

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #9

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-++20200412072704+50d7e5d5e7d-1~exp1~20200412053303.133 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !11}
!24 = !{!"1"}
!25 = distinct !{!25, !26, !19}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !26, !19}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !26, !19}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = !{!37}
!40 = !{!38}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !11}
!44 = !{!45}
!45 = !{i64 2, i64 -1, i64 -1, i1 true}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !26, !19}
