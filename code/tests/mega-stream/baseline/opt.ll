; ModuleID = 'opt.bc'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  tail call void @parse_args(i32 %0, i8** %1)
  %27 = load i32, i32* @Ni, align 4, !tbaa !2
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = uitofp i64 %29 to double
  %31 = fmul double %30, 1.000000e-03
  %32 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %27, double %31)
  %33 = load i32, i32* @Ni, align 4, !tbaa !2
  %34 = load i32, i32* @Nj, align 4, !tbaa !2
  %35 = load i32, i32* @Nk, align 4, !tbaa !2
  %36 = load i32, i32* @Nm, align 4, !tbaa !2
  %37 = mul nsw i32 %34, %33
  %38 = mul i32 %36, %35
  %39 = mul i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 3
  %42 = uitofp i64 %41 to double
  %43 = fmul double %42, 0x3EB0C6F7A0B5ED8D
  %44 = load i32, i32* @Nl, align 4, !tbaa !2
  %45 = mul i32 %36, %37
  %46 = mul i32 %45, %44
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = uitofp i64 %48 to double
  %50 = fmul double %49, 0x3EB0C6F7A0B5ED8D
  %51 = mul i32 %38, %33
  %52 = mul i32 %51, %44
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = uitofp i64 %54 to double
  %56 = fmul double %55, 0x3EB0C6F7A0B5ED8D
  %57 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([160 x i8], [160 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %36, double %43, i32 %33, i32 %34, i32 %44, i32 %36, double %50, i32 %33, i32 %35, i32 %44, i32 %36, double %56)
  %58 = load i32, i32* @Ni, align 4, !tbaa !2
  %59 = load i32, i32* @Nj, align 4, !tbaa !2
  %60 = load i32, i32* @Nk, align 4, !tbaa !2
  %61 = load i32, i32* @Nl, align 4, !tbaa !2
  %62 = load i32, i32* @Nm, align 4, !tbaa !2
  %63 = mul nsw i32 %59, %58
  %64 = mul nsw i32 %63, %60
  %65 = mul nsw i32 %64, %61
  %66 = mul nsw i32 %65, %62
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  %69 = uitofp i64 %68 to double
  %70 = fmul double %69, 0x3EB0C6F7A0B5ED8D
  %71 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, double %70)
  %72 = load i32, i32* @Ni, align 4, !tbaa !2
  %73 = sitofp i32 %72 to double
  %74 = fmul double %73, 2.000000e+00
  %75 = load i32, i32* @Nj, align 4, !tbaa !2
  %76 = sitofp i32 %75 to double
  %77 = fmul double %74, %76
  %78 = load i32, i32* @Nk, align 4, !tbaa !2
  %79 = sitofp i32 %78 to double
  %80 = fmul double %77, %79
  %81 = load i32, i32* @Nl, align 4, !tbaa !2
  %82 = sitofp i32 %81 to double
  %83 = fmul double %80, %82
  %84 = load i32, i32* @Nm, align 4, !tbaa !2
  %85 = sitofp i32 %84 to double
  %86 = fmul double %83, %85
  %87 = mul nsw i32 %75, %72
  %88 = mul i32 %84, %78
  %89 = mul i32 %88, %87
  %90 = sitofp i32 %89 to double
  %91 = fadd double %86, %90
  %92 = mul i32 %84, %81
  %93 = mul i32 %92, %87
  %94 = sitofp i32 %93 to double
  %95 = fadd double %91, %94
  %96 = mul i32 %92, %72
  %97 = mul i32 %96, %78
  %98 = sitofp i32 %97 to double
  %99 = fadd double %95, %98
  %100 = fmul double %73, 3.000000e+00
  %101 = fadd double %100, %99
  %102 = mul i32 %92, %75
  %103 = mul i32 %102, %78
  %104 = sitofp i32 %103 to double
  %105 = fadd double %101, %104
  %106 = fmul double %105, 0x3EE0C6F7A0B5ED8D
  %107 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %106)
  %108 = load i32, i32* @Ni, align 4, !tbaa !2
  %109 = load i32, i32* @Nj, align 4, !tbaa !2
  %110 = load i32, i32* @Nk, align 4, !tbaa !2
  %111 = load i32, i32* @Nl, align 4, !tbaa !2
  %112 = load i32, i32* @Nm, align 4, !tbaa !2
  %113 = shl i32 %109, 1
  %114 = mul i32 %113, %110
  %115 = mul i32 %114, %111
  %116 = mul i32 %115, %112
  %117 = add i32 %116, 3
  %118 = mul i32 %117, %108
  %119 = sitofp i32 %118 to double
  %120 = sitofp i32 %108 to double
  %121 = fmul double %120, 2.000000e+00
  %122 = sitofp i32 %109 to double
  %123 = fmul double %121, %122
  %124 = sitofp i32 %110 to double
  %125 = fmul double %123, %124
  %126 = sitofp i32 %112 to double
  %127 = fmul double %125, %126
  %128 = fadd double %127, %119
  %129 = sitofp i32 %111 to double
  %130 = fmul double %123, %129
  %131 = fmul double %130, %126
  %132 = fadd double %131, %128
  %133 = fmul double %121, %124
  %134 = fmul double %133, %129
  %135 = fmul double %134, %126
  %136 = fadd double %135, %132
  %137 = fmul double %122, 2.000000e+00
  %138 = fmul double %137, %124
  %139 = fmul double %138, %129
  %140 = fmul double %139, %126
  %141 = fadd double %140, %136
  %142 = fmul double %141, 0x3EE0C6F7A0B5ED8D
  %143 = load i32, i32* @ntimes, align 4, !tbaa !2
  %144 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = tail call i32 @putchar(i32 10)
  %146 = load i32, i32* @ntimes, align 4, !tbaa !2
  %147 = zext i32 %146 to i64
  %148 = alloca double, i64 %147, align 16
  %149 = bitcast double** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %149) #9
  %150 = load i32, i32* @Ni, align 4, !tbaa !2
  %151 = sext i32 %150 to i64
  %152 = shl nsw i64 %151, 3
  %153 = load i32, i32* @Nj, align 4, !tbaa !2
  %154 = sext i32 %153 to i64
  %155 = mul i64 %152, %154
  %156 = load i32, i32* @Nk, align 4, !tbaa !2
  %157 = sext i32 %156 to i64
  %158 = mul i64 %155, %157
  %159 = load i32, i32* @Nl, align 4, !tbaa !2
  %160 = sext i32 %159 to i64
  %161 = mul i64 %158, %160
  %162 = load i32, i32* @Nm, align 4, !tbaa !2
  %163 = sext i32 %162 to i64
  %164 = mul i64 %161, %163
  %165 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %164) #9
  %166 = bitcast double** %17 to i8**
  store i8* %165, i8** %166, align 8, !tbaa !6
  %167 = bitcast double** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %167) #9
  %168 = load i32, i32* @Ni, align 4, !tbaa !2
  %169 = sext i32 %168 to i64
  %170 = shl nsw i64 %169, 3
  %171 = load i32, i32* @Nj, align 4, !tbaa !2
  %172 = sext i32 %171 to i64
  %173 = mul i64 %170, %172
  %174 = load i32, i32* @Nk, align 4, !tbaa !2
  %175 = sext i32 %174 to i64
  %176 = mul i64 %173, %175
  %177 = load i32, i32* @Nl, align 4, !tbaa !2
  %178 = sext i32 %177 to i64
  %179 = mul i64 %176, %178
  %180 = load i32, i32* @Nm, align 4, !tbaa !2
  %181 = sext i32 %180 to i64
  %182 = mul i64 %179, %181
  %183 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %182) #9
  %184 = bitcast double** %18 to i8**
  store i8* %183, i8** %184, align 8, !tbaa !6
  %185 = bitcast double** %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %185) #9
  %186 = load i32, i32* @Ni, align 4, !tbaa !2
  %187 = sext i32 %186 to i64
  %188 = shl nsw i64 %187, 3
  %189 = load i32, i32* @Nj, align 4, !tbaa !2
  %190 = sext i32 %189 to i64
  %191 = mul i64 %188, %190
  %192 = load i32, i32* @Nk, align 4, !tbaa !2
  %193 = sext i32 %192 to i64
  %194 = mul i64 %191, %193
  %195 = load i32, i32* @Nm, align 4, !tbaa !2
  %196 = sext i32 %195 to i64
  %197 = mul i64 %194, %196
  %198 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %197) #9
  %199 = bitcast double** %19 to i8**
  store i8* %198, i8** %199, align 8, !tbaa !6
  %200 = bitcast double** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %200) #9
  %201 = load i32, i32* @Ni, align 4, !tbaa !2
  %202 = sext i32 %201 to i64
  %203 = shl nsw i64 %202, 3
  %204 = load i32, i32* @Nj, align 4, !tbaa !2
  %205 = sext i32 %204 to i64
  %206 = mul i64 %203, %205
  %207 = load i32, i32* @Nl, align 4, !tbaa !2
  %208 = sext i32 %207 to i64
  %209 = mul i64 %206, %208
  %210 = load i32, i32* @Nm, align 4, !tbaa !2
  %211 = sext i32 %210 to i64
  %212 = mul i64 %209, %211
  %213 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %212) #9
  %214 = bitcast double** %20 to i8**
  store i8* %213, i8** %214, align 8, !tbaa !6
  %215 = bitcast double** %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %215) #9
  %216 = load i32, i32* @Ni, align 4, !tbaa !2
  %217 = sext i32 %216 to i64
  %218 = shl nsw i64 %217, 3
  %219 = load i32, i32* @Nk, align 4, !tbaa !2
  %220 = sext i32 %219 to i64
  %221 = mul i64 %218, %220
  %222 = load i32, i32* @Nl, align 4, !tbaa !2
  %223 = sext i32 %222 to i64
  %224 = mul i64 %221, %223
  %225 = load i32, i32* @Nm, align 4, !tbaa !2
  %226 = sext i32 %225 to i64
  %227 = mul i64 %224, %226
  %228 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %227) #9
  %229 = bitcast double** %21 to i8**
  store i8* %228, i8** %229, align 8, !tbaa !6
  %230 = bitcast double** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %230) #9
  %231 = load i32, i32* @Ni, align 4, !tbaa !2
  %232 = sext i32 %231 to i64
  %233 = shl nsw i64 %232, 3
  %234 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %233) #9
  %235 = bitcast double** %22 to i8**
  store i8* %234, i8** %235, align 8, !tbaa !6
  %236 = bitcast double** %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %236) #9
  %237 = load i32, i32* @Ni, align 4, !tbaa !2
  %238 = sext i32 %237 to i64
  %239 = shl nsw i64 %238, 3
  %240 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %239) #9
  %241 = bitcast double** %23 to i8**
  store i8* %240, i8** %241, align 8, !tbaa !6
  %242 = bitcast double** %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %242) #9
  %243 = load i32, i32* @Ni, align 4, !tbaa !2
  %244 = sext i32 %243 to i64
  %245 = shl nsw i64 %244, 3
  %246 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %245) #9
  %247 = bitcast double** %24 to i8**
  store i8* %246, i8** %247, align 8, !tbaa !6
  %248 = bitcast double** %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %248) #9
  %249 = load i32, i32* @Nj, align 4, !tbaa !2
  %250 = sext i32 %249 to i64
  %251 = shl nsw i64 %250, 3
  %252 = load i32, i32* @Nk, align 4, !tbaa !2
  %253 = sext i32 %252 to i64
  %254 = mul i64 %251, %253
  %255 = load i32, i32* @Nl, align 4, !tbaa !2
  %256 = sext i32 %255 to i64
  %257 = mul i64 %254, %256
  %258 = load i32, i32* @Nm, align 4, !tbaa !2
  %259 = sext i32 %258 to i64
  %260 = mul i64 %257, %259
  %261 = tail call noalias i8* @aligned_alloc(i64 2097152, i64 %260) #9
  %262 = bitcast double** %25 to i8**
  store i8* %261, i8** %262, align 8, !tbaa !6
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** nonnull %17, double** nonnull %18, double** nonnull %19, double** nonnull %20, double** nonnull %21, double** nonnull %22, double** nonnull %23, double** nonnull %24, double** nonnull %25) #9
  %263 = call double @omp_get_wtime() #9
  %264 = load i32, i32* @ntimes, align 4, !tbaa !2
  %265 = icmp sgt i32 %264, 0
  %266 = call double @omp_get_wtime() #9
  br i1 %265, label %267, label %300

267:                                              ; preds = %2
  %268 = bitcast double** %18 to i64*
  %269 = bitcast double** %17 to i64*
  %270 = bitcast double** %19 to i64*
  %271 = bitcast double** %20 to i64*
  %272 = bitcast double** %21 to i64*
  %273 = bitcast double** %22 to i64*
  %274 = bitcast double** %23 to i64*
  %275 = bitcast double** %24 to i64*
  %276 = bitcast double** %25 to i64*
  %277 = bitcast i32* %3 to i8*
  %278 = bitcast i32* %4 to i8*
  %279 = bitcast i32* %5 to i8*
  %280 = bitcast i32* %6 to i8*
  %281 = bitcast i32* %7 to i8*
  %282 = bitcast double** %8 to i8*
  %283 = bitcast double** %9 to i8*
  %284 = bitcast double** %10 to i8*
  %285 = bitcast double** %11 to i8*
  %286 = bitcast double** %12 to i8*
  %287 = bitcast double** %13 to i8*
  %288 = bitcast double** %14 to i8*
  %289 = bitcast double** %15 to i8*
  %290 = bitcast double** %16 to i8*
  %291 = bitcast double** %8 to i64*
  %292 = bitcast double** %9 to i64*
  %293 = bitcast double** %10 to i64*
  %294 = bitcast double** %11 to i64*
  %295 = bitcast double** %12 to i64*
  %296 = bitcast double** %13 to i64*
  %297 = bitcast double** %14 to i64*
  %298 = bitcast double** %15 to i64*
  %299 = bitcast double** %16 to i64*
  br label %318

300:                                              ; preds = %318, %2
  %301 = phi double [ %266, %2 ], [ %344, %318 ]
  %302 = load i32, i32* @Nj, align 4, !tbaa !2
  %303 = load i32, i32* @Nk, align 4, !tbaa !2
  %304 = mul nsw i32 %303, %302
  %305 = load i32, i32* @Nl, align 4, !tbaa !2
  %306 = mul nsw i32 %304, %305
  %307 = load i32, i32* @Nm, align 4, !tbaa !2
  %308 = mul nsw i32 %306, %307
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %360

310:                                              ; preds = %300
  %311 = load double*, double** %25, align 8, !tbaa !6
  %312 = zext i32 %308 to i64
  %313 = add nsw i64 %312, -1
  %314 = and i64 %312, 7
  %315 = icmp ult i64 %313, 7
  br i1 %315, label %345, label %316

316:                                              ; preds = %310
  %317 = sub nsw i64 %312, %314
  br label %372

318:                                              ; preds = %267, %318
  %319 = phi i64 [ 0, %267 ], [ %340, %318 ]
  %320 = phi double [ %266, %267 ], [ %344, %318 ]
  %321 = load i32, i32* @Ni, align 4, !tbaa !2
  %322 = load i32, i32* @Nj, align 4, !tbaa !2
  %323 = load i32, i32* @Nk, align 4, !tbaa !2
  %324 = load i32, i32* @Nl, align 4, !tbaa !2
  %325 = load i32, i32* @Nm, align 4, !tbaa !2
  %326 = load i64, i64* %268, align 8, !tbaa !6
  %327 = load i64, i64* %269, align 8, !tbaa !6
  %328 = load i64, i64* %270, align 8, !tbaa !6
  %329 = load i64, i64* %271, align 8, !tbaa !6
  %330 = load i64, i64* %272, align 8, !tbaa !6
  %331 = load i64, i64* %273, align 8, !tbaa !6
  %332 = load i64, i64* %274, align 8, !tbaa !6
  %333 = load i64, i64* %275, align 8, !tbaa !6
  %334 = load i64, i64* %276, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %277)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %278)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %279)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %280)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %281)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %282)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %283)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %284)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %285)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %286)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %287)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %288)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %289)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %290)
  store i32 %321, i32* %3, align 4, !tbaa !2, !noalias !8
  store i32 %322, i32* %4, align 4, !tbaa !2, !noalias !8
  store i32 %323, i32* %5, align 4, !tbaa !2, !noalias !8
  store i32 %324, i32* %6, align 4, !tbaa !2, !noalias !8
  store i32 %325, i32* %7, align 4, !tbaa !2, !noalias !8
  store i64 %326, i64* %291, align 8, !tbaa !6, !noalias !8
  store i64 %327, i64* %292, align 8, !tbaa !6, !noalias !8
  store i64 %328, i64* %293, align 8, !tbaa !6, !noalias !8
  store i64 %329, i64* %294, align 8, !tbaa !6, !noalias !8
  store i64 %330, i64* %295, align 8, !tbaa !6, !noalias !8
  store i64 %331, i64* %296, align 8, !tbaa !6, !noalias !8
  store i64 %332, i64* %297, align 8, !tbaa !6, !noalias !8
  store i64 %333, i64* %298, align 8, !tbaa !6, !noalias !8
  store i64 %334, i64* %299, align 8, !tbaa !6, !noalias !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 14, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**)* @.omp_outlined..13 to void (i32*, i32*, ...)*), i32* nonnull %7, i32* nonnull %6, i32* nonnull %5, i32* nonnull %4, i32* nonnull %3, double** nonnull %9, double** nonnull %13, double** nonnull %10, double** nonnull %14, double** nonnull %11, double** nonnull %15, double** nonnull %12, double** nonnull %8, double** nonnull %16) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %277)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %278)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %279)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %280)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %281)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %282)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %283)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %284)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %285)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %286)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %287)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %288)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %289)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %290)
  %335 = load i64, i64* %269, align 8, !tbaa !6
  %336 = load i64, i64* %268, align 8, !tbaa !6
  store i64 %336, i64* %269, align 8, !tbaa !6
  store i64 %335, i64* %268, align 8, !tbaa !6
  %337 = call double @omp_get_wtime() #9
  %338 = fsub double %337, %320
  %339 = getelementptr inbounds double, double* %148, i64 %319
  store double %338, double* %339, align 8, !tbaa !19
  %340 = add nuw nsw i64 %319, 1
  %341 = load i32, i32* @ntimes, align 4, !tbaa !2
  %342 = sext i32 %341 to i64
  %343 = icmp slt i64 %340, %342
  %344 = call double @omp_get_wtime() #9
  br i1 %343, label %318, label %300

345:                                              ; preds = %372, %310
  %346 = phi double [ undef, %310 ], [ %406, %372 ]
  %347 = phi i64 [ 0, %310 ], [ %407, %372 ]
  %348 = phi double [ 0.000000e+00, %310 ], [ %406, %372 ]
  %349 = icmp eq i64 %314, 0
  br i1 %349, label %360, label %350

350:                                              ; preds = %345, %350
  %351 = phi i64 [ %357, %350 ], [ %347, %345 ]
  %352 = phi double [ %356, %350 ], [ %348, %345 ]
  %353 = phi i64 [ %358, %350 ], [ %314, %345 ]
  %354 = getelementptr inbounds double, double* %311, i64 %351
  %355 = load double, double* %354, align 8, !tbaa !19
  %356 = fadd double %352, %355
  %357 = add nuw nsw i64 %351, 1
  %358 = add i64 %353, -1
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %350, !llvm.loop !21

360:                                              ; preds = %345, %350, %300
  %361 = phi double [ 0.000000e+00, %300 ], [ %346, %345 ], [ %356, %350 ]
  %362 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), double %361)
  %363 = load i32, i32* @ntimes, align 4, !tbaa !2
  %364 = icmp sgt i32 %363, 1
  br i1 %364, label %365, label %427

365:                                              ; preds = %360
  %366 = zext i32 %363 to i64
  %367 = add nsw i64 %366, -1
  %368 = and i64 %367, 1
  %369 = icmp eq i32 %363, 2
  br i1 %369, label %410, label %370

370:                                              ; preds = %365
  %371 = sub nsw i64 %367, %368
  br label %449

372:                                              ; preds = %372, %316
  %373 = phi i64 [ 0, %316 ], [ %407, %372 ]
  %374 = phi double [ 0.000000e+00, %316 ], [ %406, %372 ]
  %375 = phi i64 [ %317, %316 ], [ %408, %372 ]
  %376 = getelementptr inbounds double, double* %311, i64 %373
  %377 = load double, double* %376, align 8, !tbaa !19
  %378 = fadd double %374, %377
  %379 = or i64 %373, 1
  %380 = getelementptr inbounds double, double* %311, i64 %379
  %381 = load double, double* %380, align 8, !tbaa !19
  %382 = fadd double %378, %381
  %383 = or i64 %373, 2
  %384 = getelementptr inbounds double, double* %311, i64 %383
  %385 = load double, double* %384, align 8, !tbaa !19
  %386 = fadd double %382, %385
  %387 = or i64 %373, 3
  %388 = getelementptr inbounds double, double* %311, i64 %387
  %389 = load double, double* %388, align 8, !tbaa !19
  %390 = fadd double %386, %389
  %391 = or i64 %373, 4
  %392 = getelementptr inbounds double, double* %311, i64 %391
  %393 = load double, double* %392, align 8, !tbaa !19
  %394 = fadd double %390, %393
  %395 = or i64 %373, 5
  %396 = getelementptr inbounds double, double* %311, i64 %395
  %397 = load double, double* %396, align 8, !tbaa !19
  %398 = fadd double %394, %397
  %399 = or i64 %373, 6
  %400 = getelementptr inbounds double, double* %311, i64 %399
  %401 = load double, double* %400, align 8, !tbaa !19
  %402 = fadd double %398, %401
  %403 = or i64 %373, 7
  %404 = getelementptr inbounds double, double* %311, i64 %403
  %405 = load double, double* %404, align 8, !tbaa !19
  %406 = fadd double %402, %405
  %407 = add nuw nsw i64 %373, 8
  %408 = add i64 %375, -8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %345, label %372

410:                                              ; preds = %449, %365
  %411 = phi double [ undef, %365 ], [ %466, %449 ]
  %412 = phi double [ undef, %365 ], [ %468, %449 ]
  %413 = phi double [ undef, %365 ], [ %469, %449 ]
  %414 = phi i64 [ 1, %365 ], [ %470, %449 ]
  %415 = phi double [ 0.000000e+00, %365 ], [ %469, %449 ]
  %416 = phi double [ 0.000000e+00, %365 ], [ %468, %449 ]
  %417 = phi double [ 0x7FEFFFFFFFFFFFFF, %365 ], [ %466, %449 ]
  %418 = icmp eq i64 %368, 0
  br i1 %418, label %427, label %419

419:                                              ; preds = %410
  %420 = getelementptr inbounds double, double* %148, i64 %414
  %421 = load double, double* %420, align 8, !tbaa !19
  %422 = fadd double %415, %421
  %423 = fcmp ogt double %416, %421
  %424 = select i1 %423, double %416, double %421
  %425 = fcmp olt double %417, %421
  %426 = select i1 %425, double %417, double %421
  br label %427

427:                                              ; preds = %419, %410, %360
  %428 = phi double [ 0x7FEFFFFFFFFFFFFF, %360 ], [ %411, %410 ], [ %426, %419 ]
  %429 = phi double [ 0.000000e+00, %360 ], [ %412, %410 ], [ %424, %419 ]
  %430 = phi double [ 0.000000e+00, %360 ], [ %413, %410 ], [ %422, %419 ]
  %431 = add nsw i32 %363, -1
  %432 = sitofp i32 %431 to double
  %433 = fdiv double %430, %432
  %434 = call i32 @putchar(i32 10)
  %435 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str, i64 0, i64 0))
  %436 = fdiv double %142, %428
  %437 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), double %436, double %428, double %429, double %433)
  %438 = fsub double %301, %263
  %439 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), double %438)
  %440 = load i8*, i8** %166, align 8, !tbaa !6
  call void @free(i8* %440) #9
  %441 = load i8*, i8** %184, align 8, !tbaa !6
  call void @free(i8* %441) #9
  %442 = load i8*, i8** %199, align 8, !tbaa !6
  call void @free(i8* %442) #9
  %443 = load i8*, i8** %214, align 8, !tbaa !6
  call void @free(i8* %443) #9
  %444 = load i8*, i8** %229, align 8, !tbaa !6
  call void @free(i8* %444) #9
  %445 = load i8*, i8** %235, align 8, !tbaa !6
  call void @free(i8* %445) #9
  %446 = load i8*, i8** %241, align 8, !tbaa !6
  call void @free(i8* %446) #9
  %447 = load i8*, i8** %247, align 8, !tbaa !6
  call void @free(i8* %447) #9
  %448 = load i8*, i8** %262, align 8, !tbaa !6
  call void @free(i8* %448) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %248) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %242) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %236) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %230) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %215) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %200) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %185) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %167) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %149) #9
  ret i32 0

449:                                              ; preds = %449, %370
  %450 = phi i64 [ 1, %370 ], [ %470, %449 ]
  %451 = phi double [ 0.000000e+00, %370 ], [ %469, %449 ]
  %452 = phi double [ 0.000000e+00, %370 ], [ %468, %449 ]
  %453 = phi double [ 0x7FEFFFFFFFFFFFFF, %370 ], [ %466, %449 ]
  %454 = phi i64 [ %371, %370 ], [ %471, %449 ]
  %455 = getelementptr inbounds double, double* %148, i64 %450
  %456 = load double, double* %455, align 8, !tbaa !19
  %457 = fcmp olt double %453, %456
  %458 = select i1 %457, double %453, double %456
  %459 = fcmp ogt double %452, %456
  %460 = select i1 %459, double %452, double %456
  %461 = fadd double %451, %456
  %462 = add nuw nsw i64 %450, 1
  %463 = getelementptr inbounds double, double* %148, i64 %462
  %464 = load double, double* %463, align 8, !tbaa !19
  %465 = fcmp olt double %458, %464
  %466 = select i1 %465, double %458, double %464
  %467 = fcmp ogt double %460, %464
  %468 = select i1 %467, double %460, double %464
  %469 = fadd double %461, %464
  %470 = add nuw nsw i64 %450, 2
  %471 = add i64 %454, -2
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %410, label %449
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
  %10 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = add nsw i32 %6, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14
  %16 = load i8*, i8** %15, align 8, !tbaa !6
  %17 = tail call i64 @strtol(i8* nocapture nonnull %16, i8** null, i32 10) #9
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @Nm, align 4, !tbaa !2
  br label %81

19:                                               ; preds = %5
  %20 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = add nsw i32 %6, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24
  %26 = load i8*, i8** %25, align 8, !tbaa !6
  %27 = tail call i64 @strtol(i8* nocapture nonnull %26, i8** null, i32 10) #9
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @Ni, align 4, !tbaa !2
  br label %81

29:                                               ; preds = %19
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = add nsw i32 %6, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8, !tbaa !6
  %37 = tail call i64 @strtol(i8* nocapture nonnull %36, i8** null, i32 10) #9
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @Nj, align 4, !tbaa !2
  store i32 %38, i32* @Nk, align 4, !tbaa !2
  store i32 %38, i32* @Nl, align 4, !tbaa !2
  br label %81

39:                                               ; preds = %29
  %40 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = add nsw i32 %6, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44
  %46 = load i8*, i8** %45, align 8, !tbaa !6
  %47 = tail call i64 @strtol(i8* nocapture nonnull %46, i8** null, i32 10) #9
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @Nj, align 4, !tbaa !2
  br label %81

49:                                               ; preds = %39
  %50 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = add nsw i32 %6, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54
  %56 = load i8*, i8** %55, align 8, !tbaa !6
  %57 = tail call i64 @strtol(i8* nocapture nonnull %56, i8** null, i32 10) #9
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* @ntimes, align 4, !tbaa !2
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %81

60:                                               ; preds = %52
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %61) #11
  tail call void @exit(i32 1) #12
  unreachable

63:                                               ; preds = %49
  %64 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %9, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #10
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
  tail call void @exit(i32 0) #12
  unreachable

78:                                               ; preds = %63
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %80 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* %9) #11
  tail call void @exit(i32 1) #12
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %42) #9
  store i32 0, i32* %12, align 4, !tbaa !2
  %43 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #9
  store i32 %37, i32* %13, align 4, !tbaa !2
  %44 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44) #9
  store i32 1, i32* %14, align 4, !tbaa !2
  %45 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %45) #9
  store i32 0, i32* %15, align 4, !tbaa !2
  %46 = load i32, i32* %0, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %46, i32 34, i32* nonnull %15, i32* nonnull %12, i32* nonnull %13, i32* nonnull %14, i32 1, i32 1) #9
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
  store double 1.000000e-02, double* %131, align 8, !tbaa !19
  %132 = getelementptr inbounds double, double* %109, i64 %130
  store double 0.000000e+00, double* %132, align 8, !tbaa !19
  %133 = add nuw nsw i64 %128, 1
  %134 = add i64 %129, -1
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %127, !llvm.loop !23

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
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %153, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %154 = getelementptr inbounds double, double* %152, i64 2
  %155 = bitcast double* %154 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %155, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %156 = getelementptr inbounds double, double* %109, i64 %151
  %157 = bitcast double* %156 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %157, align 8, !tbaa !19, !alias.scope !27
  %158 = getelementptr inbounds double, double* %156, i64 2
  %159 = bitcast double* %158 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %159, align 8, !tbaa !19, !alias.scope !27
  %160 = or i64 %149, 4
  %161 = add nsw i64 %122, %160
  %162 = getelementptr inbounds double, double* %108, i64 %161
  %163 = bitcast double* %162 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %163, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %164 = getelementptr inbounds double, double* %162, i64 2
  %165 = bitcast double* %164 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %165, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %166 = getelementptr inbounds double, double* %109, i64 %161
  %167 = bitcast double* %166 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %167, align 8, !tbaa !19, !alias.scope !27
  %168 = getelementptr inbounds double, double* %166, i64 2
  %169 = bitcast double* %168 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %169, align 8, !tbaa !19, !alias.scope !27
  %170 = or i64 %149, 8
  %171 = add nsw i64 %122, %170
  %172 = getelementptr inbounds double, double* %108, i64 %171
  %173 = bitcast double* %172 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %173, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %174 = getelementptr inbounds double, double* %172, i64 2
  %175 = bitcast double* %174 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %175, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %176 = getelementptr inbounds double, double* %109, i64 %171
  %177 = bitcast double* %176 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %177, align 8, !tbaa !19, !alias.scope !27
  %178 = getelementptr inbounds double, double* %176, i64 2
  %179 = bitcast double* %178 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %179, align 8, !tbaa !19, !alias.scope !27
  %180 = or i64 %149, 12
  %181 = add nsw i64 %122, %180
  %182 = getelementptr inbounds double, double* %108, i64 %181
  %183 = bitcast double* %182 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %183, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %184 = getelementptr inbounds double, double* %182, i64 2
  %185 = bitcast double* %184 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %185, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %186 = getelementptr inbounds double, double* %109, i64 %181
  %187 = bitcast double* %186 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %187, align 8, !tbaa !19, !alias.scope !27
  %188 = getelementptr inbounds double, double* %186, i64 2
  %189 = bitcast double* %188 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %189, align 8, !tbaa !19, !alias.scope !27
  %190 = add i64 %149, 16
  %191 = add i64 %150, -4
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %148, !llvm.loop !29

193:                                              ; preds = %148, %147
  %194 = phi i64 [ 0, %147 ], [ %190, %148 ]
  br i1 %81, label %210, label %195

195:                                              ; preds = %193, %195
  %196 = phi i64 [ %207, %195 ], [ %194, %193 ]
  %197 = phi i64 [ %208, %195 ], [ %78, %193 ]
  %198 = add nsw i64 %122, %196
  %199 = getelementptr inbounds double, double* %108, i64 %198
  %200 = bitcast double* %199 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %200, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %201 = getelementptr inbounds double, double* %199, i64 2
  %202 = bitcast double* %201 to <2 x double>*
  store <2 x double> <double 1.000000e-02, double 1.000000e-02>, <2 x double>* %202, align 8, !tbaa !19, !alias.scope !24, !noalias !27
  %203 = getelementptr inbounds double, double* %109, i64 %198
  %204 = bitcast double* %203 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %204, align 8, !tbaa !19, !alias.scope !27
  %205 = getelementptr inbounds double, double* %203, i64 2
  %206 = bitcast double* %205 to <2 x double>*
  store <2 x double> zeroinitializer, <2 x double>* %206, align 8, !tbaa !19, !alias.scope !27
  %207 = add i64 %196, 4
  %208 = add i64 %197, -1
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %195, !llvm.loop !31

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
  store double 1.000000e-02, double* %217, align 8, !tbaa !19
  %218 = getelementptr inbounds double, double* %109, i64 %216
  store double 0.000000e+00, double* %218, align 8, !tbaa !19
  %219 = add nuw nsw i64 %215, 1
  %220 = add nsw i64 %122, %219
  %221 = getelementptr inbounds double, double* %108, i64 %220
  store double 1.000000e-02, double* %221, align 8, !tbaa !19
  %222 = getelementptr inbounds double, double* %109, i64 %220
  store double 0.000000e+00, double* %222, align 8, !tbaa !19
  %223 = add nuw nsw i64 %215, 2
  %224 = add nsw i64 %122, %223
  %225 = getelementptr inbounds double, double* %108, i64 %224
  store double 1.000000e-02, double* %225, align 8, !tbaa !19
  %226 = getelementptr inbounds double, double* %109, i64 %224
  store double 0.000000e+00, double* %226, align 8, !tbaa !19
  %227 = add nuw nsw i64 %215, 3
  %228 = add nsw i64 %122, %227
  %229 = getelementptr inbounds double, double* %108, i64 %228
  store double 1.000000e-02, double* %229, align 8, !tbaa !19
  %230 = getelementptr inbounds double, double* %109, i64 %228
  store double 0.000000e+00, double* %230, align 8, !tbaa !19
  %231 = add nuw nsw i64 %215, 4
  %232 = icmp eq i64 %231, %65
  br i1 %232, label %211, label %214, !llvm.loop !32

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
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %46) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %42) #9
  br label %241

241:                                              ; preds = %39, %240
  %242 = phi i32 [ %40, %39 ], [ %46, %240 ]
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #9
  %243 = load i32, i32* @Nm, align 4, !tbaa !2
  %244 = add nsw i32 %243, -1
  %245 = icmp sgt i32 %243, 0
  br i1 %245, label %246, label %359

246:                                              ; preds = %241
  %247 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %247) #9
  store i32 0, i32* %16, align 4, !tbaa !2
  %248 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %248) #9
  store i32 %244, i32* %17, align 4, !tbaa !2
  %249 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %249) #9
  store i32 1, i32* %18, align 4, !tbaa !2
  %250 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %250) #9
  store i32 0, i32* %19, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %19, i32* nonnull %16, i32* nonnull %17, i32* nonnull %18, i32 1, i32 1) #9
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
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %308, align 8, !tbaa !19
  %309 = getelementptr inbounds double, double* %307, i64 2
  %310 = bitcast double* %309 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %310, align 8, !tbaa !19
  %311 = or i64 %304, 4
  %312 = add nsw i64 %299, %311
  %313 = getelementptr inbounds double, double* %289, i64 %312
  %314 = bitcast double* %313 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %314, align 8, !tbaa !19
  %315 = getelementptr inbounds double, double* %313, i64 2
  %316 = bitcast double* %315 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %316, align 8, !tbaa !19
  %317 = or i64 %304, 8
  %318 = add nsw i64 %299, %317
  %319 = getelementptr inbounds double, double* %289, i64 %318
  %320 = bitcast double* %319 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %320, align 8, !tbaa !19
  %321 = getelementptr inbounds double, double* %319, i64 2
  %322 = bitcast double* %321 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %322, align 8, !tbaa !19
  %323 = or i64 %304, 12
  %324 = add nsw i64 %299, %323
  %325 = getelementptr inbounds double, double* %289, i64 %324
  %326 = bitcast double* %325 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %326, align 8, !tbaa !19
  %327 = getelementptr inbounds double, double* %325, i64 2
  %328 = bitcast double* %327 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %328, align 8, !tbaa !19
  %329 = add i64 %304, 16
  %330 = add i64 %305, -4
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %303, !llvm.loop !33

332:                                              ; preds = %303, %302
  %333 = phi i64 [ 0, %302 ], [ %329, %303 ]
  br i1 %281, label %345, label %334

334:                                              ; preds = %332, %334
  %335 = phi i64 [ %342, %334 ], [ %333, %332 ]
  %336 = phi i64 [ %343, %334 ], [ %278, %332 ]
  %337 = add nsw i64 %299, %335
  %338 = getelementptr inbounds double, double* %289, i64 %337
  %339 = bitcast double* %338 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %339, align 8, !tbaa !19
  %340 = getelementptr inbounds double, double* %338, i64 2
  %341 = bitcast double* %340 to <2 x double>*
  store <2 x double> <double 2.000000e-02, double 2.000000e-02>, <2 x double>* %341, align 8, !tbaa !19
  %342 = add i64 %335, 4
  %343 = add i64 %336, -1
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %345, label %334, !llvm.loop !34

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
  store double 2.000000e-02, double* %352, align 8, !tbaa !19
  %353 = add nuw nsw i64 %350, 1
  %354 = icmp eq i64 %353, %270
  br i1 %354, label %346, label %349, !llvm.loop !35

355:                                              ; preds = %293, %283
  %356 = add nsw i64 %284, 1
  %357 = icmp slt i64 %284, %267
  br i1 %357, label %283, label %358

358:                                              ; preds = %355, %246
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %250) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %249) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %248) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %247) #9
  br label %359

359:                                              ; preds = %358, %241
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #9
  %360 = load i32, i32* @Nm, align 4, !tbaa !2
  %361 = add nsw i32 %360, -1
  %362 = icmp sgt i32 %360, 0
  br i1 %362, label %363, label %476

363:                                              ; preds = %359
  %364 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %364) #9
  store i32 0, i32* %20, align 4, !tbaa !2
  %365 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %365) #9
  store i32 %361, i32* %21, align 4, !tbaa !2
  %366 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %366) #9
  store i32 1, i32* %22, align 4, !tbaa !2
  %367 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %367) #9
  store i32 0, i32* %23, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %23, i32* nonnull %20, i32* nonnull %21, i32* nonnull %22, i32 1, i32 1) #9
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
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %425, align 8, !tbaa !19
  %426 = getelementptr inbounds double, double* %424, i64 2
  %427 = bitcast double* %426 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %427, align 8, !tbaa !19
  %428 = or i64 %421, 4
  %429 = add nsw i64 %416, %428
  %430 = getelementptr inbounds double, double* %406, i64 %429
  %431 = bitcast double* %430 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %431, align 8, !tbaa !19
  %432 = getelementptr inbounds double, double* %430, i64 2
  %433 = bitcast double* %432 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %433, align 8, !tbaa !19
  %434 = or i64 %421, 8
  %435 = add nsw i64 %416, %434
  %436 = getelementptr inbounds double, double* %406, i64 %435
  %437 = bitcast double* %436 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %437, align 8, !tbaa !19
  %438 = getelementptr inbounds double, double* %436, i64 2
  %439 = bitcast double* %438 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %439, align 8, !tbaa !19
  %440 = or i64 %421, 12
  %441 = add nsw i64 %416, %440
  %442 = getelementptr inbounds double, double* %406, i64 %441
  %443 = bitcast double* %442 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %443, align 8, !tbaa !19
  %444 = getelementptr inbounds double, double* %442, i64 2
  %445 = bitcast double* %444 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %445, align 8, !tbaa !19
  %446 = add i64 %421, 16
  %447 = add i64 %422, -4
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %420, !llvm.loop !37

449:                                              ; preds = %420, %419
  %450 = phi i64 [ 0, %419 ], [ %446, %420 ]
  br i1 %398, label %462, label %451

451:                                              ; preds = %449, %451
  %452 = phi i64 [ %459, %451 ], [ %450, %449 ]
  %453 = phi i64 [ %460, %451 ], [ %395, %449 ]
  %454 = add nsw i64 %416, %452
  %455 = getelementptr inbounds double, double* %406, i64 %454
  %456 = bitcast double* %455 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %456, align 8, !tbaa !19
  %457 = getelementptr inbounds double, double* %455, i64 2
  %458 = bitcast double* %457 to <2 x double>*
  store <2 x double> <double 3.000000e-02, double 3.000000e-02>, <2 x double>* %458, align 8, !tbaa !19
  %459 = add i64 %452, 4
  %460 = add i64 %453, -1
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %451, !llvm.loop !38

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
  store double 3.000000e-02, double* %469, align 8, !tbaa !19
  %470 = add nuw nsw i64 %467, 1
  %471 = icmp eq i64 %470, %387
  br i1 %471, label %463, label %466, !llvm.loop !39

472:                                              ; preds = %410, %400
  %473 = add nsw i64 %401, 1
  %474 = icmp slt i64 %401, %384
  br i1 %474, label %400, label %475

475:                                              ; preds = %472, %363
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %367) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %366) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %365) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %364) #9
  br label %476

476:                                              ; preds = %475, %359
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #9
  %477 = load i32, i32* @Nm, align 4, !tbaa !2
  %478 = add nsw i32 %477, -1
  %479 = icmp sgt i32 %477, 0
  br i1 %479, label %480, label %593

480:                                              ; preds = %476
  %481 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %481) #9
  store i32 0, i32* %24, align 4, !tbaa !2
  %482 = bitcast i32* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %482) #9
  store i32 %478, i32* %25, align 4, !tbaa !2
  %483 = bitcast i32* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %483) #9
  store i32 1, i32* %26, align 4, !tbaa !2
  %484 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %484) #9
  store i32 0, i32* %27, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %27, i32* nonnull %24, i32* nonnull %25, i32* nonnull %26, i32 1, i32 1) #9
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
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %542, align 8, !tbaa !19
  %543 = getelementptr inbounds double, double* %541, i64 2
  %544 = bitcast double* %543 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %544, align 8, !tbaa !19
  %545 = or i64 %538, 4
  %546 = add nsw i64 %533, %545
  %547 = getelementptr inbounds double, double* %523, i64 %546
  %548 = bitcast double* %547 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %548, align 8, !tbaa !19
  %549 = getelementptr inbounds double, double* %547, i64 2
  %550 = bitcast double* %549 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %550, align 8, !tbaa !19
  %551 = or i64 %538, 8
  %552 = add nsw i64 %533, %551
  %553 = getelementptr inbounds double, double* %523, i64 %552
  %554 = bitcast double* %553 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %554, align 8, !tbaa !19
  %555 = getelementptr inbounds double, double* %553, i64 2
  %556 = bitcast double* %555 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %556, align 8, !tbaa !19
  %557 = or i64 %538, 12
  %558 = add nsw i64 %533, %557
  %559 = getelementptr inbounds double, double* %523, i64 %558
  %560 = bitcast double* %559 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %560, align 8, !tbaa !19
  %561 = getelementptr inbounds double, double* %559, i64 2
  %562 = bitcast double* %561 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %562, align 8, !tbaa !19
  %563 = add i64 %538, 16
  %564 = add i64 %539, -4
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %537, !llvm.loop !40

566:                                              ; preds = %537, %536
  %567 = phi i64 [ 0, %536 ], [ %563, %537 ]
  br i1 %515, label %579, label %568

568:                                              ; preds = %566, %568
  %569 = phi i64 [ %576, %568 ], [ %567, %566 ]
  %570 = phi i64 [ %577, %568 ], [ %512, %566 ]
  %571 = add nsw i64 %533, %569
  %572 = getelementptr inbounds double, double* %523, i64 %571
  %573 = bitcast double* %572 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %573, align 8, !tbaa !19
  %574 = getelementptr inbounds double, double* %572, i64 2
  %575 = bitcast double* %574 to <2 x double>*
  store <2 x double> <double 4.000000e-02, double 4.000000e-02>, <2 x double>* %575, align 8, !tbaa !19
  %576 = add i64 %569, 4
  %577 = add i64 %570, -1
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %568, !llvm.loop !41

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
  store double 4.000000e-02, double* %586, align 8, !tbaa !19
  %587 = add nuw nsw i64 %584, 1
  %588 = icmp eq i64 %587, %504
  br i1 %588, label %580, label %583, !llvm.loop !42

589:                                              ; preds = %527, %517
  %590 = add nsw i64 %518, 1
  %591 = icmp slt i64 %518, %501
  br i1 %591, label %517, label %592

592:                                              ; preds = %589, %480
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %484) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %483) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %482) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %481) #9
  br label %593

593:                                              ; preds = %592, %476
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #9
  %594 = load i32, i32* @Ni, align 4, !tbaa !2
  %595 = add nsw i32 %594, -1
  %596 = icmp sgt i32 %594, 0
  br i1 %596, label %597, label %711

597:                                              ; preds = %593
  %598 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %598) #9
  store i32 0, i32* %28, align 4, !tbaa !2
  %599 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %599) #9
  store i32 %595, i32* %29, align 4, !tbaa !2
  %600 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %600) #9
  store i32 1, i32* %30, align 4, !tbaa !2
  %601 = bitcast i32* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %601) #9
  store i32 0, i32* %31, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %31, i32* nonnull %28, i32* nonnull %29, i32* nonnull %30, i32 1, i32 1) #9
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
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %654, align 8, !tbaa !19, !alias.scope !43, !noalias !46
  %655 = getelementptr inbounds double, double* %653, i64 2
  %656 = bitcast double* %655 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %656, align 8, !tbaa !19, !alias.scope !43, !noalias !46
  %657 = getelementptr inbounds double, double* %609, i64 %652
  %658 = bitcast double* %657 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %658, align 8, !tbaa !19, !alias.scope !49, !noalias !50
  %659 = getelementptr inbounds double, double* %657, i64 2
  %660 = bitcast double* %659 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %660, align 8, !tbaa !19, !alias.scope !49, !noalias !50
  %661 = getelementptr inbounds double, double* %610, i64 %652
  %662 = bitcast double* %661 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %662, align 8, !tbaa !19, !alias.scope !50
  %663 = getelementptr inbounds double, double* %661, i64 2
  %664 = bitcast double* %663 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %664, align 8, !tbaa !19, !alias.scope !50
  %665 = or i64 %650, 4
  %666 = add i64 %665, %611
  %667 = getelementptr inbounds double, double* %608, i64 %666
  %668 = bitcast double* %667 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %668, align 8, !tbaa !19, !alias.scope !43, !noalias !46
  %669 = getelementptr inbounds double, double* %667, i64 2
  %670 = bitcast double* %669 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %670, align 8, !tbaa !19, !alias.scope !43, !noalias !46
  %671 = getelementptr inbounds double, double* %609, i64 %666
  %672 = bitcast double* %671 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %672, align 8, !tbaa !19, !alias.scope !49, !noalias !50
  %673 = getelementptr inbounds double, double* %671, i64 2
  %674 = bitcast double* %673 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %674, align 8, !tbaa !19, !alias.scope !49, !noalias !50
  %675 = getelementptr inbounds double, double* %610, i64 %666
  %676 = bitcast double* %675 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %676, align 8, !tbaa !19, !alias.scope !50
  %677 = getelementptr inbounds double, double* %675, i64 2
  %678 = bitcast double* %677 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %678, align 8, !tbaa !19, !alias.scope !50
  %679 = add i64 %650, 8
  %680 = add i64 %651, -2
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %682, label %649, !llvm.loop !51

682:                                              ; preds = %649, %639
  %683 = phi i64 [ 0, %639 ], [ %679, %649 ]
  %684 = icmp eq i64 %645, 0
  br i1 %684, label %699, label %685

685:                                              ; preds = %682
  %686 = add i64 %683, %611
  %687 = getelementptr inbounds double, double* %608, i64 %686
  %688 = bitcast double* %687 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %688, align 8, !tbaa !19, !alias.scope !43, !noalias !46
  %689 = getelementptr inbounds double, double* %687, i64 2
  %690 = bitcast double* %689 to <2 x double>*
  store <2 x double> <double 6.000000e-02, double 6.000000e-02>, <2 x double>* %690, align 8, !tbaa !19, !alias.scope !43, !noalias !46
  %691 = getelementptr inbounds double, double* %609, i64 %686
  %692 = bitcast double* %691 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %692, align 8, !tbaa !19, !alias.scope !49, !noalias !50
  %693 = getelementptr inbounds double, double* %691, i64 2
  %694 = bitcast double* %693 to <2 x double>*
  store <2 x double> <double 7.000000e-02, double 7.000000e-02>, <2 x double>* %694, align 8, !tbaa !19, !alias.scope !49, !noalias !50
  %695 = getelementptr inbounds double, double* %610, i64 %686
  %696 = bitcast double* %695 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %696, align 8, !tbaa !19, !alias.scope !50
  %697 = getelementptr inbounds double, double* %695, i64 2
  %698 = bitcast double* %697 to <2 x double>*
  store <2 x double> <double 8.000000e-02, double 8.000000e-02>, <2 x double>* %698, align 8, !tbaa !19, !alias.scope !50
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
  store double 6.000000e-02, double* %705, align 8, !tbaa !19
  %706 = getelementptr inbounds double, double* %609, i64 %704
  store double 7.000000e-02, double* %706, align 8, !tbaa !19
  %707 = getelementptr inbounds double, double* %610, i64 %704
  store double 8.000000e-02, double* %707, align 8, !tbaa !19
  %708 = add nsw i64 %704, 1
  %709 = icmp slt i64 %704, %612
  br i1 %709, label %703, label %710, !llvm.loop !52

710:                                              ; preds = %703, %699, %597
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %601) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %600) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %599) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %598) #9
  br label %711

711:                                              ; preds = %710, %593
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #9
  %712 = load i32, i32* @Nm, align 4, !tbaa !2
  %713 = add nsw i32 %712, -1
  %714 = icmp sgt i32 %712, 0
  br i1 %714, label %715, label %813

715:                                              ; preds = %711
  %716 = bitcast i32* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %716) #9
  store i32 0, i32* %32, align 4, !tbaa !2
  %717 = bitcast i32* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %717) #9
  store i32 %713, i32* %33, align 4, !tbaa !2
  %718 = bitcast i32* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %718) #9
  store i32 1, i32* %34, align 4, !tbaa !2
  %719 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %719) #9
  store i32 0, i32* %35, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %242, i32 34, i32* nonnull %35, i32* nonnull %32, i32* nonnull %33, i32* nonnull %34, i32 1, i32 1) #9
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
  br i1 %771, label %772, label %760, !llvm.loop !53

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
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %242) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %719) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %718) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %717) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %716) #9
  br label %813

813:                                              ; preds = %812, %711
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %242) #9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

declare !callback !54 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

declare dso_local double @omp_get_wtime() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @kernel(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double* noalias %5, double* noalias %6, double* noalias %7, double* noalias %8, double* noalias %9, double* noalias %10, double* noalias %11, double* noalias %12, double* noalias %13) local_unnamed_addr #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  store i32 %0, i32* %15, align 4, !tbaa !2
  store i32 %1, i32* %16, align 4, !tbaa !2
  store i32 %2, i32* %17, align 4, !tbaa !2
  store i32 %3, i32* %18, align 4, !tbaa !2
  store i32 %4, i32* %19, align 4, !tbaa !2
  store double* %5, double** %20, align 8, !tbaa !6
  store double* %6, double** %21, align 8, !tbaa !6
  store double* %7, double** %22, align 8, !tbaa !6
  store double* %8, double** %23, align 8, !tbaa !6
  store double* %9, double** %24, align 8, !tbaa !6
  store double* %10, double** %25, align 8, !tbaa !6
  store double* %11, double** %26, align 8, !tbaa !6
  store double* %12, double** %27, align 8, !tbaa !6
  store double* %13, double** %28, align 8, !tbaa !6
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 14, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**)* @.omp_outlined..13 to void (i32*, i32*, ...)*), i32* nonnull %19, i32* nonnull %18, i32* nonnull %17, i32* nonnull %16, i32* nonnull %15, double** nonnull %21, double** nonnull %25, double** nonnull %22, double** nonnull %26, double** nonnull %23, double** nonnull %27, double** nonnull %24, double** nonnull %20, double** nonnull %28) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..13(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i32* nocapture readonly dereferenceable(4) %3, i32* nocapture readonly dereferenceable(4) %4, i32* nocapture readonly dereferenceable(4) %5, i32* nocapture readonly dereferenceable(4) %6, double** nocapture readonly dereferenceable(8) %7, double** nocapture readonly dereferenceable(8) %8, double** nocapture readonly dereferenceable(8) %9, double** nocapture readonly dereferenceable(8) %10, double** nocapture readonly dereferenceable(8) %11, double** nocapture readonly dereferenceable(8) %12, double** nocapture readonly dereferenceable(8) %13, double** nocapture readonly dereferenceable(8) %14, double** nocapture readonly dereferenceable(8) %15) #4 {
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = load i32, i32* %2, align 4, !tbaa !2
  %22 = add nsw i32 %21, -1
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %224

24:                                               ; preds = %16
  %25 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #9
  store i32 0, i32* %17, align 4, !tbaa !2
  %26 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #9
  store i32 %22, i32* %18, align 4, !tbaa !2
  %27 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #9
  store i32 1, i32* %19, align 4, !tbaa !2
  %28 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #9
  store i32 0, i32* %20, align 4, !tbaa !2
  %29 = load i32, i32* %0, align 4, !tbaa !2
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @0, i32 %29, i32 34, i32* nonnull %20, i32* nonnull %17, i32* nonnull %18, i32* nonnull %19, i32 1, i32 1) #9
  %30 = load i32, i32* %18, align 4, !tbaa !2
  %31 = icmp slt i32 %30, %21
  %32 = select i1 %31, i32 %30, i32 %22
  store i32 %32, i32* %18, align 4, !tbaa !2
  %33 = load i32, i32* %17, align 4, !tbaa !2
  %34 = icmp sgt i32 %33, %32
  br i1 %34, label %223, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %60, %35
  %41 = phi i32 [ %33, %35 ], [ %61, %60 ]
  br i1 %37, label %42, label %60

42:                                               ; preds = %40
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %36, %41
  br label %47

47:                                               ; preds = %208, %42
  %48 = phi i32 [ 0, %42 ], [ %209, %208 ]
  br i1 %39, label %49, label %208

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = add nsw i32 %46, %48
  %53 = load double*, double** %15, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %50 to i64
  %56 = icmp sgt i32 %54, 1
  %57 = icmp ult i32 %50, 2
  %58 = and i64 %55, 4294967294
  %59 = icmp eq i64 %58, %55
  br label %63

60:                                               ; preds = %208, %40
  %61 = add nsw i32 %41, 1
  %62 = icmp slt i32 %41, %32
  br i1 %62, label %40, label %223

63:                                               ; preds = %49, %211
  %64 = phi i32 [ %38, %49 ], [ %45, %211 ]
  %65 = phi i32 [ 0, %49 ], [ %212, %211 ]
  br i1 %44, label %66, label %211

66:                                               ; preds = %63
  %67 = load double*, double** %7, align 8
  %68 = mul nsw i32 %64, %52
  %69 = add nsw i32 %68, %65
  %70 = load double*, double** %8, align 8
  %71 = load double*, double** %9, align 8
  %72 = mul nsw i32 %64, %41
  %73 = add nsw i32 %72, %65
  %74 = load double*, double** %10, align 8
  %75 = load double*, double** %11, align 8
  %76 = load double*, double** %12, align 8
  %77 = load double*, double** %13, align 8
  %78 = load double*, double** %14, align 8
  br i1 %51, label %87, label %79

79:                                               ; preds = %66
  %80 = mul nsw i32 %43, %69
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %53, i64 %81
  %83 = load double, double* %82, align 8, !tbaa !19
  %84 = fadd double %83, 0.000000e+00
  store double %84, double* %82, align 8, !tbaa !19
  br i1 %56, label %85, label %211

85:                                               ; preds = %79
  %86 = mul nsw i32 %54, %69
  br label %214

87:                                               ; preds = %66
  %88 = mul nsw i32 %50, %69
  %89 = sext i32 %88 to i64
  br label %136

90:                                               ; preds = %99, %204
  %91 = phi double [ %207, %204 ], [ %132, %99 ]
  %92 = fadd double %91, 0.000000e+00
  %93 = sext i32 %140 to i64
  %94 = getelementptr inbounds double, double* %53, i64 %93
  %95 = load double, double* %94, align 8, !tbaa !19
  %96 = fadd double %92, %95
  store double %96, double* %94, align 8, !tbaa !19
  %97 = add nuw nsw i32 %138, 1
  %98 = icmp slt i32 %97, %54
  br i1 %98, label %136, label %211

99:                                               ; preds = %151, %99
  %100 = phi i64 [ %134, %99 ], [ %152, %151 ]
  %101 = phi double [ %132, %99 ], [ %153, %151 ]
  %102 = add nsw i64 %100, %148
  %103 = getelementptr inbounds double, double* %67, i64 %102
  %104 = load double, double* %103, align 8, !tbaa !19, !llvm.access.group !56
  %105 = getelementptr inbounds double, double* %70, i64 %100
  %106 = load double, double* %105, align 8, !tbaa !19, !llvm.access.group !56
  %107 = add nsw i64 %100, %149
  %108 = getelementptr inbounds double, double* %71, i64 %107
  %109 = load double, double* %108, align 8, !tbaa !19, !llvm.access.group !56
  %110 = fmul double %106, %109
  %111 = fadd double %104, %110
  %112 = getelementptr inbounds double, double* %74, i64 %100
  %113 = load double, double* %112, align 8, !tbaa !19, !llvm.access.group !56
  %114 = add nsw i64 %100, %150
  %115 = getelementptr inbounds double, double* %75, i64 %114
  %116 = load double, double* %115, align 8, !tbaa !19, !llvm.access.group !56
  %117 = fmul double %113, %116
  %118 = fadd double %111, %117
  %119 = getelementptr inbounds double, double* %76, i64 %100
  %120 = load double, double* %119, align 8, !tbaa !19, !llvm.access.group !56
  %121 = add nsw i64 %100, %89
  %122 = getelementptr inbounds double, double* %77, i64 %121
  %123 = load double, double* %122, align 8, !tbaa !19, !llvm.access.group !56
  %124 = fmul double %120, %123
  %125 = fadd double %118, %124
  %126 = fmul double %125, 2.000000e-01
  %127 = fsub double %126, %109
  store double %127, double* %108, align 8, !tbaa !19, !llvm.access.group !56
  %128 = load double, double* %115, align 8, !tbaa !19, !llvm.access.group !56
  %129 = fsub double %126, %128
  store double %129, double* %115, align 8, !tbaa !19, !llvm.access.group !56
  %130 = load double, double* %122, align 8, !tbaa !19, !llvm.access.group !56
  %131 = fsub double %126, %130
  store double %131, double* %122, align 8, !tbaa !19, !llvm.access.group !56
  %132 = fadd double %101, %125
  %133 = getelementptr inbounds double, double* %78, i64 %102
  store double %125, double* %133, align 8, !tbaa !19, !llvm.access.group !56
  %134 = add nuw nsw i64 %100, 1
  %135 = icmp eq i64 %134, %55
  br i1 %135, label %90, label %99, !llvm.loop !57

136:                                              ; preds = %90, %87
  %137 = phi i32 [ %54, %90 ], [ %43, %87 ]
  %138 = phi i32 [ %97, %90 ], [ 0, %87 ]
  %139 = mul nsw i32 %137, %69
  %140 = add nsw i32 %139, %138
  %141 = mul nsw i32 %50, %140
  %142 = mul nsw i32 %137, %73
  %143 = add nsw i32 %142, %138
  %144 = mul nsw i32 %50, %143
  %145 = mul nsw i32 %137, %52
  %146 = add nsw i32 %145, %138
  %147 = mul nsw i32 %50, %146
  %148 = sext i32 %141 to i64
  %149 = sext i32 %144 to i64
  %150 = sext i32 %147 to i64
  br i1 %57, label %151, label %154

151:                                              ; preds = %204, %136
  %152 = phi i64 [ 0, %136 ], [ %58, %204 ]
  %153 = phi double [ 0.000000e+00, %136 ], [ %207, %204 ]
  br label %99

154:                                              ; preds = %136, %154
  %155 = phi i64 [ %202, %154 ], [ 0, %136 ]
  %156 = phi <2 x double> [ %199, %154 ], [ zeroinitializer, %136 ]
  %157 = add nsw i64 %155, %148
  %158 = getelementptr inbounds double, double* %67, i64 %157
  %159 = bitcast double* %158 to <2 x double>*
  %160 = load <2 x double>, <2 x double>* %159, align 8, !tbaa !19, !llvm.access.group !56
  %161 = getelementptr inbounds double, double* %70, i64 %155
  %162 = bitcast double* %161 to <2 x double>*
  %163 = load <2 x double>, <2 x double>* %162, align 8, !tbaa !19, !llvm.access.group !56
  %164 = add nsw i64 %155, %149
  %165 = getelementptr inbounds double, double* %71, i64 %164
  %166 = bitcast double* %165 to <2 x double>*
  %167 = load <2 x double>, <2 x double>* %166, align 8, !tbaa !19, !llvm.access.group !56
  %168 = fmul <2 x double> %163, %167
  %169 = fadd <2 x double> %160, %168
  %170 = getelementptr inbounds double, double* %74, i64 %155
  %171 = bitcast double* %170 to <2 x double>*
  %172 = load <2 x double>, <2 x double>* %171, align 8, !tbaa !19, !llvm.access.group !56
  %173 = add nsw i64 %155, %150
  %174 = getelementptr inbounds double, double* %75, i64 %173
  %175 = bitcast double* %174 to <2 x double>*
  %176 = load <2 x double>, <2 x double>* %175, align 8, !tbaa !19, !llvm.access.group !56
  %177 = fmul <2 x double> %172, %176
  %178 = fadd <2 x double> %169, %177
  %179 = getelementptr inbounds double, double* %76, i64 %155
  %180 = bitcast double* %179 to <2 x double>*
  %181 = load <2 x double>, <2 x double>* %180, align 8, !tbaa !19, !llvm.access.group !56
  %182 = add nsw i64 %155, %89
  %183 = getelementptr inbounds double, double* %77, i64 %182
  %184 = bitcast double* %183 to <2 x double>*
  %185 = load <2 x double>, <2 x double>* %184, align 8, !tbaa !19, !llvm.access.group !56
  %186 = fmul <2 x double> %181, %185
  %187 = fadd <2 x double> %178, %186
  %188 = fmul <2 x double> %187, <double 2.000000e-01, double 2.000000e-01>
  %189 = fsub <2 x double> %188, %167
  %190 = bitcast double* %165 to <2 x double>*
  store <2 x double> %189, <2 x double>* %190, align 8, !tbaa !19, !llvm.access.group !56
  %191 = bitcast double* %174 to <2 x double>*
  %192 = load <2 x double>, <2 x double>* %191, align 8, !tbaa !19, !llvm.access.group !56
  %193 = fsub <2 x double> %188, %192
  %194 = bitcast double* %174 to <2 x double>*
  store <2 x double> %193, <2 x double>* %194, align 8, !tbaa !19, !llvm.access.group !56
  %195 = bitcast double* %183 to <2 x double>*
  %196 = load <2 x double>, <2 x double>* %195, align 8, !tbaa !19, !llvm.access.group !56
  %197 = fsub <2 x double> %188, %196
  %198 = bitcast double* %183 to <2 x double>*
  store <2 x double> %197, <2 x double>* %198, align 8, !tbaa !19, !llvm.access.group !56
  %199 = fadd <2 x double> %156, %187
  %200 = getelementptr inbounds double, double* %78, i64 %157
  %201 = bitcast double* %200 to <2 x double>*
  store <2 x double> %187, <2 x double>* %201, align 8, !tbaa !19, !llvm.access.group !56
  %202 = add i64 %155, 2
  %203 = icmp eq i64 %202, %58
  br i1 %203, label %204, label %154, !llvm.loop !59

204:                                              ; preds = %154
  %205 = shufflevector <2 x double> %199, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %206 = fadd <2 x double> %199, %205
  %207 = extractelement <2 x double> %206, i32 0
  br i1 %59, label %90, label %151

208:                                              ; preds = %211, %47
  %209 = add nuw nsw i32 %48, 1
  %210 = icmp eq i32 %209, %36
  br i1 %210, label %60, label %47

211:                                              ; preds = %79, %214, %90, %63
  %212 = add nuw nsw i32 %65, 1
  %213 = icmp slt i32 %212, %45
  br i1 %213, label %63, label %208

214:                                              ; preds = %214, %85
  %215 = phi i32 [ %221, %214 ], [ 1, %85 ]
  %216 = add nsw i32 %86, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %53, i64 %217
  %219 = load double, double* %218, align 8, !tbaa !19
  %220 = fadd double %219, 0.000000e+00
  store double %220, double* %218, align 8, !tbaa !19
  %221 = add nuw nsw i32 %215, 1
  %222 = icmp slt i32 %221, %54
  br i1 %222, label %214, label %211, !llvm.loop !60

223:                                              ; preds = %60, %24
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @0, i32 %29) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #9
  br label %224

224:                                              ; preds = %223, %16
  ret void
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

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
!8 = !{!9, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = distinct !{!9, !10, !"kernel: argument 0"}
!10 = distinct !{!10, !"kernel"}
!11 = distinct !{!11, !10, !"kernel: argument 1"}
!12 = distinct !{!12, !10, !"kernel: argument 2"}
!13 = distinct !{!13, !10, !"kernel: argument 3"}
!14 = distinct !{!14, !10, !"kernel: argument 4"}
!15 = distinct !{!15, !10, !"kernel: argument 5"}
!16 = distinct !{!16, !10, !"kernel: argument 6"}
!17 = distinct !{!17, !10, !"kernel: argument 7"}
!18 = distinct !{!18, !10, !"kernel: argument 8"}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !4, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !36, !30}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !36, !30}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !36, !30}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47, !48}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = !{!47}
!50 = !{!48}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !22}
!54 = !{!55}
!55 = !{i64 2, i64 -1, i64 -1, i1 true}
!56 = distinct !{}
!57 = distinct !{!57, !58, !36, !30}
!58 = !{!"llvm.loop.parallel_accesses", !56}
!59 = distinct !{!59, !58, !30}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.peeled.count", i32 1}
