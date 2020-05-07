; ModuleID = 'mega-stream-opt.bc'
source_filename = "mega-stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"MEGA-STREAM! - v%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Small arrays:  %d elements\09\09(%.1lf KB)\0A\00", align 1
@Ni = dso_local local_unnamed_addr global i32 128, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Medium arrays: %d x %d x %d x %d elements\09(%.1lf MB)\0A\00", align 1
@Nj = dso_local local_unnamed_addr global i32 16, align 4
@Nm = dso_local local_unnamed_addr global i32 64, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Large arrays:  %d x %d x %d x %d x %d elements\09(%.1lf MB)\0A\00", align 1
@Nk = dso_local local_unnamed_addr global i32 16, align 4
@Nl = dso_local local_unnamed_addr global i32 16, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Memory footprint: %.1lf MB\0A\00", align 1
@Ng = common dso_local local_unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Inner dimension split into %d chunks of size %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Running %d times\0A\00", align 1
@ntimes = dso_local local_unnamed_addr global i32 100, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, align 8
@1 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, align 8
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Sum total: %lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%12.1f %11.6f %11.6f %11.6f\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Total time: %11.6f\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--outer\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"--inner\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"--middle\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"--Nj\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"--ntimes\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [29 x i8] c"ntimes must be 2 or greater\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\09 Outer   is %12d elements\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"\09 Middle are %12d elements\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"\09 Inner   is %12d elements\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Unrecognised argument \22%s\22\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c"Bandwidth MB/s  Min time    Max time    Avg time\00", align 1
@str.31 = private unnamed_addr constant [42 x i8] c"\09 --outer  n \09Set size of outer dimension\00", align 1
@str.32 = private unnamed_addr constant [44 x i8] c"\09 --inner  n \09Set size of middle dimensions\00", align 1
@str.33 = private unnamed_addr constant [42 x i8] c"\09 --middle n \09Set size of inner dimension\00", align 1
@str.34 = private unnamed_addr constant [42 x i8] c"\09 --Nj     n \09Set size of the j dimension\00", align 1
@str.35 = private unnamed_addr constant [39 x i8] c"\09 --ntimes n\09Run the benchmark n times\00", align 1

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
  %21 = load i32, i32* @Nm, align 4, !tbaa !2
  %22 = mul nsw i32 %20, %19
  %23 = mul nsw i32 %22, %20
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = uitofp i64 %26 to double
  %28 = fmul double %27, 0x3EB0C6F7A0B5ED8D
  %29 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %20, i32 %20, i32 %21, double %28)
  %30 = load i32, i32* @Ni, align 4, !tbaa !2
  %31 = load i32, i32* @Nj, align 4, !tbaa !2
  %32 = load i32, i32* @Nm, align 4, !tbaa !2
  %33 = mul nsw i32 %31, %30
  %34 = mul nsw i32 %33, %31
  %35 = mul nsw i32 %34, %31
  %36 = mul nsw i32 %35, %32
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 3
  %39 = uitofp i64 %38 to double
  %40 = fmul double %39, 0x3EB0C6F7A0B5ED8D
  %41 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32 %31, i32 %31, i32 %31, i32 %32, double %40)
  %42 = load i32, i32* @Ni, align 4, !tbaa !2
  %43 = sitofp i32 %42 to double
  %44 = fmul double %43, 2.000000e+00
  %45 = load i32, i32* @Nj, align 4, !tbaa !2
  %46 = sitofp i32 %45 to double
  %47 = fmul double %44, %46
  %48 = load i32, i32* @Nk, align 4, !tbaa !2
  %49 = sitofp i32 %48 to double
  %50 = fmul double %47, %49
  %51 = load i32, i32* @Nl, align 4, !tbaa !2
  %52 = sitofp i32 %51 to double
  %53 = fmul double %50, %52
  %54 = load i32, i32* @Nm, align 4, !tbaa !2
  %55 = sitofp i32 %54 to double
  %56 = fmul double %53, %55
  %57 = mul nsw i32 %45, %42
  %58 = mul i32 %54, %48
  %59 = mul i32 %58, %57
  %60 = sitofp i32 %59 to double
  %61 = fadd double %56, %60
  %62 = mul i32 %54, %51
  %63 = mul i32 %62, %57
  %64 = sitofp i32 %63 to double
  %65 = fadd double %61, %64
  %66 = mul i32 %62, %42
  %67 = mul i32 %66, %48
  %68 = sitofp i32 %67 to double
  %69 = fadd double %65, %68
  %70 = fmul double %43, 3.000000e+00
  %71 = fadd double %70, %69
  %72 = mul i32 %62, %45
  %73 = mul i32 %72, %48
  %74 = sitofp i32 %73 to double
  %75 = fadd double %71, %74
  %76 = fmul double %75, 0x3EE0C6F7A0B5ED8D
  %77 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %76)
  %78 = load i32, i32* @Ni, align 4, !tbaa !2
  %79 = load i32, i32* @Nj, align 4, !tbaa !2
  %80 = load i32, i32* @Nk, align 4, !tbaa !2
  %81 = load i32, i32* @Nl, align 4, !tbaa !2
  %82 = load i32, i32* @Nm, align 4, !tbaa !2
  %83 = shl i32 %79, 1
  %84 = mul i32 %83, %80
  %85 = mul i32 %84, %81
  %86 = mul i32 %85, %82
  %87 = add i32 %86, 3
  %88 = mul i32 %87, %78
  %89 = sitofp i32 %88 to double
  %90 = sitofp i32 %78 to double
  %91 = fmul double %90, 2.000000e+00
  %92 = sitofp i32 %79 to double
  %93 = fmul double %91, %92
  %94 = sitofp i32 %80 to double
  %95 = fmul double %93, %94
  %96 = sitofp i32 %82 to double
  %97 = fmul double %95, %96
  %98 = fadd double %97, %89
  %99 = sitofp i32 %81 to double
  %100 = fmul double %93, %99
  %101 = fmul double %100, %96
  %102 = fadd double %101, %98
  %103 = fmul double %91, %94
  %104 = fmul double %103, %99
  %105 = fmul double %104, %96
  %106 = fadd double %105, %102
  %107 = fmul double %92, 2.000000e+00
  %108 = fmul double %107, %94
  %109 = fmul double %108, %99
  %110 = fmul double %109, %96
  %111 = fadd double %110, %106
  %112 = fmul double %111, 0x3EE0C6F7A0B5ED8D
  %113 = add nsw i32 %78, 7
  %114 = and i32 %113, -8
  %115 = sdiv i32 %114, 8
  store i32 %115, i32* @Ng, align 4, !tbaa !2
  %116 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 8)
  %117 = load i32, i32* @ntimes, align 4, !tbaa !2
  %118 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = tail call i32 @putchar(i32 10)
  %120 = load i32, i32* @ntimes, align 4, !tbaa !2
  %121 = zext i32 %120 to i64
  %122 = alloca double, i64 %121, align 16
  %123 = bitcast double** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123) #10
  %124 = load i32, i32* @Nj, align 4, !tbaa !2
  %125 = sext i32 %124 to i64
  %126 = shl nsw i64 %125, 6
  %127 = load i32, i32* @Nk, align 4, !tbaa !2
  %128 = sext i32 %127 to i64
  %129 = mul i64 %126, %128
  %130 = load i32, i32* @Nl, align 4, !tbaa !2
  %131 = sext i32 %130 to i64
  %132 = mul i64 %129, %131
  %133 = load i32, i32* @Nm, align 4, !tbaa !2
  %134 = sext i32 %133 to i64
  %135 = mul i64 %132, %134
  %136 = load i32, i32* @Ng, align 4, !tbaa !2
  %137 = sext i32 %136 to i64
  %138 = mul i64 %135, %137
  %139 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %138) #10
  %140 = bitcast double** %3 to i8**
  store i8* %139, i8** %140, align 8, !tbaa !6
  %141 = bitcast double** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %141) #10
  %142 = load i32, i32* @Nj, align 4, !tbaa !2
  %143 = sext i32 %142 to i64
  %144 = shl nsw i64 %143, 6
  %145 = load i32, i32* @Nk, align 4, !tbaa !2
  %146 = sext i32 %145 to i64
  %147 = mul i64 %144, %146
  %148 = load i32, i32* @Nl, align 4, !tbaa !2
  %149 = sext i32 %148 to i64
  %150 = mul i64 %147, %149
  %151 = load i32, i32* @Nm, align 4, !tbaa !2
  %152 = sext i32 %151 to i64
  %153 = mul i64 %150, %152
  %154 = load i32, i32* @Ng, align 4, !tbaa !2
  %155 = sext i32 %154 to i64
  %156 = mul i64 %153, %155
  %157 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %156) #10
  %158 = bitcast double** %4 to i8**
  store i8* %157, i8** %158, align 8, !tbaa !6
  %159 = bitcast double** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %159) #10
  %160 = load i32, i32* @Nj, align 4, !tbaa !2
  %161 = sext i32 %160 to i64
  %162 = shl nsw i64 %161, 6
  %163 = load i32, i32* @Nk, align 4, !tbaa !2
  %164 = sext i32 %163 to i64
  %165 = mul i64 %162, %164
  %166 = load i32, i32* @Nm, align 4, !tbaa !2
  %167 = sext i32 %166 to i64
  %168 = mul i64 %165, %167
  %169 = load i32, i32* @Ng, align 4, !tbaa !2
  %170 = sext i32 %169 to i64
  %171 = mul i64 %168, %170
  %172 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %171) #10
  %173 = bitcast double** %5 to i8**
  store i8* %172, i8** %173, align 8, !tbaa !6
  %174 = bitcast double** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %174) #10
  %175 = load i32, i32* @Nj, align 4, !tbaa !2
  %176 = sext i32 %175 to i64
  %177 = shl nsw i64 %176, 6
  %178 = load i32, i32* @Nl, align 4, !tbaa !2
  %179 = sext i32 %178 to i64
  %180 = mul i64 %177, %179
  %181 = load i32, i32* @Nm, align 4, !tbaa !2
  %182 = sext i32 %181 to i64
  %183 = mul i64 %180, %182
  %184 = load i32, i32* @Ng, align 4, !tbaa !2
  %185 = sext i32 %184 to i64
  %186 = mul i64 %183, %185
  %187 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %186) #10
  %188 = bitcast double** %6 to i8**
  store i8* %187, i8** %188, align 8, !tbaa !6
  %189 = bitcast double** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %189) #10
  %190 = load i32, i32* @Nk, align 4, !tbaa !2
  %191 = sext i32 %190 to i64
  %192 = shl nsw i64 %191, 6
  %193 = load i32, i32* @Nl, align 4, !tbaa !2
  %194 = sext i32 %193 to i64
  %195 = mul i64 %192, %194
  %196 = load i32, i32* @Nm, align 4, !tbaa !2
  %197 = sext i32 %196 to i64
  %198 = mul i64 %195, %197
  %199 = load i32, i32* @Ng, align 4, !tbaa !2
  %200 = sext i32 %199 to i64
  %201 = mul i64 %198, %200
  %202 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %201) #10
  %203 = bitcast double** %7 to i8**
  store i8* %202, i8** %203, align 8, !tbaa !6
  %204 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %204) #10
  %205 = load i32, i32* @Ng, align 4, !tbaa !2
  %206 = sext i32 %205 to i64
  %207 = shl nsw i64 %206, 6
  %208 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %207) #10
  %209 = bitcast double** %8 to i8**
  store i8* %208, i8** %209, align 8, !tbaa !6
  %210 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %210) #10
  %211 = load i32, i32* @Ng, align 4, !tbaa !2
  %212 = sext i32 %211 to i64
  %213 = shl nsw i64 %212, 6
  %214 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %213) #10
  %215 = bitcast double** %9 to i8**
  store i8* %214, i8** %215, align 8, !tbaa !6
  %216 = bitcast double** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %216) #10
  %217 = load i32, i32* @Ng, align 4, !tbaa !2
  %218 = sext i32 %217 to i64
  %219 = shl nsw i64 %218, 6
  %220 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %219) #10
  %221 = bitcast double** %10 to i8**
  store i8* %220, i8** %221, align 8, !tbaa !6
  %222 = bitcast double** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %222) #10
  %223 = load i32, i32* @Nj, align 4, !tbaa !2
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 3
  %226 = load i32, i32* @Nk, align 4, !tbaa !2
  %227 = sext i32 %226 to i64
  %228 = mul i64 %225, %227
  %229 = load i32, i32* @Nl, align 4, !tbaa !2
  %230 = sext i32 %229 to i64
  %231 = mul i64 %228, %230
  %232 = load i32, i32* @Nm, align 4, !tbaa !2
  %233 = sext i32 %232 to i64
  %234 = mul i64 %231, %233
  %235 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %234) #10
  %236 = bitcast double** %11 to i8**
  store i8* %235, i8** %236, align 8, !tbaa !6
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** nonnull %3, double** nonnull %4, double** nonnull %5, double** nonnull %6, double** nonnull %7, double** nonnull %8, double** nonnull %9, double** nonnull %10, double** nonnull %11) #10
  %237 = call double @omp_get_wtime() #10
  %238 = load i32, i32* @ntimes, align 4, !tbaa !2
  %239 = icmp sgt i32 %238, 0
  %240 = call double @omp_get_wtime() #10
  br i1 %239, label %241, label %252

241:                                              ; preds = %2
  %242 = bitcast double** %4 to [8 x double]**
  %243 = bitcast double** %3 to [8 x double]**
  %244 = bitcast double** %5 to [8 x double]**
  %245 = bitcast double** %6 to [8 x double]**
  %246 = bitcast double** %7 to [8 x double]**
  %247 = bitcast double** %8 to [8 x double]**
  %248 = bitcast double** %9 to [8 x double]**
  %249 = bitcast double** %10 to [8 x double]**
  %250 = bitcast double** %3 to i64*
  %251 = bitcast double** %4 to i64*
  br label %265

252:                                              ; preds = %265, %2
  %253 = phi double [ %240, %2 ], [ %291, %265 ]
  %254 = load i32, i32* @Nj, align 4, !tbaa !2
  %255 = load i32, i32* @Nk, align 4, !tbaa !2
  %256 = mul nsw i32 %255, %254
  %257 = load i32, i32* @Nl, align 4, !tbaa !2
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* @Nm, align 4, !tbaa !2
  %260 = mul nsw i32 %258, %259
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %292

262:                                              ; preds = %252
  %263 = load double*, double** %11, align 8, !tbaa !6
  %264 = zext i32 %260 to i64
  br label %299

265:                                              ; preds = %241, %265
  %266 = phi i64 [ 0, %241 ], [ %287, %265 ]
  %267 = phi double [ %240, %241 ], [ %291, %265 ]
  %268 = load i32, i32* @Ng, align 4, !tbaa !2
  %269 = load i32, i32* @Nj, align 4, !tbaa !2
  %270 = load i32, i32* @Nk, align 4, !tbaa !2
  %271 = load i32, i32* @Nl, align 4, !tbaa !2
  %272 = load i32, i32* @Nm, align 4, !tbaa !2
  %273 = load [8 x double]*, [8 x double]** %242, align 8, !tbaa !6
  %274 = load [8 x double]*, [8 x double]** %243, align 8, !tbaa !6
  %275 = load [8 x double]*, [8 x double]** %244, align 8, !tbaa !6
  %276 = load [8 x double]*, [8 x double]** %245, align 8, !tbaa !6
  %277 = load [8 x double]*, [8 x double]** %246, align 8, !tbaa !6
  %278 = load [8 x double]*, [8 x double]** %247, align 8, !tbaa !6
  %279 = load [8 x double]*, [8 x double]** %248, align 8, !tbaa !6
  %280 = load [8 x double]*, [8 x double]** %249, align 8, !tbaa !6
  %281 = load double*, double** %11, align 8, !tbaa !6
  call void @kernel(i32 %268, i32 undef, i32 %269, i32 %270, i32 %271, i32 %272, [8 x double]* %273, [8 x double]* %274, [8 x double]* %275, [8 x double]* %276, [8 x double]* %277, [8 x double]* %278, [8 x double]* %279, [8 x double]* %280, double* %281)
  %282 = load i64, i64* %250, align 8, !tbaa !6
  %283 = load i64, i64* %251, align 8, !tbaa !6
  store i64 %283, i64* %250, align 8, !tbaa !6
  store i64 %282, i64* %251, align 8, !tbaa !6
  %284 = call double @omp_get_wtime() #10
  %285 = fsub double %284, %267
  %286 = getelementptr inbounds double, double* %122, i64 %266
  store double %285, double* %286, align 8, !tbaa !8
  %287 = add nuw nsw i64 %266, 1
  %288 = load i32, i32* @ntimes, align 4, !tbaa !2
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  %291 = call double @omp_get_wtime() #10
  br i1 %290, label %265, label %252

292:                                              ; preds = %299, %252
  %293 = phi double [ 0.000000e+00, %252 ], [ %304, %299 ]
  %294 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), double %293)
  %295 = load i32, i32* @ntimes, align 4, !tbaa !2
  %296 = icmp sgt i32 %295, 1
  br i1 %296, label %297, label %307

297:                                              ; preds = %292
  %298 = zext i32 %295 to i64
  br label %329

299:                                              ; preds = %262, %299
  %300 = phi i64 [ 0, %262 ], [ %305, %299 ]
  %301 = phi double [ 0.000000e+00, %262 ], [ %304, %299 ]
  %302 = getelementptr inbounds double, double* %263, i64 %300
  %303 = load double, double* %302, align 8, !tbaa !8
  %304 = fadd double %301, %303
  %305 = add nuw nsw i64 %300, 1
  %306 = icmp ult i64 %305, %264
  br i1 %306, label %299, label %292

307:                                              ; preds = %329, %292
  %308 = phi double [ 0x7FEFFFFFFFFFFFFF, %292 ], [ %337, %329 ]
  %309 = phi double [ 0.000000e+00, %292 ], [ %339, %329 ]
  %310 = phi double [ 0.000000e+00, %292 ], [ %340, %329 ]
  %311 = add nsw i32 %295, -1
  %312 = sitofp i32 %311 to double
  %313 = fdiv double %310, %312
  %314 = call i32 @putchar(i32 10)
  %315 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str, i64 0, i64 0))
  %316 = fdiv double %112, %308
  %317 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), double %316, double %308, double %309, double %313)
  %318 = fsub double %253, %237
  %319 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), double %318)
  %320 = load i8*, i8** %140, align 8, !tbaa !6
  call void @free(i8* %320) #10
  %321 = load i8*, i8** %158, align 8, !tbaa !6
  call void @free(i8* %321) #10
  %322 = load i8*, i8** %173, align 8, !tbaa !6
  call void @free(i8* %322) #10
  %323 = load i8*, i8** %188, align 8, !tbaa !6
  call void @free(i8* %323) #10
  %324 = load i8*, i8** %203, align 8, !tbaa !6
  call void @free(i8* %324) #10
  %325 = load i8*, i8** %209, align 8, !tbaa !6
  call void @free(i8* %325) #10
  %326 = load i8*, i8** %215, align 8, !tbaa !6
  call void @free(i8* %326) #10
  %327 = load i8*, i8** %221, align 8, !tbaa !6
  call void @free(i8* %327) #10
  %328 = load i8*, i8** %236, align 8, !tbaa !6
  call void @free(i8* %328) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %222) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %216) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %210) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %204) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %189) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %174) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %159) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %141) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #10
  ret i32 0

329:                                              ; preds = %297, %329
  %330 = phi i64 [ 1, %297 ], [ %341, %329 ]
  %331 = phi double [ 0.000000e+00, %297 ], [ %340, %329 ]
  %332 = phi double [ 0.000000e+00, %297 ], [ %339, %329 ]
  %333 = phi double [ 0x7FEFFFFFFFFFFFFF, %297 ], [ %337, %329 ]
  %334 = getelementptr inbounds double, double* %122, i64 %330
  %335 = load double, double* %334, align 8, !tbaa !8
  %336 = fcmp olt double %333, %335
  %337 = select i1 %336, double %333, double %335
  %338 = fcmp ogt double %332, %335
  %339 = select i1 %338, double %332, double %335
  %340 = fadd double %331, %335
  %341 = add nuw nsw i64 %330, 1
  %342 = icmp ult i64 %341, %298
  br i1 %342, label %329, label %307
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
  %10 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #11
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
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #11
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
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #11
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
  %40 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #11
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
  %50 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #11
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
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %61) #12
  tail call void @exit(i32 1) #13
  unreachable

63:                                               ; preds = %49
  %64 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i8*, i8** %1, align 8, !tbaa !6
  %68 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %67)
  %69 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.31, i64 0, i64 0))
  %70 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.32, i64 0, i64 0))
  %71 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.33, i64 0, i64 0))
  %72 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @str.34, i64 0, i64 0))
  %73 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.35, i64 0, i64 0))
  %74 = tail call i32 @putchar(i32 10)
  %75 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 64)
  %76 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i32 16)
  %77 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 128)
  tail call void @exit(i32 0) #13
  unreachable

78:                                               ; preds = %63
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* %9) #12
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
  br label %119

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
  br i1 %51, label %118, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @Ng, align 4
  %54 = icmp sgt i32 %53, 0
  %55 = load i32, i32* @Nl, align 4
  %56 = icmp slt i32 %55, 1
  %57 = load i32, i32* @Nk, align 4
  %58 = icmp slt i32 %57, 1
  %59 = load i32, i32* @Nj, align 4
  %60 = icmp sgt i32 %59, 0
  %61 = sext i32 %59 to i64
  %62 = sext i32 %57 to i64
  %63 = zext i32 %55 to i64
  %64 = zext i32 %57 to i64
  %65 = zext i32 %59 to i64
  br label %66

66:                                               ; preds = %112, %52
  %67 = phi i32 [ %50, %52 ], [ %113, %112 ]
  br i1 %54, label %68, label %112

68:                                               ; preds = %66
  %69 = mul nsw i32 %53, %67
  br label %70

70:                                               ; preds = %68, %115
  %71 = phi i32 [ %116, %115 ], [ 0, %68 ]
  %72 = or i1 %56, %58
  br i1 %72, label %115, label %73

73:                                               ; preds = %70
  %74 = add nsw i32 %69, %71
  %75 = mul nsw i32 %55, %74
  %76 = sext i32 %75 to i64
  br label %77

77:                                               ; preds = %84, %73
  %78 = phi i64 [ 0, %73 ], [ %85, %84 ]
  %79 = load double*, double** %2, align 8
  %80 = load double*, double** %3, align 8
  br i1 %60, label %81, label %84

81:                                               ; preds = %77
  %82 = add nsw i64 %78, %76
  %83 = mul nsw i64 %82, %62
  br label %87

84:                                               ; preds = %91, %77
  %85 = add nuw nsw i64 %78, 1
  %86 = icmp eq i64 %85, %63
  br i1 %86, label %115, label %77

87:                                               ; preds = %91, %81
  %88 = phi i64 [ 0, %81 ], [ %92, %91 ]
  %89 = add nsw i64 %83, %88
  %90 = mul nsw i64 %89, %61
  br label %94

91:                                               ; preds = %109
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %64
  br i1 %93, label %84, label %87

94:                                               ; preds = %109, %87
  %95 = phi i64 [ %110, %109 ], [ 0, %87 ]
  %96 = add nsw i64 %90, %95
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 3
  %99 = sext i32 %98 to i64
  br label %100

100:                                              ; preds = %100, %94
  %101 = phi i64 [ 0, %94 ], [ %107, %100 ]
  %102 = add nuw nsw i64 %101, %99
  %103 = getelementptr inbounds double, double* %79, i64 %102
  %104 = bitcast double* %103 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %104, align 8, !tbaa !8, !llvm.access.group !10
  %105 = getelementptr inbounds double, double* %80, i64 %102
  %106 = bitcast double* %105 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %106, align 8, !tbaa !8, !llvm.access.group !10
  %107 = add i64 %101, 2
  %108 = icmp eq i64 %107, 8
  br i1 %108, label %109, label %100, !llvm.loop !11

109:                                              ; preds = %100
  %110 = add nuw nsw i64 %95, 1
  %111 = icmp eq i64 %110, %65
  br i1 %111, label %91, label %94

112:                                              ; preds = %115, %66
  %113 = add nsw i32 %67, 1
  %114 = icmp slt i32 %67, %49
  br i1 %114, label %66, label %118

115:                                              ; preds = %84, %70
  %116 = add nuw nsw i32 %71, 1
  %117 = icmp slt i32 %116, %53
  br i1 %117, label %70, label %112

118:                                              ; preds = %112, %41
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %46) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #10
  br label %119

119:                                              ; preds = %39, %118
  %120 = phi i32 [ %40, %39 ], [ %46, %118 ]
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %120) #10
  %121 = load i32, i32* @Nm, align 4, !tbaa !2
  %122 = add nsw i32 %121, -1
  %123 = icmp sgt i32 %121, 0
  br i1 %123, label %124, label %190

124:                                              ; preds = %119
  %125 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %125) #10
  store i32 0, i32* %16, align 4, !tbaa !2
  %126 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %126) #10
  store i32 %122, i32* %17, align 4, !tbaa !2
  %127 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %127) #10
  store i32 1, i32* %18, align 4, !tbaa !2
  %128 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %128) #10
  store i32 0, i32* %19, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %120, i32 34, i32* nonnull %19, i32* nonnull %16, i32* nonnull %17, i32* nonnull %18, i32 1, i32 1) #10
  %129 = load i32, i32* %17, align 4, !tbaa !2
  %130 = icmp slt i32 %129, %121
  %131 = select i1 %130, i32 %129, i32 %122
  store i32 %131, i32* %17, align 4, !tbaa !2
  %132 = load i32, i32* %16, align 4, !tbaa !2
  %133 = icmp sgt i32 %132, %131
  br i1 %133, label %189, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* @Ng, align 4
  %136 = icmp slt i32 %135, 1
  %137 = load i32, i32* @Nk, align 4
  %138 = icmp slt i32 %137, 1
  %139 = load i32, i32* @Nj, align 4
  %140 = icmp sgt i32 %139, 0
  %141 = sext i32 %139 to i64
  %142 = sext i32 %137 to i64
  %143 = sext i32 %132 to i64
  %144 = sext i32 %135 to i64
  %145 = sext i32 %131 to i64
  %146 = zext i32 %135 to i64
  %147 = zext i32 %137 to i64
  %148 = zext i32 %139 to i64
  br label %149

149:                                              ; preds = %186, %134
  %150 = phi i64 [ %187, %186 ], [ %143, %134 ]
  %151 = or i1 %136, %138
  br i1 %151, label %186, label %152

152:                                              ; preds = %149
  %153 = mul nsw i64 %150, %144
  br label %154

154:                                              ; preds = %160, %152
  %155 = phi i64 [ 0, %152 ], [ %161, %160 ]
  %156 = load double*, double** %4, align 8
  br i1 %140, label %157, label %160

157:                                              ; preds = %154
  %158 = add nsw i64 %153, %155
  %159 = mul nsw i64 %158, %142
  br label %163

160:                                              ; preds = %167, %154
  %161 = add nuw nsw i64 %155, 1
  %162 = icmp eq i64 %161, %146
  br i1 %162, label %186, label %154

163:                                              ; preds = %167, %157
  %164 = phi i64 [ 0, %157 ], [ %168, %167 ]
  %165 = add nsw i64 %159, %164
  %166 = mul nsw i64 %165, %141
  br label %170

167:                                              ; preds = %183
  %168 = add nuw nsw i64 %164, 1
  %169 = icmp eq i64 %168, %147
  br i1 %169, label %160, label %163

170:                                              ; preds = %183, %163
  %171 = phi i64 [ %184, %183 ], [ 0, %163 ]
  %172 = add nsw i64 %166, %171
  %173 = trunc i64 %172 to i32
  %174 = shl i32 %173, 3
  %175 = sext i32 %174 to i64
  br label %176

176:                                              ; preds = %176, %170
  %177 = phi i64 [ 0, %170 ], [ %181, %176 ]
  %178 = add nuw nsw i64 %177, %175
  %179 = getelementptr inbounds double, double* %156, i64 %178
  %180 = bitcast double* %179 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %180, align 8, !tbaa !8, !llvm.access.group !14
  %181 = add i64 %177, 2
  %182 = icmp eq i64 %181, 8
  br i1 %182, label %183, label %176, !llvm.loop !15

183:                                              ; preds = %176
  %184 = add nuw nsw i64 %171, 1
  %185 = icmp eq i64 %184, %148
  br i1 %185, label %167, label %170

186:                                              ; preds = %160, %149
  %187 = add nsw i64 %150, 1
  %188 = icmp slt i64 %150, %145
  br i1 %188, label %149, label %189

189:                                              ; preds = %186, %124
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %120) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %128) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %127) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %126) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %125) #10
  br label %190

190:                                              ; preds = %189, %119
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %120) #10
  %191 = load i32, i32* @Nm, align 4, !tbaa !2
  %192 = add nsw i32 %191, -1
  %193 = icmp sgt i32 %191, 0
  br i1 %193, label %194, label %260

194:                                              ; preds = %190
  %195 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %195) #10
  store i32 0, i32* %20, align 4, !tbaa !2
  %196 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %196) #10
  store i32 %192, i32* %21, align 4, !tbaa !2
  %197 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %197) #10
  store i32 1, i32* %22, align 4, !tbaa !2
  %198 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %198) #10
  store i32 0, i32* %23, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %120, i32 34, i32* nonnull %23, i32* nonnull %20, i32* nonnull %21, i32* nonnull %22, i32 1, i32 1) #10
  %199 = load i32, i32* %21, align 4, !tbaa !2
  %200 = icmp slt i32 %199, %191
  %201 = select i1 %200, i32 %199, i32 %192
  store i32 %201, i32* %21, align 4, !tbaa !2
  %202 = load i32, i32* %20, align 4, !tbaa !2
  %203 = icmp sgt i32 %202, %201
  br i1 %203, label %259, label %204

204:                                              ; preds = %194
  %205 = load i32, i32* @Ng, align 4
  %206 = icmp slt i32 %205, 1
  %207 = load i32, i32* @Nl, align 4
  %208 = icmp slt i32 %207, 1
  %209 = load i32, i32* @Nj, align 4
  %210 = icmp sgt i32 %209, 0
  %211 = sext i32 %209 to i64
  %212 = sext i32 %207 to i64
  %213 = sext i32 %202 to i64
  %214 = sext i32 %205 to i64
  %215 = sext i32 %201 to i64
  %216 = zext i32 %205 to i64
  %217 = zext i32 %207 to i64
  %218 = zext i32 %209 to i64
  br label %219

219:                                              ; preds = %256, %204
  %220 = phi i64 [ %257, %256 ], [ %213, %204 ]
  %221 = or i1 %206, %208
  br i1 %221, label %256, label %222

222:                                              ; preds = %219
  %223 = mul nsw i64 %220, %214
  br label %224

224:                                              ; preds = %230, %222
  %225 = phi i64 [ 0, %222 ], [ %231, %230 ]
  %226 = load double*, double** %5, align 8
  br i1 %210, label %227, label %230

227:                                              ; preds = %224
  %228 = add nsw i64 %223, %225
  %229 = mul nsw i64 %228, %212
  br label %233

230:                                              ; preds = %237, %224
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, %216
  br i1 %232, label %256, label %224

233:                                              ; preds = %237, %227
  %234 = phi i64 [ 0, %227 ], [ %238, %237 ]
  %235 = add nsw i64 %229, %234
  %236 = mul nsw i64 %235, %211
  br label %240

237:                                              ; preds = %253
  %238 = add nuw nsw i64 %234, 1
  %239 = icmp eq i64 %238, %217
  br i1 %239, label %230, label %233

240:                                              ; preds = %253, %233
  %241 = phi i64 [ %254, %253 ], [ 0, %233 ]
  %242 = add nsw i64 %236, %241
  %243 = trunc i64 %242 to i32
  %244 = shl i32 %243, 3
  %245 = sext i32 %244 to i64
  br label %246

246:                                              ; preds = %246, %240
  %247 = phi i64 [ 0, %240 ], [ %251, %246 ]
  %248 = add nuw nsw i64 %247, %245
  %249 = getelementptr inbounds double, double* %226, i64 %248
  %250 = bitcast double* %249 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %250, align 8, !tbaa !8, !llvm.access.group !17
  %251 = add i64 %247, 2
  %252 = icmp eq i64 %251, 8
  br i1 %252, label %253, label %246, !llvm.loop !18

253:                                              ; preds = %246
  %254 = add nuw nsw i64 %241, 1
  %255 = icmp eq i64 %254, %218
  br i1 %255, label %237, label %240

256:                                              ; preds = %230, %219
  %257 = add nsw i64 %220, 1
  %258 = icmp slt i64 %220, %215
  br i1 %258, label %219, label %259

259:                                              ; preds = %256, %194
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %120) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %198) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %197) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %196) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %195) #10
  br label %260

260:                                              ; preds = %259, %190
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %120) #10
  %261 = load i32, i32* @Nm, align 4, !tbaa !2
  %262 = add nsw i32 %261, -1
  %263 = icmp sgt i32 %261, 0
  br i1 %263, label %264, label %330

264:                                              ; preds = %260
  %265 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %265) #10
  store i32 0, i32* %24, align 4, !tbaa !2
  %266 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %266) #10
  store i32 %262, i32* %25, align 4, !tbaa !2
  %267 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %267) #10
  store i32 1, i32* %26, align 4, !tbaa !2
  %268 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %268) #10
  store i32 0, i32* %27, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %120, i32 34, i32* nonnull %27, i32* nonnull %24, i32* nonnull %25, i32* nonnull %26, i32 1, i32 1) #10
  %269 = load i32, i32* %25, align 4, !tbaa !2
  %270 = icmp slt i32 %269, %261
  %271 = select i1 %270, i32 %269, i32 %262
  store i32 %271, i32* %25, align 4, !tbaa !2
  %272 = load i32, i32* %24, align 4, !tbaa !2
  %273 = icmp sgt i32 %272, %271
  br i1 %273, label %329, label %274

274:                                              ; preds = %264
  %275 = load i32, i32* @Ng, align 4
  %276 = icmp slt i32 %275, 1
  %277 = load i32, i32* @Nl, align 4
  %278 = icmp slt i32 %277, 1
  %279 = load i32, i32* @Nk, align 4
  %280 = icmp sgt i32 %279, 0
  %281 = sext i32 %279 to i64
  %282 = sext i32 %277 to i64
  %283 = sext i32 %272 to i64
  %284 = sext i32 %275 to i64
  %285 = sext i32 %271 to i64
  %286 = zext i32 %275 to i64
  %287 = zext i32 %277 to i64
  %288 = zext i32 %279 to i64
  br label %289

289:                                              ; preds = %326, %274
  %290 = phi i64 [ %327, %326 ], [ %283, %274 ]
  %291 = or i1 %276, %278
  br i1 %291, label %326, label %292

292:                                              ; preds = %289
  %293 = mul nsw i64 %290, %284
  br label %294

294:                                              ; preds = %300, %292
  %295 = phi i64 [ 0, %292 ], [ %301, %300 ]
  %296 = load double*, double** %6, align 8
  br i1 %280, label %297, label %300

297:                                              ; preds = %294
  %298 = add nsw i64 %293, %295
  %299 = mul nsw i64 %298, %282
  br label %303

300:                                              ; preds = %307, %294
  %301 = add nuw nsw i64 %295, 1
  %302 = icmp eq i64 %301, %286
  br i1 %302, label %326, label %294

303:                                              ; preds = %307, %297
  %304 = phi i64 [ 0, %297 ], [ %308, %307 ]
  %305 = add nsw i64 %299, %304
  %306 = mul nsw i64 %305, %281
  br label %310

307:                                              ; preds = %323
  %308 = add nuw nsw i64 %304, 1
  %309 = icmp eq i64 %308, %287
  br i1 %309, label %300, label %303

310:                                              ; preds = %323, %303
  %311 = phi i64 [ %324, %323 ], [ 0, %303 ]
  %312 = add nsw i64 %306, %311
  %313 = trunc i64 %312 to i32
  %314 = shl i32 %313, 3
  %315 = sext i32 %314 to i64
  br label %316

316:                                              ; preds = %316, %310
  %317 = phi i64 [ 0, %310 ], [ %321, %316 ]
  %318 = add nuw nsw i64 %317, %315
  %319 = getelementptr inbounds double, double* %296, i64 %318
  %320 = bitcast double* %319 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %320, align 8, !tbaa !8, !llvm.access.group !20
  %321 = add i64 %317, 2
  %322 = icmp eq i64 %321, 8
  br i1 %322, label %323, label %316, !llvm.loop !21

323:                                              ; preds = %316
  %324 = add nuw nsw i64 %311, 1
  %325 = icmp eq i64 %324, %288
  br i1 %325, label %307, label %310

326:                                              ; preds = %300, %289
  %327 = add nsw i64 %290, 1
  %328 = icmp slt i64 %290, %285
  br i1 %328, label %289, label %329

329:                                              ; preds = %326, %264
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %120) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %268) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %267) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %266) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %265) #10
  br label %330

330:                                              ; preds = %329, %260
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %120) #10
  %331 = load i32, i32* @Ng, align 4, !tbaa !2
  %332 = add nsw i32 %331, -1
  %333 = icmp sgt i32 %331, 0
  br i1 %333, label %334, label %370

334:                                              ; preds = %330
  %335 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %335) #10
  store i32 0, i32* %28, align 4, !tbaa !2
  %336 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %336) #10
  store i32 %332, i32* %29, align 4, !tbaa !2
  %337 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %337) #10
  store i32 1, i32* %30, align 4, !tbaa !2
  %338 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %338) #10
  store i32 0, i32* %31, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %120, i32 34, i32* nonnull %31, i32* nonnull %28, i32* nonnull %29, i32* nonnull %30, i32 1, i32 1) #10
  %339 = load i32, i32* %29, align 4, !tbaa !2
  %340 = icmp slt i32 %339, %331
  %341 = select i1 %340, i32 %339, i32 %332
  store i32 %341, i32* %29, align 4, !tbaa !2
  %342 = load i32, i32* %28, align 4, !tbaa !2
  %343 = icmp sgt i32 %342, %341
  br i1 %343, label %369, label %344

344:                                              ; preds = %334
  %345 = load double*, double** %7, align 8, !tbaa !6, !llvm.access.group !23
  %346 = load double*, double** %8, align 8, !tbaa !6, !llvm.access.group !23
  %347 = load double*, double** %9, align 8, !tbaa !6, !llvm.access.group !23
  %348 = sext i32 %342 to i64
  %349 = sext i32 %341 to i64
  br label %350

350:                                              ; preds = %366, %344
  %351 = phi i64 [ %367, %366 ], [ %348, %344 ]
  %352 = trunc i64 %351 to i32
  %353 = shl i32 %352, 3
  %354 = sext i32 %353 to i64
  br label %355

355:                                              ; preds = %355, %350
  %356 = phi i64 [ 0, %350 ], [ %364, %355 ]
  %357 = add nuw nsw i64 %356, %354
  %358 = getelementptr inbounds double, double* %345, i64 %357
  %359 = bitcast double* %358 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %359, align 8, !tbaa !8, !llvm.access.group !23
  %360 = getelementptr inbounds double, double* %346, i64 %357
  %361 = bitcast double* %360 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %361, align 8, !tbaa !8, !llvm.access.group !23
  %362 = getelementptr inbounds double, double* %347, i64 %357
  %363 = bitcast double* %362 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %363, align 8, !tbaa !8, !llvm.access.group !23
  %364 = add i64 %356, 2
  %365 = icmp eq i64 %364, 8
  br i1 %365, label %366, label %355, !llvm.loop !25

366:                                              ; preds = %355
  %367 = add nsw i64 %351, 1
  %368 = icmp slt i64 %351, %349
  br i1 %368, label %350, label %369

369:                                              ; preds = %366, %334
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %120) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %338) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %337) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %336) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %335) #10
  br label %370

370:                                              ; preds = %369, %330
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %120) #10
  %371 = load i32, i32* @Nm, align 4, !tbaa !2
  %372 = add nsw i32 %371, -1
  %373 = icmp sgt i32 %371, 0
  br i1 %373, label %374, label %429

374:                                              ; preds = %370
  %375 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %375) #10
  store i32 0, i32* %32, align 4, !tbaa !2
  %376 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %376) #10
  store i32 %372, i32* %33, align 4, !tbaa !2
  %377 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %377) #10
  store i32 1, i32* %34, align 4, !tbaa !2
  %378 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %378) #10
  store i32 0, i32* %35, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %120, i32 34, i32* nonnull %35, i32* nonnull %32, i32* nonnull %33, i32* nonnull %34, i32 1, i32 1) #10
  %379 = load i32, i32* %33, align 4, !tbaa !2
  %380 = icmp slt i32 %379, %371
  %381 = select i1 %380, i32 %379, i32 %372
  store i32 %381, i32* %33, align 4, !tbaa !2
  %382 = load i32, i32* %32, align 4, !tbaa !2
  %383 = icmp sgt i32 %382, %381
  br i1 %383, label %428, label %384

384:                                              ; preds = %374
  %385 = load i32, i32* @Nl, align 4
  %386 = icmp slt i32 %385, 1
  %387 = load i32, i32* @Nk, align 4
  %388 = icmp slt i32 %387, 1
  %389 = load i32, i32* @Nj, align 4
  %390 = icmp sgt i32 %389, 0
  %391 = mul i32 %382, %385
  %392 = mul i32 %391, %387
  %393 = mul i32 %392, %389
  %394 = mul i32 %385, %387
  %395 = mul i32 %394, %389
  %396 = mul i32 %387, %389
  %397 = zext i32 %389 to i64
  %398 = shl nuw nsw i64 %397, 3
  %399 = zext i32 %387 to i64
  br label %400

400:                                              ; preds = %424, %384
  %401 = phi i32 [ %427, %424 ], [ 0, %384 ]
  %402 = phi i32 [ %425, %424 ], [ %382, %384 ]
  %403 = mul i32 %395, %401
  %404 = add i32 %393, %403
  %405 = or i1 %386, %388
  br i1 %405, label %424, label %406

406:                                              ; preds = %400, %411
  %407 = phi i32 [ %412, %411 ], [ 0, %400 ]
  %408 = mul i32 %396, %407
  %409 = add i32 %404, %408
  %410 = load double*, double** %10, align 8
  br i1 %390, label %414, label %411

411:                                              ; preds = %414, %406
  %412 = add nuw nsw i32 %407, 1
  %413 = icmp eq i32 %412, %385
  br i1 %413, label %424, label %406

414:                                              ; preds = %406, %414
  %415 = phi i64 [ %422, %414 ], [ 0, %406 ]
  %416 = trunc i64 %415 to i32
  %417 = mul i32 %389, %416
  %418 = add i32 %409, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr double, double* %410, i64 %419
  %421 = bitcast double* %420 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %421, i8 0, i64 %398, i1 false)
  %422 = add nuw nsw i64 %415, 1
  %423 = icmp eq i64 %422, %399
  br i1 %423, label %411, label %414

424:                                              ; preds = %411, %400
  %425 = add nsw i32 %402, 1
  %426 = icmp slt i32 %402, %381
  %427 = add i32 %401, 1
  br i1 %426, label %400, label %428

428:                                              ; preds = %424, %374
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %120) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %378) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %377) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %376) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %375) #10
  br label %429

429:                                              ; preds = %428, %370
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %120) #10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

declare !callback !27 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

declare dso_local double @omp_get_wtime() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @kernel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, [8 x double]* noalias nocapture %6, [8 x double]* noalias nocapture readonly %7, [8 x double]* noalias nocapture %8, [8 x double]* noalias nocapture %9, [8 x double]* noalias nocapture %10, [8 x double]* noalias nocapture readonly %11, [8 x double]* noalias nocapture readonly %12, [8 x double]* noalias nocapture readonly %13, double* noalias nocapture %14) local_unnamed_addr #0 {
  %16 = zext i32 %0 to i64
  %17 = zext i32 %4 to i64
  %18 = zext i32 %3 to i64
  %19 = zext i32 %2 to i64
  %20 = icmp sgt i32 %5, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = icmp sgt i32 %0, 0
  %23 = icmp sgt i32 %4, 0
  %24 = icmp sgt i32 %3, 0
  %25 = icmp sgt i32 %2, 0
  %26 = mul nuw i64 %17, %16
  %27 = mul nuw i64 %26, %18
  %28 = mul nuw i64 %17, %18
  %29 = mul nuw i64 %28, %19
  %30 = mul nuw i64 %18, %19
  %31 = mul nuw i64 %17, %19
  %32 = zext i32 %5 to i64
  br label %33

33:                                               ; preds = %60, %21
  %34 = phi i64 [ 0, %21 ], [ %61, %60 ]
  br i1 %22, label %35, label %60

35:                                               ; preds = %33
  %36 = mul nuw nsw i64 %34, %19
  %37 = mul i64 %36, %27
  %38 = getelementptr inbounds [8 x double], [8 x double]* %7, i64 %37
  %39 = mul i64 %36, %16
  %40 = mul i64 %39, %18
  %41 = mul i64 %36, %26
  %42 = mul nsw i64 %27, %34
  %43 = getelementptr inbounds [8 x double], [8 x double]* %6, i64 %37
  %44 = mul nsw i64 %29, %34
  %45 = getelementptr inbounds double, double* %14, i64 %44
  %46 = getelementptr inbounds [8 x double], [8 x double]* %10, i64 %42
  %47 = getelementptr inbounds [8 x double], [8 x double]* %9, i64 %41
  br label %49

48:                                               ; preds = %60, %15
  ret void

49:                                               ; preds = %133, %35
  %50 = phi i64 [ 0, %35 ], [ %134, %133 ]
  br i1 %23, label %51, label %133

51:                                               ; preds = %49
  %52 = mul nsw i64 %29, %50
  %53 = getelementptr inbounds [8 x double], [8 x double]* %38, i64 %52
  %54 = mul nsw i64 %30, %50
  %55 = mul nsw i64 %31, %50
  %56 = mul nsw i64 %28, %50
  %57 = getelementptr inbounds [8 x double], [8 x double]* %43, i64 %52
  %58 = getelementptr inbounds [8 x double], [8 x double]* %46, i64 %56
  %59 = getelementptr inbounds [8 x double], [8 x double]* %47, i64 %55
  br label %63

60:                                               ; preds = %133, %33
  %61 = add nuw nsw i64 %34, 1
  %62 = icmp eq i64 %61, %32
  br i1 %62, label %48, label %33

63:                                               ; preds = %136, %51
  %64 = phi i64 [ 0, %51 ], [ %137, %136 ]
  br i1 %24, label %65, label %136

65:                                               ; preds = %63
  %66 = mul nsw i64 %30, %64
  %67 = getelementptr inbounds [8 x double], [8 x double]* %53, i64 %66
  %68 = getelementptr inbounds [8 x double], [8 x double]* %57, i64 %66
  %69 = getelementptr inbounds double, double* %45, i64 %66
  br i1 %25, label %70, label %136

70:                                               ; preds = %65
  %71 = mul nuw nsw i64 %64, %18
  %72 = mul nuw nsw i64 %64, %19
  %73 = getelementptr inbounds [8 x double], [8 x double]* %58, i64 %71
  %74 = getelementptr inbounds [8 x double], [8 x double]* %59, i64 %72
  br label %75

75:                                               ; preds = %130, %70
  %76 = phi i64 [ 0, %70 ], [ %131, %130 ]
  %77 = mul nuw nsw i64 %76, %19
  %78 = getelementptr inbounds [8 x double], [8 x double]* %67, i64 %77
  %79 = getelementptr inbounds [8 x double], [8 x double]* %8, i64 %40
  %80 = getelementptr inbounds [8 x double], [8 x double]* %73, i64 %76
  %81 = getelementptr inbounds [8 x double], [8 x double]* %68, i64 %77
  %82 = getelementptr inbounds double, double* %69, i64 %77
  %83 = getelementptr inbounds [8 x double], [8 x double]* %79, i64 %54
  %84 = getelementptr inbounds [8 x double], [8 x double]* %83, i64 %77
  br label %85

85:                                               ; preds = %93, %75
  %86 = phi i64 [ 0, %75 ], [ %97, %93 ]
  %87 = getelementptr inbounds [8 x double], [8 x double]* %78, i64 %86
  %88 = getelementptr inbounds [8 x double], [8 x double]* %87, i64 0, i64 256
  %89 = bitcast double* %88 to i8*
  tail call void @llvm.prefetch.p0i8(i8* nonnull %89, i32 0, i32 2, i32 1)
  %90 = getelementptr inbounds [8 x double], [8 x double]* %84, i64 %86
  %91 = getelementptr inbounds [8 x double], [8 x double]* %74, i64 %86
  %92 = getelementptr inbounds [8 x double], [8 x double]* %81, i64 %86
  br label %99

93:                                               ; preds = %99
  %94 = getelementptr inbounds double, double* %82, i64 %86
  %95 = load double, double* %94, align 8, !tbaa !8
  %96 = fadd double %127, %95
  store double %96, double* %94, align 8, !tbaa !8
  %97 = add nuw nsw i64 %86, 1
  %98 = icmp eq i64 %97, %19
  br i1 %98, label %130, label %85

99:                                               ; preds = %99, %85
  %100 = phi i64 [ %128, %99 ], [ 0, %85 ]
  %101 = phi double [ %127, %99 ], [ 0.000000e+00, %85 ]
  %102 = getelementptr inbounds [8 x double], [8 x double]* %87, i64 0, i64 %100
  %103 = load double, double* %102, align 8, !tbaa !8
  %104 = getelementptr inbounds [8 x double], [8 x double]* %11, i64 %50, i64 %100
  %105 = load double, double* %104, align 8, !tbaa !8
  %106 = getelementptr inbounds [8 x double], [8 x double]* %90, i64 0, i64 %100
  %107 = load double, double* %106, align 8, !tbaa !8
  %108 = fmul double %105, %107
  %109 = fadd double %103, %108
  %110 = getelementptr inbounds [8 x double], [8 x double]* %12, i64 %50, i64 %100
  %111 = load double, double* %110, align 8, !tbaa !8
  %112 = getelementptr inbounds [8 x double], [8 x double]* %91, i64 0, i64 %100
  %113 = load double, double* %112, align 8, !tbaa !8
  %114 = fmul double %111, %113
  %115 = fadd double %109, %114
  %116 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 %50, i64 %100
  %117 = load double, double* %116, align 8, !tbaa !8
  %118 = getelementptr inbounds [8 x double], [8 x double]* %80, i64 0, i64 %100
  %119 = load double, double* %118, align 8, !tbaa !8
  %120 = fmul double %117, %119
  %121 = fadd double %115, %120
  %122 = getelementptr inbounds [8 x double], [8 x double]* %92, i64 0, i64 %100
  store double %121, double* %122, align 8, !tbaa !8, !nontemporal !24
  %123 = fmul double %121, 2.000000e-01
  %124 = fsub double %123, %107
  store double %124, double* %106, align 8, !tbaa !8
  %125 = fsub double %123, %113
  store double %125, double* %112, align 8, !tbaa !8
  %126 = fsub double %123, %119
  store double %126, double* %118, align 8, !tbaa !8
  %127 = fadd double %101, %121
  %128 = add nuw nsw i64 %100, 1
  %129 = icmp eq i64 %128, 8
  br i1 %129, label %93, label %99

130:                                              ; preds = %93
  %131 = add nuw nsw i64 %76, 1
  %132 = icmp eq i64 %131, %18
  br i1 %132, label %136, label %75

133:                                              ; preds = %136, %49
  %134 = add nuw nsw i64 %50, 1
  %135 = icmp eq i64 %134, %16
  br i1 %135, label %60, label %49

136:                                              ; preds = %130, %65, %63
  %137 = add nuw nsw i64 %64, 1
  %138 = icmp eq i64 %137, %17
  br i1 %138, label %133, label %63
}

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #6

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
attributes #6 = { inaccessiblemem_or_argmemonly nounwind willreturn }
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
!1 = !{!"clang version 10.0.0-++20200412073436+50d7e5d5e7d-1~exp1~20200412054917.132 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = distinct !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.parallel_accesses", !10}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{}
!15 = distinct !{!15, !16, !13}
!16 = !{!"llvm.loop.parallel_accesses", !14}
!17 = distinct !{}
!18 = distinct !{!18, !19, !13}
!19 = !{!"llvm.loop.parallel_accesses", !17}
!20 = distinct !{}
!21 = distinct !{!21, !22, !13}
!22 = !{!"llvm.loop.parallel_accesses", !20}
!23 = distinct !{}
!24 = !{!"1"}
!25 = distinct !{!25, !26, !13}
!26 = !{!"llvm.loop.parallel_accesses", !23}
!27 = !{!28}
!28 = !{i64 2, i64 -1, i64 -1, i1 true}
