; ModuleID = '/home/oasa/Documents/ef/adsb-like-comm-toolbox/src/HLS_RECEIVER_FIXED_ACC/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trames_separ2_ssdm_thread_M_do_gen = external global i1
@Seuil_calc2_ssdm_thread_M_do_gen = external global i1
@ModuleCompute_ssdm_thread_M_do_gen = external global i1
@FrameProcessing_ssdm_thread_M_do_gen = external global i1
@DownSampling_ssdm_thread_M_do_gen = external global i1
@DOUBLEUR_U_ssdm_thread_M_do_gen = external global i1
@CRCCheck_ssdm_thread_M_do_gen = external global i1
@BitsToBytes_ssdm_thread_M_do_gen = external global i1
@BitDecider_ssdm_thread_M_do_gen = external global i1
@p_str74 = private unnamed_addr constant [14 x i8] c"ModuleCompute\00", align 1
@p_str73 = private unnamed_addr constant [3 x i8] c"s2\00", align 1
@p_str72 = private unnamed_addr constant [3 x i8] c"s1\00", align 1
@p_str71 = private unnamed_addr constant [11 x i8] c"DOUBLEUR_U\00", align 1
@p_str70 = private unnamed_addr constant [14 x i8] c"trames_separ2\00", align 1
@p_str69 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str67 = private unnamed_addr constant [12 x i8] c"Seuil_calc2\00", align 1
@p_str66 = private unnamed_addr constant [11 x i8] c"Detecteur2\00", align 1
@p_str65 = private unnamed_addr constant [7 x i8] c"detect\00", align 1
@p_str64 = private unnamed_addr constant [9 x i8] c"dbl2tsep\00", align 1
@p_str63 = private unnamed_addr constant [10 x i8] c"dbl2scalc\00", align 1
@p_str59 = private unnamed_addr constant [13 x i8] c"DownSampling\00", align 1
@p_str58 = private unnamed_addr constant [11 x i8] c"BitDecider\00", align 1
@p_str57 = private unnamed_addr constant [13 x i8] c"\22sc_uint<1>\22\00", align 1
@p_str56 = private unnamed_addr constant [12 x i8] c"BitsToBytes\00", align 1
@p_str55 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str53 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str51 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@p_str50 = private unnamed_addr constant [13 x i8] c"\22sc_uint<8>\22\00", align 1
@p_str49 = private unnamed_addr constant [9 x i8] c"CRCCheck\00", align 1
@p_str44 = private unnamed_addr constant [15 x i8] c"__ssdm_reset__\00", align 1
@p_str43 = private unnamed_addr constant [14 x i8] c"\22sc_uint< 8>\22\00", align 1
@p_str42 = private unnamed_addr constant [7 x i8] c"do_gen\00", align 1
@p_str41 = private unnamed_addr constant [16 x i8] c"FrameProcessing\00", align 1
@p_str40 = private unnamed_addr constant [12 x i8] c"sc_fifo_chn\00", align 1
@p_str36 = private unnamed_addr constant [5 x i8] c"rgbv\00", align 1
@p_str35 = private unnamed_addr constant [14 x i8] c"\22sc_uint<24>\22\00", align 1
@p_str34 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@p_str33 = private unnamed_addr constant [14 x i8] c"\22sc_uint<32>\22\00", align 1
@p_str32 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@p_str31 = private unnamed_addr constant [13 x i8] c"\22sc_int <8>\22\00", align 1
@p_str30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str29 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str28 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str27 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@p_str26 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str25 = private unnamed_addr constant [11 x i8] c"my_module2\00", align 1
@p_str24 = private unnamed_addr constant [8 x i8] c"crc2fra\00", align 1
@p_str23 = private unnamed_addr constant [8 x i8] c"byt2crc\00", align 1
@p_str22 = private unnamed_addr constant [8 x i8] c"bit2byt\00", align 1
@p_str21 = private unnamed_addr constant [8 x i8] c"dow2bit\00", align 1
@p_str20 = private unnamed_addr constant [8 x i8] c"det2dow\00", align 1
@p_str19 = private unnamed_addr constant [8 x i8] c"mod2dbl\00", align 1

define weak void @"trames_separ2::trames_separ2.1"(i1* %clock, i1* %reset, i8* %e, i1* %detect, i8* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !257
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !261
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !265
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !269
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !273
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i1* %detect) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @p_str70, [14 x i8]* @p_str70) nounwind
  %trames_separ2_ssd = load i1* @trames_separ2_ssdm_thread_M_do_gen, align 1
  br i1 %trames_separ2_ssd, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"trames_separ2::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([14 x i8]* @p_str70, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 4, [7 x i8]* @p_str26, [7 x i8]* @p_str65, i32 0, i32 0, i1* %detect) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  ret void
}

define weak void @"trames_separ2::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect, i8* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !257
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !261
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !265
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !269
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !273
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([14 x i8]* @p_str70, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp_1)
  br label %0

; <label>:0                                       ; preds = %.loopexit, %__ssdm_reset__
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %p_014_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %tmp = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* %detect)
  br i1 %tmp, label %.preheader87.preheader, label %.loopexit

.preheader87.preheader:                           ; preds = %0
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %1
  %i_0 = phi i9 [ %i, %1 ], [ 0, %.preheader87.preheader ]
  %icmp_ln50 = icmp eq i9 %i_0, -256
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %i = add i9 %i_0, 1
  br i1 %icmp_ln50, label %.preheader86.preheader, label %1

.preheader86.preheader:                           ; preds = %.preheader87
  br label %.preheader86

; <label>:1                                       ; preds = %.preheader87
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %val_V)
  %tmp_i_i2_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* %detect)
  br label %.preheader87

.preheader86:                                     ; preds = %.preheader86.preheader, %2
  %i1_0 = phi i11 [ %i_1, %2 ], [ 0, %.preheader86.preheader ]
  %icmp_ln55 = icmp eq i11 %i1_0, -128
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %i_1 = add i11 %i1_0, 1
  br i1 %icmp_ln55, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %.preheader86
  br label %.preheader

; <label>:2                                       ; preds = %.preheader86
  %val_V_1 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %val_V_1)
  %tmp_i_i1_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* %detect)
  br label %.preheader86

.preheader:                                       ; preds = %.preheader.preheader, %3
  %i2_0 = phi i8 [ %i_2, %3 ], [ 0, %.preheader.preheader ]
  %icmp_ln60 = icmp eq i8 %i2_0, -128
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i_2 = add i8 %i2_0, 1
  br i1 %icmp_ln60, label %.loopexit.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %val_V_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %val_V_2)
  %tmp_i_i_0 = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* %detect)
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  br label %0
}

define weak void @"my_module2::my_module2"(i1* %clock, i1* %reset, i8* %e, i32* %addr, i24* %rgbv, i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %mod2dbl_1_form, i1* %clock_form4, i1* %reset_form5, i8* %mod2dbl_1_form6, i8* %det2dow_1_form, i1* %my_module2_det_s_calc_clock_m_if_Val, i1* %my_module2_det_s_calc_reset_m_if_Val, i8* %my_module2_det_s_calc_e_m_if_Val_V, i1* %my_module2_det_s_calc_detect_m_if_Val, i1* %my_module2_det_t_sep_clock_m_if_Val, i1* %my_module2_det_t_sep_reset_m_if_Val, i8* %my_module2_det_t_sep_e_m_if_Val_V, i1* %my_module2_det_t_sep_detect_m_if_Val, i8* %my_module2_det_t_sep_s_m_if_Val_V, i1* %my_module2_det_dbl_clock_m_if_Val, i1* %my_module2_det_dbl_reset_m_if_Val, i8* %my_module2_det_dbl_e_m_if_Val_V, i8* %my_module2_det_dbl_s1_m_if_Val_V, i8* %my_module2_det_dbl_s2_m_if_Val_V, i8* %my_module2_det_dbl2scalc_Val_V, i8* %my_module2_det_dbl2tsep_Val_V, i1* %my_module2_det_detect_Val, i1* %clock_form7, i1* %reset_form8, i8* %det2dow_1_form9, i8* %dow2bit_1_form, i1* %clock_form10, i1* %reset_form11, i8* %dow2bit_1_form12, i1* %bit2byt_1_form, i1* %clock_form13, i1* %reset_form14, i1* %bit2byt_1_form15, i8* %byt2crc_1_form, i1* %clock_form16, i1* %reset_form17, i8* %byt2crc_1_form18, i8* %crc2fra_1_form, i1* %clock_form19, i1* %reset_form20, i8* %crc2fra_1_form21, i32* %addr_form, i24* %rgbv_form, i8* %mod2dbl_1, i8* %sc_fifo_chn_1, i8* %sc_fifo_chn_13, i8* %det2dow_1, i8* %dow2bit_1, i1* %bit2byt_1, i8* %byt2crc_1, i8* %crc2fra_1) noinline {
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %crc2fra_1_form21, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %crc2fra_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %byt2crc_1_form18, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %byt2crc_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %bit2byt_1_form15, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %bit2byt_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dow2bit_1_form12, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dow2bit_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %det2dow_1_form9, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %my_module2_det_detect_Val, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_dbl2tsep_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_dbl2scalc_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_dbl_s2_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_dbl_s1_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_dbl_e_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_t_sep_s_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %my_module2_det_t_sep_detect_m_if_Val, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_t_sep_e_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %my_module2_det_s_calc_detect_m_if_Val, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module2_det_s_calc_e_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %det2dow_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %mod2dbl_1_form6, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %mod2dbl_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %e_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !277
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !281
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !285
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr), !map !289
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv), !map !293
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form), !map !297
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form), !map !301
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e_form), !map !305
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %mod2dbl_1_form), !map !309
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form4), !map !313
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form5), !map !317
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %mod2dbl_1_form6), !map !321
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %det2dow_1_form), !map !325
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_s_calc_clock_m_if_Val), !map !329
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_s_calc_reset_m_if_Val), !map !333
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_s_calc_e_m_if_Val_V), !map !337
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_s_calc_detect_m_if_Val), !map !341
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_t_sep_clock_m_if_Val), !map !345
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_t_sep_reset_m_if_Val), !map !349
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_t_sep_e_m_if_Val_V), !map !353
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_t_sep_detect_m_if_Val), !map !357
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_t_sep_s_m_if_Val_V), !map !361
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_dbl_clock_m_if_Val), !map !365
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_dbl_reset_m_if_Val), !map !369
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_dbl_e_m_if_Val_V), !map !373
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_dbl_s1_m_if_Val_V), !map !377
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_dbl_s2_m_if_Val_V), !map !381
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_dbl2scalc_Val_V), !map !385
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module2_det_dbl2tsep_Val_V), !map !389
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module2_det_detect_Val), !map !393
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form7), !map !397
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form8), !map !401
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %det2dow_1_form9), !map !405
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dow2bit_1_form), !map !409
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form10), !map !413
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form11), !map !417
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dow2bit_1_form12), !map !421
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %bit2byt_1_form), !map !425
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form13), !map !429
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form14), !map !433
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %bit2byt_1_form15), !map !437
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %byt2crc_1_form), !map !441
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form16), !map !445
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form17), !map !449
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %byt2crc_1_form18), !map !453
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %crc2fra_1_form), !map !457
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form19), !map !461
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form20), !map !465
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %crc2fra_1_form21), !map !469
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr_form), !map !473
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv_form), !map !477
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %mod2dbl_1), !map !481
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %sc_fifo_chn_1), !map !485
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %sc_fifo_chn_13), !map !489
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %det2dow_1), !map !493
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dow2bit_1), !map !497
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %bit2byt_1), !map !501
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %byt2crc_1), !map !505
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %crc2fra_1), !map !509
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i24* %rgbv) nounwind
  call void @"ModuleCompute::ModuleCompute.1"(i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %mod2dbl_1_form)
  call void @"Detecteur2::Detecteur2.1"(i1* %clock_form4, i1* %reset_form5, i8* %mod2dbl_1_form6, i8* %det2dow_1_form, i1* %my_module2_det_s_calc_clock_m_if_Val, i1* %my_module2_det_s_calc_reset_m_if_Val, i8* %my_module2_det_s_calc_e_m_if_Val_V, i1* %my_module2_det_s_calc_detect_m_if_Val, i1* %my_module2_det_t_sep_clock_m_if_Val, i1* %my_module2_det_t_sep_reset_m_if_Val, i8* %my_module2_det_t_sep_e_m_if_Val_V, i1* %my_module2_det_t_sep_detect_m_if_Val, i8* %my_module2_det_t_sep_s_m_if_Val_V, i1* %my_module2_det_dbl_clock_m_if_Val, i1* %my_module2_det_dbl_reset_m_if_Val, i8* %my_module2_det_dbl_e_m_if_Val_V, i8* %my_module2_det_dbl_s1_m_if_Val_V, i8* %my_module2_det_dbl_s2_m_if_Val_V, i8* %my_module2_det_dbl2scalc_Val_V, i8* %my_module2_det_dbl2tsep_Val_V, i1* %my_module2_det_detect_Val)
  call void @"DownSampling::DownSampling.1"(i1* %clock_form7, i1* %reset_form8, i8* %det2dow_1_form9, i8* %dow2bit_1_form)
  call void @"BitDecider::BitDecider.1"(i1* %clock_form10, i1* %reset_form11, i8* %dow2bit_1_form12, i1* %bit2byt_1_form)
  call void @"BitsToBytes::BitsToBytes.1"(i1* %clock_form13, i1* %reset_form14, i1* %bit2byt_1_form15, i8* %byt2crc_1_form)
  call void @"CRCCheck::CRCCheck.1"(i1* %clock_form16, i1* %reset_form17, i8* %byt2crc_1_form18, i8* %crc2fra_1_form)
  call void @"FrameProcessing::FrameProcessing.1"(i1* %clock_form19, i1* %reset_form20, i8* %crc2fra_1_form21, i32* %addr_form, i24* %rgbv_form)
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [8 x i8]* @p_str19, i32 1024, i32 1024, i8* %mod2dbl_1, i8* %mod2dbl_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %mod2dbl_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [12 x i8]* @p_str40, i32 1, i32 1, i8* %sc_fifo_chn_1, i8* %sc_fifo_chn_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %sc_fifo_chn_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [12 x i8]* @p_str40, i32 1, i32 1, i8* %sc_fifo_chn_13, i8* %sc_fifo_chn_13) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %sc_fifo_chn_13, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [8 x i8]* @p_str20, i32 32, i32 32, i8* %det2dow_1, i8* %det2dow_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %det2dow_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [8 x i8]* @p_str21, i32 32, i32 32, i8* %dow2bit_1, i8* %dow2bit_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dow2bit_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [8 x i8]* @p_str22, i32 32, i32 32, i1* %bit2byt_1, i1* %bit2byt_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %bit2byt_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [8 x i8]* @p_str23, i32 32, i32 32, i8* %byt2crc_1, i8* %byt2crc_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %byt2crc_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [8 x i8]* @p_str24, i32 32, i32 32, i8* %crc2fra_1, i8* %crc2fra_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %crc2fra_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @p_str25, [11 x i8]* @p_str25) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str25, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str25, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str25, i32 4, [13 x i8]* @p_str31, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str25, i32 5, [14 x i8]* @p_str33, [5 x i8]* @p_str34, i32 0, i32 0, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str25, i32 5, [14 x i8]* @p_str35, [5 x i8]* @p_str36, i32 0, i32 0, i24* %rgbv) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %e_form, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %mod2dbl_1_form, i8* %mod2dbl_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form4, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form5, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %mod2dbl_1_form6, i8* %mod2dbl_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %det2dow_1_form, i8* %det2dow_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form7, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form8, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %det2dow_1_form9, i8* %det2dow_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %dow2bit_1_form, i8* %dow2bit_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form10, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form11, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %dow2bit_1_form12, i8* %dow2bit_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %bit2byt_1_form, i1* %bit2byt_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form13, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form14, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %bit2byt_1_form15, i1* %bit2byt_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %byt2crc_1_form, i8* %byt2crc_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form16, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form17, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %byt2crc_1_form18, i8* %byt2crc_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %crc2fra_1_form, i8* %crc2fra_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form19, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form20, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %crc2fra_1_form21, i8* %crc2fra_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i32* %addr_form, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i24* %rgbv_form, i24* %rgbv) nounwind
  ret void
}

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24*, i24) {
entry:
  %empty = call i24 @_autotb_FifoWrite_i24(i24* %0, i24 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1*, i1) {
entry:
  %empty = call i1 @_autotb_FifoWrite_i1(i1* %0, i1 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecStateEnd(...) nounwind {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecStateBegin(...) nounwind {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecSensitive(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDef(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDecl(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPortMap(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPort(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecChannel(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1*) {
entry:
  %empty = call i1 @_autotb_FifoRead_i1(i1* %0)
  ret i1 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_19 = trunc i9 %empty to i8
  ret i8 %empty_19
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_20 = trunc i8 %empty to i7
  ret i7 %empty_20
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_21 = trunc i32 %empty to i31
  ret i31 %empty_21
}

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i17 @_ssdm_op_PartSelect.i17.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_22 = trunc i22 %empty to i17
  ret i17 %empty_22
}

declare i16 @_ssdm_op_PartSelect.i16.i26.i32.i32(i26, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8, i8, i8, i8, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_23 = zext i1 %1 to i8
  %empty_24 = shl i8 %empty, 1
  %empty_25 = or i8 %empty_24, %empty_23
  ret i8 %empty_25
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32
  %empty_26 = zext i8 %1 to i32
  %empty_27 = shl i32 %empty, 8
  %empty_28 = or i32 %empty_27, %empty_26
  ret i32 %empty_28
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i8.i8.i9(i8, i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %1 to i17
  %empty_29 = zext i9 %2 to i17
  %empty_30 = shl i17 %empty, 9
  %empty_31 = or i17 %empty_30, %empty_29
  %empty_32 = zext i8 %0 to i25
  %empty_33 = zext i17 %empty_31 to i25
  %empty_34 = shl i25 %empty_32, 17
  %empty_35 = or i25 %empty_34, %empty_33
  ret i25 %empty_35
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_36 = zext i8 %2 to i16
  %empty_37 = shl i16 %empty, 8
  %empty_38 = or i16 %empty_37, %empty_36
  %empty_39 = zext i8 %0 to i24
  %empty_40 = zext i16 %empty_38 to i24
  %empty_41 = shl i24 %empty_39, 16
  %empty_42 = or i24 %empty_41, %empty_40
  ret i24 %empty_42
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i8.i7(i8, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %1 to i15
  %empty_43 = zext i7 %2 to i15
  %empty_44 = shl i15 %empty, 7
  %empty_45 = or i15 %empty_44, %empty_43
  %empty_46 = zext i8 %0 to i23
  %empty_47 = zext i15 %empty_45 to i23
  %empty_48 = shl i23 %empty_46, 15
  %empty_49 = or i23 %empty_48, %empty_47
  ret i23 %empty_49
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17, i3) nounwind readnone {
entry:
  %empty = zext i17 %0 to i20
  %empty_50 = zext i3 %1 to i20
  %empty_51 = shl i20 %empty, 3
  %empty_52 = or i20 %empty_51, %empty_50
  ret i20 %empty_52
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_53 = zext i8 %1 to i16
  %empty_54 = shl i16 %empty, 8
  %empty_55 = or i16 %empty_54, %empty_53
  ret i16 %empty_55
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7, i9) nounwind readnone {
entry:
  %empty = zext i7 %0 to i16
  %empty_56 = zext i9 %1 to i16
  %empty_57 = shl i16 %empty, 9
  %empty_58 = or i16 %empty_57, %empty_56
  ret i16 %empty_58
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i1.i8.i7(i1, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %1 to i15
  %empty_59 = zext i7 %2 to i15
  %empty_60 = shl i15 %empty, 7
  %empty_61 = or i15 %empty_60, %empty_59
  %empty_62 = zext i1 %0 to i16
  %empty_63 = zext i15 %empty_61 to i16
  %empty_64 = shl i16 %empty_62, 15
  %empty_65 = or i16 %empty_64, %empty_63
  ret i16 %empty_65
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i24 @_autotb_FifoWrite_i24(i24*, i24)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i1 @_autotb_FifoRead_i1(i1*)

define weak void @"Seuil_calc2::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect) noinline {
__ssdm_reset__:
  %p_0343_0 = alloca i8
  %x0_V = alloca i8
  %buffer_1_V = alloca i8
  %buffer_2_V = alloca i8
  %buffer_3_V = alloca i8
  %buffer_4_V = alloca i8
  %buffer_5_V = alloca i8
  %buffer_6_V = alloca i8
  %buffer_7_V = alloca i8
  %buffer_8_V = alloca i8
  %buffer_9_V = alloca i8
  %buffer_10_V = alloca i8
  %buffer_11_V = alloca i8
  %buffer_12_V = alloca i8
  %buffer_13_V = alloca i8
  %buffer_14_V = alloca i8
  %buffer_15_V = alloca i8
  %buffer_16_V = alloca i8
  %buffer_17_V = alloca i8
  %buffer_18_V = alloca i8
  %buffer_19_V = alloca i8
  %buffer_20_V = alloca i8
  %buffer_21_V = alloca i8
  %buffer_22_V = alloca i8
  %buffer_23_V = alloca i8
  %buffer_24_V = alloca i8
  %buffer_25_V = alloca i8
  %buffer_26_V = alloca i8
  %buffer_27_V = alloca i8
  %buffer_28_V = alloca i8
  %buffer_29_V = alloca i8
  %buffer_30_V = alloca i8
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !513
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !517
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !521
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !525
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str67, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_66 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %hls_label_0

hls_label_0:                                      ; preds = %hls_label_0, %__ssdm_reset__
  %p_0108_0 = phi i22 [ 0, %__ssdm_reset__ ], [ %sum_V, %hls_label_0 ]
  %p_0343_0_load = load i8* %p_0343_0
  %x0_V_load = load i8* %x0_V
  %buffer_1_V_load = load i8* %buffer_1_V
  %buffer_2_V_load = load i8* %buffer_2_V
  %buffer_3_V_load = load i8* %buffer_3_V
  %buffer_4_V_load = load i8* %buffer_4_V
  %buffer_5_V_load = load i8* %buffer_5_V
  %buffer_6_V_load = load i8* %buffer_6_V
  %buffer_7_V_load = load i8* %buffer_7_V
  %buffer_8_V_load = load i8* %buffer_8_V
  %buffer_9_V_load = load i8* %buffer_9_V
  %buffer_10_V_load = load i8* %buffer_10_V
  %buffer_11_V_load = load i8* %buffer_11_V
  %buffer_12_V_load = load i8* %buffer_12_V
  %buffer_13_V_load = load i8* %buffer_13_V
  %buffer_14_V_load = load i8* %buffer_14_V
  %buffer_15_V_load = load i8* %buffer_15_V
  %buffer_16_V_load = load i8* %buffer_16_V
  %buffer_17_V_load = load i8* %buffer_17_V
  %buffer_18_V_load = load i8* %buffer_18_V
  %buffer_19_V_load = load i8* %buffer_19_V
  %buffer_20_V_load = load i8* %buffer_20_V
  %buffer_21_V_load = load i8* %buffer_21_V
  %buffer_22_V_load = load i8* %buffer_22_V
  %buffer_23_V_load = load i8* %buffer_23_V
  %buffer_24_V_load = load i8* %buffer_24_V
  %buffer_25_V_load = load i8* %buffer_25_V
  %buffer_26_V_load = load i8* %buffer_26_V
  %buffer_27_V_load = load i8* %buffer_27_V
  %buffer_28_V_load = load i8* %buffer_28_V
  %buffer_29_V_load = load i8* %buffer_29_V
  %buffer_30_V_load = load i8* %buffer_30_V
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str69)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str30) nounwind
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %zext_ln215 = zext i8 %x0_V_load to i9
  %zext_ln215_1 = zext i8 %buffer_1_V_load to i9
  %zext_ln215_2 = zext i8 %buffer_4_V_load to i9
  %zext_ln215_3 = zext i8 %buffer_5_V_load to i9
  %zext_ln215_4 = zext i8 %buffer_14_V_load to i9
  %zext_ln215_5 = zext i8 %buffer_15_V_load to i9
  %zext_ln215_6 = zext i8 %buffer_18_V_load to i9
  %zext_ln215_7 = zext i8 %buffer_19_V_load to i9
  %add_ln215 = add i9 %zext_ln215, %zext_ln215_1
  %zext_ln215_8 = zext i9 %add_ln215 to i10
  %add_ln215_1 = add i9 %zext_ln215_3, %zext_ln215_2
  %zext_ln215_9 = zext i9 %add_ln215_1 to i10
  %add_ln215_2 = add i10 %zext_ln215_8, %zext_ln215_9
  %zext_ln215_10 = zext i10 %add_ln215_2 to i11
  %add_ln215_3 = add i9 %zext_ln215_5, %zext_ln215_4
  %zext_ln215_11 = zext i9 %add_ln215_3 to i10
  %add_ln215_4 = add i9 %zext_ln215_7, %zext_ln215_6
  %zext_ln215_12 = zext i9 %add_ln215_4 to i10
  %add_ln215_5 = add i10 %zext_ln215_11, %zext_ln215_12
  %zext_ln215_13 = zext i10 %add_ln215_5 to i11
  %ps_V = add i11 %zext_ln215_10, %zext_ln215_13
  %lhs_V_4 = zext i8 %p_0343_0_load to i16
  %ret_V_4 = mul i16 %lhs_V_4, %lhs_V_4
  %lhs_V_5 = zext i8 %val_V to i16
  %ret_V_5 = mul i16 %lhs_V_5, %lhs_V_5
  %lhs_V = zext i16 %ret_V_5 to i17
  %rhs_V_2 = zext i16 %ret_V_4 to i17
  %ret_V = sub i17 %lhs_V, %rhs_V_2
  %shl_ln = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %ret_V, i3 0)
  %sext_ln700 = sext i20 %shl_ln to i22
  %sum_V = add i22 %p_0108_0, %sext_ln700
  %lhs_V_6 = zext i11 %ps_V to i22
  %ret_V_6 = mul i22 %lhs_V_6, %lhs_V_6
  %trunc_ln = call i17 @_ssdm_op_PartSelect.i17.i22.i32.i32(i22 %sum_V, i32 5, i32 21)
  %icmp_ln879 = icmp eq i17 %trunc_ln, 0
  %res_2_V = select i1 %icmp_ln879, i17 31, i17 %trunc_ln
  %zext_ln895 = zext i17 %res_2_V to i27
  %mul_ln895 = mul i27 %zext_ln895, 27
  %zext_ln895_1 = zext i22 %ret_V_6 to i27
  %icmp_ln895 = icmp ult i27 %zext_ln895_1, %mul_ln895
  %condition = xor i1 %icmp_ln895, true
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* %detect, i1 %condition)
  %empty_67 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str69, i32 %tmp_2)
  store i8 %val_V, i8* %buffer_30_V
  store i8 %buffer_30_V_load, i8* %buffer_29_V
  store i8 %buffer_29_V_load, i8* %buffer_28_V
  store i8 %buffer_28_V_load, i8* %buffer_27_V
  store i8 %buffer_27_V_load, i8* %buffer_26_V
  store i8 %buffer_26_V_load, i8* %buffer_25_V
  store i8 %buffer_25_V_load, i8* %buffer_24_V
  store i8 %buffer_24_V_load, i8* %buffer_23_V
  store i8 %buffer_23_V_load, i8* %buffer_22_V
  store i8 %buffer_22_V_load, i8* %buffer_21_V
  store i8 %buffer_21_V_load, i8* %buffer_20_V
  store i8 %buffer_20_V_load, i8* %buffer_19_V
  store i8 %buffer_19_V_load, i8* %buffer_18_V
  store i8 %buffer_18_V_load, i8* %buffer_17_V
  store i8 %buffer_17_V_load, i8* %buffer_16_V
  store i8 %buffer_16_V_load, i8* %buffer_15_V
  store i8 %buffer_15_V_load, i8* %buffer_14_V
  store i8 %buffer_14_V_load, i8* %buffer_13_V
  store i8 %buffer_13_V_load, i8* %buffer_12_V
  store i8 %buffer_12_V_load, i8* %buffer_11_V
  store i8 %buffer_11_V_load, i8* %buffer_10_V
  store i8 %buffer_10_V_load, i8* %buffer_9_V
  store i8 %buffer_9_V_load, i8* %buffer_8_V
  store i8 %buffer_8_V_load, i8* %buffer_7_V
  store i8 %buffer_7_V_load, i8* %buffer_6_V
  store i8 %buffer_6_V_load, i8* %buffer_5_V
  store i8 %buffer_5_V_load, i8* %buffer_4_V
  store i8 %buffer_4_V_load, i8* %buffer_3_V
  store i8 %buffer_3_V_load, i8* %buffer_2_V
  store i8 %buffer_2_V_load, i8* %buffer_1_V
  store i8 %buffer_1_V_load, i8* %x0_V
  store i8 %x0_V_load, i8* %p_0343_0
  br label %hls_label_0
}

define weak void @"Seuil_calc2::Seuil_calc2.1"(i1* %clock, i1* %reset, i8* %e, i1* %detect) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !513
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !517
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !521
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !525
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i1* %detect) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @p_str67, [12 x i8]* @p_str67) nounwind
  %Seuil_calc2_ssdm_s = load i1* @Seuil_calc2_ssdm_thread_M_do_gen, align 1
  br i1 %Seuil_calc2_ssdm_s, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"Seuil_calc2::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str67, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str67, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str67, i32 5, [7 x i8]* @p_str26, [7 x i8]* @p_str65, i32 0, i32 0, i1* %detect) nounwind
  ret void
}

define weak void @"ModuleCompute::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !529
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !533
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !537
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !541
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([14 x i8]* @p_str74, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_68 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %int_sqrt32.exit, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %lhs_V = sext i8 %val_V to i16
  %ret_V = mul i16 %lhs_V, %lhs_V
  %lhs_V_7 = sext i8 %val_V_3 to i16
  %ret_V_7 = mul i16 %lhs_V_7, %lhs_V_7
  %add_ln99 = add i16 %ret_V_7, %ret_V
  br label %1

; <label>:1                                       ; preds = %2, %0
  %rc_V = phi i8 [ 0, %0 ], [ %select_ln74, %2 ]
  %add_0_i = phi i8 [ -128, %0 ], [ %add_1, %2 ]
  %i_0_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %icmp_ln70 = icmp eq i4 %i_0_i, -8
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i = add i4 %i_0_i, 1
  br i1 %icmp_ln70, label %int_sqrt32.exit, label %2

; <label>:2                                       ; preds = %1
  %res = or i8 %add_0_i, %rc_V
  %zext_ln73 = zext i8 %res to i16
  %g2 = mul i16 %zext_ln73, %zext_ln73
  %icmp_ln74 = icmp ugt i16 %g2, %add_ln99
  %select_ln74 = select i1 %icmp_ln74, i8 %rc_V, i8 %res
  %add = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %add_0_i, i32 1, i32 7)
  %add_1 = zext i7 %add to i8
  br label %1

int_sqrt32.exit:                                  ; preds = %1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %rc_V)
  br label %0
}

define weak void @"ModuleCompute::ModuleCompute.1"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !529
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !533
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !537
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !541
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @p_str74, [14 x i8]* @p_str74) nounwind
  %ModuleCompute_ssd = load i1* @ModuleCompute_ssdm_thread_M_do_gen, align 1
  br i1 %ModuleCompute_ssd, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"ModuleCompute::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([14 x i8]* @p_str74, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 4, [13 x i8]* @p_str31, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  ret void
}

define weak void @"FrameProcessing::do_gen"(i1* %clock, i1* %reset, i8* %e, i32* %addr, i24* %rgbv) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !545
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !549
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !553
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr), !map !557
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv), !map !561
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([16 x i8]* @p_str41, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_70 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %.loopexit256, %__ssdm_reset__
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_4 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %type = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %val_V_4, i8 %val_V)
  %val_V_5 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_6 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %mot1 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %val_V_6, i8 %val_V_5)
  %val_V_7 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_8 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %p_050_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %p_040_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %icmp_ln51 = icmp eq i16 %type, 34
  br i1 %icmp_ln51, label %.preheader265.preheader, label %2

.preheader265.preheader:                          ; preds = %0
  br label %.preheader265

.preheader265:                                    ; preds = %.preheader265.preheader, %1
  %i_0 = phi i6 [ %i, %1 ], [ 0, %.preheader265.preheader ]
  %icmp_ln57 = icmp eq i6 %i_0, -4
  %empty_71 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 60, i64 60, i64 60)
  %i = add i6 %i_0, 1
  br i1 %icmp_ln57, label %.loopexit256.loopexit, label %1

; <label>:1                                       ; preds = %.preheader265
  %p_030_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  br label %.preheader265

; <label>:2                                       ; preds = %0
  %icmp_ln60 = icmp eq i16 %type, 51
  br i1 %icmp_ln60, label %.preheader264.preheader, label %4

.preheader264.preheader:                          ; preds = %2
  br label %.preheader264

.preheader264:                                    ; preds = %.preheader264.preheader, %3
  %i1_0 = phi i6 [ %i_3, %3 ], [ 0, %.preheader264.preheader ]
  %icmp_ln70 = icmp eq i6 %i1_0, -4
  %empty_72 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 60, i64 60, i64 60)
  %i_3 = add i6 %i1_0, 1
  br i1 %icmp_ln70, label %.loopexit255.loopexit, label %3

; <label>:3                                       ; preds = %.preheader264
  %p_021_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  br label %.preheader264

; <label>:4                                       ; preds = %2
  %icmp_ln96 = icmp eq i16 %type, 17
  br i1 %icmp_ln96, label %5, label %.preheader.preheader

.preheader.preheader:                             ; preds = %4
  br label %.preheader

; <label>:5                                       ; preds = %4
  %zext_ln103 = zext i16 %mot1 to i26
  %shl_ln = call i25 @_ssdm_op_BitConcatenate.i25.i8.i8.i9(i8 %val_V_8, i8 %val_V_7, i9 0)
  %zext_ln103_1 = zext i25 %shl_ln to i26
  %shl_ln103_1 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i8.i7(i8 %val_V_8, i8 %val_V_7, i7 0)
  %zext_ln103_2 = zext i23 %shl_ln103_1 to i26
  %add_ln103 = add i26 %zext_ln103, %zext_ln103_1
  %curr_off = add i26 %zext_ln103_2, %add_ln103
  %add_ln107 = add i16 20, %mot1
  %trunc_ln107 = trunc i8 %val_V_7 to i7
  %p_shl = call i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7 %trunc_ln107, i9 0)
  %trunc_ln107_1 = trunc i8 %val_V_8 to i1
  %p_shl2 = call i16 @_ssdm_op_BitConcatenate.i16.i1.i8.i7(i1 %trunc_ln107_1, i8 %val_V_7, i7 0)
  %add_ln107_1 = add i16 %p_shl2, %p_shl
  %add_ln107_2 = add i16 %add_ln107, %add_ln107_1
  br label %6

; <label>:6                                       ; preds = %7, %5
  %v_assign = phi i26 [ %curr_off, %5 ], [ %curr_off_1, %7 ]
  %v_assign_cast = zext i26 %v_assign to i32
  %empty_73 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20)
  %trunc_ln107_2 = trunc i26 %v_assign to i16
  %icmp_ln107 = icmp eq i16 %trunc_ln107_2, %add_ln107_2
  br i1 %icmp_ln107, label %.loopexit.loopexit5, label %7

; <label>:7                                       ; preds = %6
  %val_V_12 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_13 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_14 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %val_V_12, i8 %val_V_13, i8 %val_V_14)
  call void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24* %rgbv, i24 %p_Result_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %addr, i32 %v_assign_cast)
  %curr_off_1 = add i26 %v_assign, 1
  br label %6

.preheader:                                       ; preds = %.preheader.preheader, %8
  %i3_0 = phi i7 [ %i_4, %8 ], [ 0, %.preheader.preheader ]
  %icmp_ln124 = icmp eq i7 %i3_0, -64
  %empty_74 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %i_4 = add i7 %i3_0, 1
  br i1 %icmp_ln124, label %.loopexit.loopexit, label %8

; <label>:8                                       ; preds = %.preheader
  %p_0186_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit5:                              ; preds = %6
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit5, %.loopexit.loopexit
  br label %.loopexit255

.loopexit255.loopexit:                            ; preds = %.preheader264
  br label %.loopexit255

.loopexit255:                                     ; preds = %.loopexit255.loopexit, %.loopexit
  br label %.loopexit256

.loopexit256.loopexit:                            ; preds = %.preheader265
  br label %.loopexit256

.loopexit256:                                     ; preds = %.loopexit256.loopexit, %.loopexit255
  br label %0
}

define weak void @"FrameProcessing::FrameProcessing.1"(i1* %clock, i1* %reset, i8* %e, i32* %addr, i24* %rgbv) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !545
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !549
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !553
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr), !map !557
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv), !map !561
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i24* %rgbv) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @p_str41, [16 x i8]* @p_str41) nounwind
  %FrameProcessing_s = load i1* @FrameProcessing_ssdm_thread_M_do_gen, align 1
  br i1 %FrameProcessing_s, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"FrameProcessing::do_gen"(i1* %clock, i1* %reset, i8* %e, i32* %addr, i24* %rgbv)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([16 x i8]* @p_str41, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 4, [14 x i8]* @p_str43, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 5, [14 x i8]* @p_str33, [5 x i8]* @p_str34, i32 0, i32 0, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([16 x i8]* @p_str41, i32 5, [14 x i8]* @p_str35, [5 x i8]* @p_str36, i32 0, i32 0, i24* %rgbv) nounwind
  ret void
}

define weak void @"DownSampling::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !565
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !569
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !573
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !577
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([13 x i8]* @p_str59, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_75 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %0, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %zext_ln38 = zext i8 %val_V to i9
  %DownSampling_e_m_if_s = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %zext_ln40 = zext i8 %DownSampling_e_m_if_s to i9
  %add_ln40 = add i9 %zext_ln40, %zext_ln38
  %trunc_ln = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %add_ln40, i32 1, i32 8)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %trunc_ln)
  br label %0
}

define weak void @"DownSampling::DownSampling.1"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !565
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !569
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !573
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !577
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @p_str59, [13 x i8]* @p_str59) nounwind
  %DownSampling_ssdm = load i1* @DownSampling_ssdm_thread_M_do_gen, align 1
  br i1 %DownSampling_ssdm, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"DownSampling::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([13 x i8]* @p_str59, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  ret void
}

define weak void @"Detecteur2::Detecteur2.1"(i1* %clock, i1* %reset, i8* %e, i8* %s, i1* %clock_form2, i1* %reset_form3, i8* %dbl2scalc_1_form4, i1* %detect_1_form, i1* %clock_form5, i1* %reset_form6, i8* %dbl2tsep_1_form7, i1* %detect_1_form8, i8* %s_form, i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %dbl2scalc_1_form, i8* %dbl2tsep_1_form, i8* %dbl2scalc_1, i8* %dbl2tsep_1, i1* %detect_1) noinline {
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2tsep_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2scalc_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %e_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2scalc_1_form4, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %s_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect_1_form8, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2tsep_1_form7, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !581
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !585
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !589
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !593
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form2), !map !597
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form3), !map !601
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2scalc_1_form4), !map !605
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect_1_form), !map !609
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form5), !map !613
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form6), !map !617
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2tsep_1_form7), !map !621
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect_1_form8), !map !625
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s_form), !map !629
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form), !map !633
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form), !map !637
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e_form), !map !641
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2scalc_1_form), !map !645
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2tsep_1_form), !map !649
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2scalc_1), !map !653
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2tsep_1), !map !657
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect_1), !map !661
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void @"Seuil_calc2::Seuil_calc2.1"(i1* %clock_form2, i1* %reset_form3, i8* %dbl2scalc_1_form4, i1* %detect_1_form)
  call void @"trames_separ2::trames_separ2.1"(i1* %clock_form5, i1* %reset_form6, i8* %dbl2tsep_1_form7, i1* %detect_1_form8, i8* %s_form)
  call void @"DOUBLEUR_U::DOUBLEUR_U.1"(i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %dbl2scalc_1_form, i8* %dbl2tsep_1_form)
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [10 x i8]* @p_str63, i32 1024, i32 1024, i8* %dbl2scalc_1, i8* %dbl2scalc_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2scalc_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [9 x i8]* @p_str64, i32 1024, i32 1024, i8* %dbl2tsep_1, i8* %dbl2tsep_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2tsep_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [7 x i8]* @p_str65, i32 1024, i32 1024, i1* %detect_1, i1* %detect_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @p_str66, [11 x i8]* @p_str66) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str66, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str66, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str66, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str66, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %e_form, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %dbl2scalc_1_form, i8* %dbl2scalc_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %dbl2tsep_1_form, i8* %dbl2tsep_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form2, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form3, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %dbl2scalc_1_form4, i8* %dbl2scalc_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %detect_1_form, i1* %detect_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock_form5, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form6, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %dbl2tsep_1_form7, i8* %dbl2tsep_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i1* %detect_1_form8, i1* %detect_1) nounwind
  call void (...)* @_ssdm_op_SpecPortMap(i8* %s_form, i8* %s) nounwind
  ret void
}

define weak void @"DOUBLEUR_U::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s1, i8* %s2) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !665
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !669
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !673
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s1), !map !677
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s2), !map !681
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s2, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([11 x i8]* @p_str71, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_76 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %0, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s1, i8 %val_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s2, i8 %val_V)
  br label %0
}

define weak void @"DOUBLEUR_U::DOUBLEUR_U.1"(i1* %clock, i1* %reset, i8* %e, i8* %s1, i8* %s2) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !665
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !669
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !673
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s1), !map !677
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s2), !map !681
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s2, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s2) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @p_str71, [11 x i8]* @p_str71) nounwind
  %DOUBLEUR_U_ssdm_t = load i1* @DOUBLEUR_U_ssdm_thread_M_do_gen, align 1
  br i1 %DOUBLEUR_U_ssdm_t, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"DOUBLEUR_U::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s1, i8* %s2)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([11 x i8]* @p_str71, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 5, [13 x i8]* @p_str50, [3 x i8]* @p_str72, i32 0, i32 0, i8* %s1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s2, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str71, i32 5, [13 x i8]* @p_str50, [3 x i8]* @p_str73, i32 0, i32 0, i8* %s2) nounwind
  ret void
}

define weak void @"CRCCheck::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
__ssdm_reset__:
  %crc_t_3 = alloca i8
  %crc_t_3_1 = alloca i8
  %crc_t_3_2 = alloca i8
  %crc_t_3_3 = alloca i8
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !685
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !689
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !693
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !697
  %ibuffer_V = alloca [68 x i8], align 1
  call void (...)* @_ssdm_op_SpecPort([9 x i8]* @p_str49, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([9 x i8]* @p_str49, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([9 x i8]* @p_str49, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_77 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %.loopexit, %__ssdm_reset__
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %1

; <label>:1                                       ; preds = %hls_label_1, %0
  %R_0 = phi i32 [ 0, %0 ], [ %select_ln49_7, %hls_label_1 ]
  %i_0 = phi i7 [ 0, %0 ], [ %i_5, %hls_label_1 ]
  %icmp_ln41 = icmp eq i7 %i_0, -60
  %empty_78 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 68, i64 68, i64 68)
  %i_5 = add i7 %i_0, 1
  br i1 %icmp_ln41, label %.preheader48.preheader, label %hls_label_1

.preheader48.preheader:                           ; preds = %1
  br label %.preheader48

hls_label_1:                                      ; preds = %1
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str53)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str30) nounwind
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %zext_ln45 = zext i7 %i_0 to i64
  %ibuffer_V_addr = getelementptr [68 x i8]* %ibuffer_V, i64 0, i64 %zext_ln45
  store i8 %val_V, i8* %ibuffer_V_addr, align 1
  %zext_ln46 = zext i8 %val_V to i32
  %trunc_ln46 = trunc i8 %val_V to i1
  %trunc_ln46_1 = trunc i32 %R_0 to i1
  %R = xor i32 %R_0, %zext_ln46
  %xor_ln46_1 = xor i1 %trunc_ln46_1, %trunc_ln46
  %lshr_ln = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %R, i32 1, i32 31)
  %zext_ln49 = zext i31 %lshr_ln to i32
  %xor_ln49 = xor i32 %zext_ln49, -2097792136
  %select_ln49 = select i1 %xor_ln46_1, i32 %xor_ln49, i32 %zext_ln49
  %trunc_ln49 = trunc i32 %select_ln49 to i1
  %lshr_ln49_1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49, i32 1, i32 31)
  %zext_ln49_1 = zext i31 %lshr_ln49_1 to i32
  %xor_ln49_1 = xor i32 %zext_ln49_1, -2097792136
  %select_ln49_1 = select i1 %trunc_ln49, i32 %xor_ln49_1, i32 %zext_ln49_1
  %trunc_ln49_1 = trunc i32 %select_ln49_1 to i1
  %lshr_ln49_2 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49_1, i32 1, i32 31)
  %zext_ln49_2 = zext i31 %lshr_ln49_2 to i32
  %xor_ln49_2 = xor i32 %zext_ln49_2, -2097792136
  %select_ln49_2 = select i1 %trunc_ln49_1, i32 %xor_ln49_2, i32 %zext_ln49_2
  %trunc_ln49_2 = trunc i32 %select_ln49_2 to i1
  %lshr_ln49_3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49_2, i32 1, i32 31)
  %zext_ln49_3 = zext i31 %lshr_ln49_3 to i32
  %xor_ln49_3 = xor i32 %zext_ln49_3, -2097792136
  %select_ln49_3 = select i1 %trunc_ln49_2, i32 %xor_ln49_3, i32 %zext_ln49_3
  %trunc_ln49_3 = trunc i32 %select_ln49_3 to i1
  %lshr_ln49_4 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49_3, i32 1, i32 31)
  %zext_ln49_4 = zext i31 %lshr_ln49_4 to i32
  %xor_ln49_4 = xor i32 %zext_ln49_4, -2097792136
  %select_ln49_4 = select i1 %trunc_ln49_3, i32 %xor_ln49_4, i32 %zext_ln49_4
  %trunc_ln49_4 = trunc i32 %select_ln49_4 to i1
  %lshr_ln49_5 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49_4, i32 1, i32 31)
  %zext_ln49_5 = zext i31 %lshr_ln49_5 to i32
  %xor_ln49_5 = xor i32 %zext_ln49_5, -2097792136
  %select_ln49_5 = select i1 %trunc_ln49_4, i32 %xor_ln49_5, i32 %zext_ln49_5
  %trunc_ln49_5 = trunc i32 %select_ln49_5 to i1
  %lshr_ln49_6 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49_5, i32 1, i32 31)
  %zext_ln49_6 = zext i31 %lshr_ln49_6 to i32
  %xor_ln49_6 = xor i32 %zext_ln49_6, -2097792136
  %select_ln49_6 = select i1 %trunc_ln49_5, i32 %xor_ln49_6, i32 %zext_ln49_6
  %trunc_ln49_6 = trunc i32 %select_ln49_6 to i1
  %lshr_ln49_7 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %select_ln49_6, i32 1, i32 31)
  %zext_ln49_7 = zext i31 %lshr_ln49_7 to i32
  %xor_ln49_7 = xor i32 %zext_ln49_7, -2097792136
  %select_ln49_7 = select i1 %trunc_ln49_6, i32 %xor_ln49_7, i32 %zext_ln49_7
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str53, i32 %tmp_3)
  br label %1

.preheader48:                                     ; preds = %.preheader48.preheader, %.preheader48.backedge
  %i1_0 = phi i3 [ %i, %.preheader48.backedge ], [ 0, %.preheader48.preheader ]
  %icmp_ln54 = icmp eq i3 %i1_0, -4
  %empty_80 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i = add i3 %i1_0, 1
  br i1 %icmp_ln54, label %.preheader47.preheader, label %2

.preheader47.preheader:                           ; preds = %.preheader48
  br label %.preheader47

; <label>:2                                       ; preds = %.preheader48
  %crc_t_0 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %trunc_ln55 = trunc i3 %i1_0 to i2
  switch i2 %trunc_ln55, label %branch3 [
    i2 0, label %..preheader48.backedge_crit_edge
    i2 1, label %branch1
    i2 -2, label %branch2
  ]

..preheader48.backedge_crit_edge:                 ; preds = %2
  store i8 %crc_t_0, i8* %crc_t_3
  br label %.preheader48.backedge

.preheader47:                                     ; preds = %.preheader47.preheader, %3
  %crc_0 = phi i32 [ %crc, %3 ], [ 0, %.preheader47.preheader ]
  %i2_0 = phi i3 [ %i_6, %3 ], [ 0, %.preheader47.preheader ]
  %icmp_ln58 = icmp eq i3 %i2_0, -4
  %empty_81 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_6 = add i3 %i2_0, 1
  br i1 %icmp_ln58, label %4, label %3

; <label>:3                                       ; preds = %.preheader47
  %crc_t_3_load = load i8* %crc_t_3
  %crc_t_3_1_load = load i8* %crc_t_3_1
  %crc_t_3_2_load = load i8* %crc_t_3_2
  %crc_t_3_3_load = load i8* %crc_t_3_3
  %trunc_ln59 = trunc i3 %i2_0 to i2
  %xor_ln59 = xor i2 %trunc_ln59, -1
  %tmp_1 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %crc_t_3_load, i8 %crc_t_3_1_load, i8 %crc_t_3_2_load, i8 %crc_t_3_3_load, i2 %xor_ln59)
  %trunc_ln59_1 = trunc i32 %crc_0 to i24
  %crc = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %trunc_ln59_1, i8 %tmp_1)
  br label %.preheader47

; <label>:4                                       ; preds = %.preheader47
  %icmp_ln63 = icmp eq i32 %crc_0, %R_0
  br i1 %icmp_ln63, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %hls_label_3
  %i3_0 = phi i7 [ %i_7, %hls_label_3 ], [ 0, %.preheader.preheader ]
  %icmp_ln68 = icmp eq i7 %i3_0, -60
  %empty_82 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 68, i64 68, i64 68)
  %i_7 = add i7 %i3_0, 1
  br i1 %icmp_ln68, label %.loopexit.loopexit, label %hls_label_3

hls_label_3:                                      ; preds = %.preheader
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str30) nounwind
  %zext_ln70 = zext i7 %i3_0 to i64
  %ibuffer_V_addr_1 = getelementptr [68 x i8]* %ibuffer_V, i64 0, i64 %zext_ln70
  %ibuffer_V_load = load i8* %ibuffer_V_addr_1, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %ibuffer_V_load)
  %empty_83 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str55, i32 %tmp_6)
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %4
  br label %0

branch1:                                          ; preds = %2
  store i8 %crc_t_0, i8* %crc_t_3_1
  br label %.preheader48.backedge

branch2:                                          ; preds = %2
  store i8 %crc_t_0, i8* %crc_t_3_2
  br label %.preheader48.backedge

branch3:                                          ; preds = %2
  store i8 %crc_t_0, i8* %crc_t_3_3
  br label %.preheader48.backedge

.preheader48.backedge:                            ; preds = %..preheader48.backedge_crit_edge, %branch3, %branch2, %branch1
  br label %.preheader48
}

define weak void @"CRCCheck::CRCCheck.1"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !685
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !689
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !693
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !697
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @p_str49, [9 x i8]* @p_str49) nounwind
  %CRCCheck_ssdm_thr = load i1* @CRCCheck_ssdm_thread_M_do_gen, align 1
  br i1 %CRCCheck_ssdm_thr, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"CRCCheck::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([9 x i8]* @p_str49, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([9 x i8]* @p_str49, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([9 x i8]* @p_str49, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([9 x i8]* @p_str49, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([9 x i8]* @p_str49, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  ret void
}

define weak void @"BitsToBytes::do_gen"(i1* %clock, i1* %reset, i1* %e, i8* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !701
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !705
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %e), !map !709
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !713
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str56, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_84 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %3, %__ssdm_reset__
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %v_assign = phi i8 [ 0, %0 ], [ %v, %2 ]
  %q_0 = phi i4 [ 0, %0 ], [ %q, %2 ]
  %icmp_ln37 = icmp eq i4 %q_0, -8
  %empty_85 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %q = add i4 %q_0, 1
  br i1 %icmp_ln37, label %3, label %2

; <label>:2                                       ; preds = %1
  %val_V = call i1 @_ssdm_op_Read.ap_fifo.volatile.i1P(i1* %e)
  %trunc_ln40 = trunc i8 %v_assign to i7
  %v = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %trunc_ln40, i1 %val_V)
  br label %1

; <label>:3                                       ; preds = %1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %v_assign)
  br label %0
}

define weak void @"BitsToBytes::BitsToBytes.1"(i1* %clock, i1* %reset, i1* %e, i8* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !701
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !705
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %e), !map !709
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !713
  call void (...)* @_ssdm_op_SpecInterface(i1* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i1* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @p_str56, [12 x i8]* @p_str56) nounwind
  %BitsToBytes_ssdm_s = load i1* @BitsToBytes_ssdm_thread_M_do_gen, align 1
  br i1 %BitsToBytes_ssdm_s, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"BitsToBytes::do_gen"(i1* %clock, i1* %reset, i1* %e, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([12 x i8]* @p_str56, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 4, [13 x i8]* @p_str57, [2 x i8]* @p_str32, i32 0, i32 0, i1* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  ret void
}

define weak void @"BitDecider::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !717
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !721
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !725
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s), !map !729
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([11 x i8]* @p_str58, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_86 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %0, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_15 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %icmp_ln37 = icmp ugt i8 %val_V, %val_V_15
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* %s, i1 %icmp_ln37)
  br label %0
}

define weak void @"BitDecider::BitDecider.1"(i1* %clock, i1* %reset, i8* %e, i1* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !717
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !721
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !725
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s), !map !729
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i1* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @p_str58, [11 x i8]* @p_str58) nounwind
  %BitDecider_ssdm_t = load i1* @BitDecider_ssdm_thread_M_do_gen, align 1
  br i1 %BitDecider_ssdm_t, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"BitDecider::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([11 x i8]* @p_str58, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 5, [13 x i8]* @p_str57, [2 x i8]* @p_str51, i32 0, i32 0, i1* %s) nounwind
  ret void
}

!opencl.kernels = !{!0, !0, !7, !7, !10, !13, !13, !15, !17, !17, !17, !17, !17, !17, !17, !17, !20, !20, !22, !24, !24, !26, !28, !28, !34, !34, !34, !34, !34, !40, !40, !34, !34, !34, !34, !28, !28, !34, !34, !34, !43, !43, !34, !34, !34, !34, !34, !34, !34, !34, !43, !43, !34, !34, !34, !34, !34, !34, !34, !43, !43, !34, !34, !34, !34, !34, !34, !34, !34, !34, !0, !0, !34, !48, !48, !51, !53, !55, !57, !62, !64, !66, !67, !69, !70, !73, !73, !70, !76, !76, !78, !78, !78, !34, !81, !81, !34, !83, !83, !34, !34, !34, !83, !83, !34, !34, !34, !84, !87, !34, !34, !34, !43, !43, !0, !0, !34, !89, !91, !92, !94, !95, !95, !97, !94, !34, !34, !34, !43, !43, !0, !0, !34, !34, !34, !34, !98, !100, !34, !34, !34, !43, !43, !0, !0, !34, !95, !95, !97, !102, !104, !105, !107, !34, !34, !34, !43, !43, !0, !0, !34, !48, !48, !51, !0, !0, !108, !108, !110, !17, !17, !17, !17, !112, !112, !114, !28, !28, !0, !0, !34, !116, !118, !119, !121, !123, !126, !126, !34, !34, !34, !127, !83, !83, !34, !129, !127, !131, !133, !133, !135, !135, !137, !140, !142, !142, !34, !34, !34, !126, !126, !144, !144, !145, !146, !148, !148, !34, !34, !34, !150, !150, !148, !148, !148, !152, !154, !150, !150, !34, !34, !156, !156, !135, !135, !158, !160, !160, !34, !34, !131, !162, !162, !34, !34, !34, !133, !133, !164, !166, !166, !34, !34, !34, !133, !133, !162, !162, !168, !170, !170, !34, !34, !34, !133, !133, !166, !166, !172, !174, !174, !34, !34, !34, !133, !133, !170, !170, !176, !133, !133, !174, !174, !178, !180, !180, !34, !34, !34, !133, !133, !150, !150, !182, !184, !184, !34, !34, !34, !133, !133, !180, !180, !184, !184, !184, !186, !186, !186, !186, !83, !186, !186, !83, !34, !34, !34, !43, !43, !0, !0, !34, !34, !34, !187, !34, !34, !34, !43, !43, !0, !0, !34, !189, !189, !0, !0, !34, !34, !146, !190, !193, !193, !194, !195, !197, !197, !34, !34, !34, !199, !199, !197, !197, !197, !34, !34, !201, !203}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!205, !212, !217, !222, !227, !232, !237, !242, !247, !252}
!bitwidth_g = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !""}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_fifo_out_if<struct _ap_sc_::sc_dt::sc_uint<24> > > &"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"parent_"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_fifo_out_if<struct _ap_sc_::sc_dt::sc_uint<24> > &"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"interface_"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !9, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_fifo_out_if<struct _ap_sc_::sc_dt::sc_uint<32> > > &"}
!15 = metadata !{null, metadata !1, metadata !2, metadata !16, metadata !4, metadata !12, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_fifo_out_if<struct _ap_sc_::sc_dt::sc_uint<32> > &"}
!17 = metadata !{null, metadata !1, metadata !2, metadata !18, metadata !4, metadata !19, metadata !6}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_prim_channel &"}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"ic__"}
!20 = metadata !{null, metadata !1, metadata !2, metadata !21, metadata !4, metadata !9, metadata !6}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_fifo_in_if<struct _ap_sc_::sc_dt::sc_int<8> > > &"}
!22 = metadata !{null, metadata !1, metadata !2, metadata !23, metadata !4, metadata !12, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_fifo_in_if<struct _ap_sc_::sc_dt::sc_int<8> > &"}
!24 = metadata !{null, metadata !1, metadata !2, metadata !25, metadata !4, metadata !9, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_signal_in_if<_Bool> > &"}
!26 = metadata !{null, metadata !1, metadata !2, metadata !27, metadata !4, metadata !12, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_signal_in_if<_Bool> &"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"int"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"name_", metadata !"size_"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space"}
!36 = metadata !{metadata !"kernel_arg_access_qual"}
!37 = metadata !{metadata !"kernel_arg_type"}
!38 = metadata !{metadata !"kernel_arg_type_qual"}
!39 = metadata !{metadata !"kernel_arg_name"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"size_"}
!43 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !46, metadata !47, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"name_"}
!48 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !4, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !46, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !50, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<32> &"}
!55 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !56, metadata !6}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"t"}
!57 = metadata !{null, metadata !58, metadata !30, metadata !59, metadata !60, metadata !61, metadata !6}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<32> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<32> &"}
!60 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !63, metadata !6}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !50, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<24> &"}
!66 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !56, metadata !6}
!67 = metadata !{null, metadata !58, metadata !30, metadata !68, metadata !60, metadata !61, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<24> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<24> &"}
!69 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !63, metadata !6}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false> &"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!73 = metadata !{null, metadata !58, metadata !30, metadata !74, metadata !60, metadata !75, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_concat_ref<8, struct ap_int_base<8, false>, 8, struct ap_int_base<8, false> > &", metadata !"struct ap_int_base<8, false> &"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!76 = metadata !{null, metadata !58, metadata !30, metadata !77, metadata !60, metadata !75, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<8, false> &", metadata !"struct ap_int_base<8, false> &"}
!78 = metadata !{null, metadata !1, metadata !2, metadata !79, metadata !4, metadata !80, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<16, struct ap_concat_ref<8, struct ap_int_base<8, false>, 8, struct ap_int_base<8, false> >, 8, struct ap_int_base<8, false> > &"}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!81 = metadata !{null, metadata !1, metadata !2, metadata !82, metadata !4, metadata !80, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<8, struct ap_int_base<8, false>, 8, struct ap_int_base<8, false> > &"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !46, metadata !52, metadata !6}
!84 = metadata !{null, metadata !1, metadata !2, metadata !85, metadata !4, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<8> &"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !63, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_uint<8> &"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !50, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!91 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !56, metadata !6}
!92 = metadata !{null, metadata !58, metadata !30, metadata !93, metadata !60, metadata !61, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<8> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<8> &"}
!94 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !63, metadata !6}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !50, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!97 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !46, metadata !52, metadata !6}
!98 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !86, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<1> &"}
!100 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !63, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_uint<1> &"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !50, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<1> &"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !56, metadata !6}
!105 = metadata !{null, metadata !58, metadata !30, metadata !106, metadata !60, metadata !61, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<1> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<1> &"}
!107 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !63, metadata !6}
!108 = metadata !{null, metadata !1, metadata !2, metadata !109, metadata !4, metadata !9, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_fifo_out_if<struct _ap_sc_::sc_dt::sc_uint<8> > > &"}
!110 = metadata !{null, metadata !1, metadata !2, metadata !111, metadata !4, metadata !12, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_fifo_out_if<struct _ap_sc_::sc_dt::sc_uint<8> > &"}
!112 = metadata !{null, metadata !1, metadata !2, metadata !113, metadata !4, metadata !9, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_fifo_in_if<struct _ap_sc_::sc_dt::sc_uint<8> > > &"}
!114 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !12, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_fifo_in_if<struct _ap_sc_::sc_dt::sc_uint<8> > &"}
!116 = metadata !{null, metadata !1, metadata !2, metadata !117, metadata !4, metadata !50, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const _Bool &"}
!118 = metadata !{null, metadata !1, metadata !2, metadata !117, metadata !4, metadata !56, metadata !6}
!119 = metadata !{null, metadata !58, metadata !30, metadata !120, metadata !60, metadata !61, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &", metadata !"const _Bool &"}
!121 = metadata !{null, metadata !1, metadata !2, metadata !122, metadata !4, metadata !63, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, false> &"}
!123 = metadata !{null, metadata !58, metadata !30, metadata !124, metadata !60, metadata !125, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, false> &", metadata !"const ap_int_base<22, false> &"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!126 = metadata !{null, metadata !1, metadata !2, metadata !122, metadata !4, metadata !52, metadata !6}
!127 = metadata !{null, metadata !58, metadata !30, metadata !128, metadata !60, metadata !125, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<22, false> &", metadata !"int"}
!129 = metadata !{null, metadata !1, metadata !2, metadata !130, metadata !4, metadata !63, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!131 = metadata !{null, metadata !58, metadata !30, metadata !132, metadata !60, metadata !125, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!133 = metadata !{null, metadata !1, metadata !2, metadata !134, metadata !4, metadata !52, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!135 = metadata !{null, metadata !1, metadata !2, metadata !136, metadata !4, metadata !52, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const sc_uint_base &"}
!137 = metadata !{null, metadata !58, metadata !30, metadata !138, metadata !60, metadata !139, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<22, false> &"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!140 = metadata !{null, metadata !58, metadata !30, metadata !141, metadata !60, metadata !125, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<22, false> &"}
!142 = metadata !{null, metadata !1, metadata !2, metadata !143, metadata !4, metadata !52, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!144 = metadata !{null, metadata !1, metadata !2, metadata !130, metadata !4, metadata !52, metadata !6}
!145 = metadata !{null, metadata !1, metadata !2, metadata !143, metadata !4, metadata !63, metadata !6}
!146 = metadata !{null, metadata !58, metadata !30, metadata !147, metadata !60, metadata !125, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<16, false> &"}
!148 = metadata !{null, metadata !1, metadata !2, metadata !149, metadata !4, metadata !52, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, true> &"}
!150 = metadata !{null, metadata !1, metadata !2, metadata !151, metadata !4, metadata !52, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!152 = metadata !{null, metadata !1, metadata !2, metadata !153, metadata !4, metadata !63, metadata !6}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<22> &"}
!154 = metadata !{null, metadata !58, metadata !30, metadata !155, metadata !60, metadata !125, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!156 = metadata !{null, metadata !1, metadata !2, metadata !157, metadata !4, metadata !52, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!158 = metadata !{null, metadata !1, metadata !2, metadata !159, metadata !4, metadata !63, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<16> &"}
!160 = metadata !{null, metadata !1, metadata !2, metadata !161, metadata !4, metadata !52, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const sc_uint<8> &"}
!162 = metadata !{null, metadata !1, metadata !2, metadata !163, metadata !4, metadata !52, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &"}
!164 = metadata !{null, metadata !58, metadata !30, metadata !165, metadata !60, metadata !125, metadata !6}
!165 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"const ap_int_base<11, false> &"}
!166 = metadata !{null, metadata !1, metadata !2, metadata !167, metadata !4, metadata !52, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<13, false> &"}
!168 = metadata !{null, metadata !58, metadata !30, metadata !169, metadata !60, metadata !125, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<13, false> &", metadata !"const ap_int_base<11, false> &"}
!170 = metadata !{null, metadata !1, metadata !2, metadata !171, metadata !4, metadata !52, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<14, false> &"}
!172 = metadata !{null, metadata !58, metadata !30, metadata !173, metadata !60, metadata !125, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<14, false> &", metadata !"const ap_int_base<11, false> &"}
!174 = metadata !{null, metadata !1, metadata !2, metadata !175, metadata !4, metadata !52, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<15, false> &"}
!176 = metadata !{null, metadata !58, metadata !30, metadata !177, metadata !60, metadata !125, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<15, false> &", metadata !"const ap_int_base<11, false> &"}
!178 = metadata !{null, metadata !58, metadata !30, metadata !179, metadata !60, metadata !125, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<11, false> &"}
!180 = metadata !{null, metadata !1, metadata !2, metadata !181, metadata !4, metadata !52, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &"}
!182 = metadata !{null, metadata !58, metadata !30, metadata !183, metadata !60, metadata !125, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &", metadata !"const ap_int_base<11, false> &"}
!184 = metadata !{null, metadata !1, metadata !2, metadata !185, metadata !4, metadata !52, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<18, false> &"}
!186 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !50, metadata !6}
!187 = metadata !{null, metadata !1, metadata !2, metadata !188, metadata !4, metadata !86, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!189 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !46, metadata !5, metadata !6}
!190 = metadata !{null, metadata !1, metadata !2, metadata !191, metadata !4, metadata !192, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!192 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!193 = metadata !{null, metadata !1, metadata !2, metadata !191, metadata !4, metadata !50, metadata !6}
!194 = metadata !{null, metadata !1, metadata !2, metadata !191, metadata !46, metadata !52, metadata !6}
!195 = metadata !{null, metadata !58, metadata !30, metadata !196, metadata !60, metadata !125, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &", metadata !"const ap_int_base<8, true> &"}
!197 = metadata !{null, metadata !1, metadata !2, metadata !198, metadata !4, metadata !52, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!199 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !52, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!201 = metadata !{null, metadata !1, metadata !2, metadata !202, metadata !4, metadata !86, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_int<8> &"}
!203 = metadata !{null, metadata !1, metadata !2, metadata !204, metadata !4, metadata !63, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_int<8> &"}
!205 = metadata !{metadata !206, i1* @trames_separ2_ssdm_thread_M_do_gen}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 0, metadata !208}
!208 = metadata !{metadata !209}
!209 = metadata !{metadata !"trames_separ2::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!210 = metadata !{metadata !211}
!211 = metadata !{i32 0, i32 0, i32 1}
!212 = metadata !{metadata !213, null}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 0, i32 31, metadata !215}
!215 = metadata !{metadata !216}
!216 = metadata !{metadata !"llvm.global_ctors.0", metadata !210, metadata !"", i32 0, i32 31}
!217 = metadata !{metadata !218, i1* @Seuil_calc2_ssdm_thread_M_do_gen}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 0, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"Seuil_calc2::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!222 = metadata !{metadata !223, i1* @ModuleCompute_ssdm_thread_M_do_gen}
!223 = metadata !{metadata !224}
!224 = metadata !{i32 0, i32 0, metadata !225}
!225 = metadata !{metadata !226}
!226 = metadata !{metadata !"ModuleCompute::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!227 = metadata !{metadata !228, i1* @FrameProcessing_ssdm_thread_M_do_gen}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 0, i32 0, metadata !230}
!230 = metadata !{metadata !231}
!231 = metadata !{metadata !"FrameProcessing::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!232 = metadata !{metadata !233, i1* @DownSampling_ssdm_thread_M_do_gen}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 0, metadata !235}
!235 = metadata !{metadata !236}
!236 = metadata !{metadata !"DownSampling::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!237 = metadata !{metadata !238, i1* @DOUBLEUR_U_ssdm_thread_M_do_gen}
!238 = metadata !{metadata !239}
!239 = metadata !{i32 0, i32 0, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"DOUBLEUR_U::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!242 = metadata !{metadata !243, i1* @CRCCheck_ssdm_thread_M_do_gen}
!243 = metadata !{metadata !244}
!244 = metadata !{i32 0, i32 0, metadata !245}
!245 = metadata !{metadata !246}
!246 = metadata !{metadata !"CRCCheck::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!247 = metadata !{metadata !248, i1* @BitsToBytes_ssdm_thread_M_do_gen}
!248 = metadata !{metadata !249}
!249 = metadata !{i32 0, i32 0, metadata !250}
!250 = metadata !{metadata !251}
!251 = metadata !{metadata !"BitsToBytes::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!252 = metadata !{metadata !253, i1* @BitDecider_ssdm_thread_M_do_gen}
!253 = metadata !{metadata !254}
!254 = metadata !{i32 0, i32 0, metadata !255}
!255 = metadata !{metadata !256}
!256 = metadata !{metadata !"BitDecider::__ssdm_thread_M_do_gen", metadata !210, metadata !"bool", i32 0, i32 0}
!257 = metadata !{metadata !258}
!258 = metadata !{i32 0, i32 0, metadata !259}
!259 = metadata !{metadata !260}
!260 = metadata !{metadata !"trames_separ2.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!261 = metadata !{metadata !262}
!262 = metadata !{i32 0, i32 0, metadata !263}
!263 = metadata !{metadata !264}
!264 = metadata !{metadata !"trames_separ2.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!265 = metadata !{metadata !266}
!266 = metadata !{i32 0, i32 7, metadata !267}
!267 = metadata !{metadata !268}
!268 = metadata !{metadata !"trames_separ2.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!269 = metadata !{metadata !270}
!270 = metadata !{i32 0, i32 0, metadata !271}
!271 = metadata !{metadata !272}
!272 = metadata !{metadata !"trames_separ2.detect.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!273 = metadata !{metadata !274}
!274 = metadata !{i32 0, i32 7, metadata !275}
!275 = metadata !{metadata !276}
!276 = metadata !{metadata !"trames_separ2.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!277 = metadata !{metadata !278}
!278 = metadata !{i32 0, i32 0, metadata !279}
!279 = metadata !{metadata !280}
!280 = metadata !{metadata !"my_module2.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!281 = metadata !{metadata !282}
!282 = metadata !{i32 0, i32 0, metadata !283}
!283 = metadata !{metadata !284}
!284 = metadata !{metadata !"my_module2.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!285 = metadata !{metadata !286}
!286 = metadata !{i32 0, i32 7, metadata !287}
!287 = metadata !{metadata !288}
!288 = metadata !{metadata !"my_module2.e.m_if.Val.V", metadata !210, metadata !"int8", i32 0, i32 7}
!289 = metadata !{metadata !290}
!290 = metadata !{i32 0, i32 31, metadata !291}
!291 = metadata !{metadata !292}
!292 = metadata !{metadata !"my_module2.addr.m_if.Val.V", metadata !210, metadata !"uint32", i32 0, i32 31}
!293 = metadata !{metadata !294}
!294 = metadata !{i32 0, i32 23, metadata !295}
!295 = metadata !{metadata !296}
!296 = metadata !{metadata !"my_module2.rgbv.m_if.Val.V", metadata !210, metadata !"uint24", i32 0, i32 23}
!297 = metadata !{metadata !298}
!298 = metadata !{i32 0, i32 0, metadata !299}
!299 = metadata !{metadata !300}
!300 = metadata !{metadata !"my_module2.mod.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!301 = metadata !{metadata !302}
!302 = metadata !{i32 0, i32 0, metadata !303}
!303 = metadata !{metadata !304}
!304 = metadata !{metadata !"my_module2.mod.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!305 = metadata !{metadata !306}
!306 = metadata !{i32 0, i32 7, metadata !307}
!307 = metadata !{metadata !308}
!308 = metadata !{metadata !"my_module2.mod.e.m_if.Val.V", metadata !210, metadata !"int8", i32 0, i32 7}
!309 = metadata !{metadata !310}
!310 = metadata !{i32 0, i32 7, metadata !311}
!311 = metadata !{metadata !312}
!312 = metadata !{metadata !"my_module2.mod.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!313 = metadata !{metadata !314}
!314 = metadata !{i32 0, i32 0, metadata !315}
!315 = metadata !{metadata !316}
!316 = metadata !{metadata !"my_module2.det.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!317 = metadata !{metadata !318}
!318 = metadata !{i32 0, i32 0, metadata !319}
!319 = metadata !{metadata !320}
!320 = metadata !{metadata !"my_module2.det.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!321 = metadata !{metadata !322}
!322 = metadata !{i32 0, i32 7, metadata !323}
!323 = metadata !{metadata !324}
!324 = metadata !{metadata !"my_module2.det.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!325 = metadata !{metadata !326}
!326 = metadata !{i32 0, i32 7, metadata !327}
!327 = metadata !{metadata !328}
!328 = metadata !{metadata !"my_module2.det.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!329 = metadata !{metadata !330}
!330 = metadata !{i32 0, i32 0, metadata !331}
!331 = metadata !{metadata !332}
!332 = metadata !{metadata !"my_module2.det.s_calc.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!333 = metadata !{metadata !334}
!334 = metadata !{i32 0, i32 0, metadata !335}
!335 = metadata !{metadata !336}
!336 = metadata !{metadata !"my_module2.det.s_calc.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!337 = metadata !{metadata !338}
!338 = metadata !{i32 0, i32 7, metadata !339}
!339 = metadata !{metadata !340}
!340 = metadata !{metadata !"my_module2.det.s_calc.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!341 = metadata !{metadata !342}
!342 = metadata !{i32 0, i32 0, metadata !343}
!343 = metadata !{metadata !344}
!344 = metadata !{metadata !"my_module2.det.s_calc.detect.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!345 = metadata !{metadata !346}
!346 = metadata !{i32 0, i32 0, metadata !347}
!347 = metadata !{metadata !348}
!348 = metadata !{metadata !"my_module2.det.t_sep.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!349 = metadata !{metadata !350}
!350 = metadata !{i32 0, i32 0, metadata !351}
!351 = metadata !{metadata !352}
!352 = metadata !{metadata !"my_module2.det.t_sep.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!353 = metadata !{metadata !354}
!354 = metadata !{i32 0, i32 7, metadata !355}
!355 = metadata !{metadata !356}
!356 = metadata !{metadata !"my_module2.det.t_sep.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!357 = metadata !{metadata !358}
!358 = metadata !{i32 0, i32 0, metadata !359}
!359 = metadata !{metadata !360}
!360 = metadata !{metadata !"my_module2.det.t_sep.detect.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!361 = metadata !{metadata !362}
!362 = metadata !{i32 0, i32 7, metadata !363}
!363 = metadata !{metadata !364}
!364 = metadata !{metadata !"my_module2.det.t_sep.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!365 = metadata !{metadata !366}
!366 = metadata !{i32 0, i32 0, metadata !367}
!367 = metadata !{metadata !368}
!368 = metadata !{metadata !"my_module2.det.dbl.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!369 = metadata !{metadata !370}
!370 = metadata !{i32 0, i32 0, metadata !371}
!371 = metadata !{metadata !372}
!372 = metadata !{metadata !"my_module2.det.dbl.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!373 = metadata !{metadata !374}
!374 = metadata !{i32 0, i32 7, metadata !375}
!375 = metadata !{metadata !376}
!376 = metadata !{metadata !"my_module2.det.dbl.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!377 = metadata !{metadata !378}
!378 = metadata !{i32 0, i32 7, metadata !379}
!379 = metadata !{metadata !380}
!380 = metadata !{metadata !"my_module2.det.dbl.s1.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!381 = metadata !{metadata !382}
!382 = metadata !{i32 0, i32 7, metadata !383}
!383 = metadata !{metadata !384}
!384 = metadata !{metadata !"my_module2.det.dbl.s2.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!385 = metadata !{metadata !386}
!386 = metadata !{i32 0, i32 7, metadata !387}
!387 = metadata !{metadata !388}
!388 = metadata !{metadata !"my_module2.det.dbl2scalc.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!389 = metadata !{metadata !390}
!390 = metadata !{i32 0, i32 7, metadata !391}
!391 = metadata !{metadata !392}
!392 = metadata !{metadata !"my_module2.det.dbl2tsep.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!393 = metadata !{metadata !394}
!394 = metadata !{i32 0, i32 0, metadata !395}
!395 = metadata !{metadata !396}
!396 = metadata !{metadata !"my_module2.det.detect.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!397 = metadata !{metadata !398}
!398 = metadata !{i32 0, i32 0, metadata !399}
!399 = metadata !{metadata !400}
!400 = metadata !{metadata !"my_module2.dow.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!401 = metadata !{metadata !402}
!402 = metadata !{i32 0, i32 0, metadata !403}
!403 = metadata !{metadata !404}
!404 = metadata !{metadata !"my_module2.dow.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!405 = metadata !{metadata !406}
!406 = metadata !{i32 0, i32 7, metadata !407}
!407 = metadata !{metadata !408}
!408 = metadata !{metadata !"my_module2.dow.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!409 = metadata !{metadata !410}
!410 = metadata !{i32 0, i32 7, metadata !411}
!411 = metadata !{metadata !412}
!412 = metadata !{metadata !"my_module2.dow.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!413 = metadata !{metadata !414}
!414 = metadata !{i32 0, i32 0, metadata !415}
!415 = metadata !{metadata !416}
!416 = metadata !{metadata !"my_module2.bit.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!417 = metadata !{metadata !418}
!418 = metadata !{i32 0, i32 0, metadata !419}
!419 = metadata !{metadata !420}
!420 = metadata !{metadata !"my_module2.bit.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!421 = metadata !{metadata !422}
!422 = metadata !{i32 0, i32 7, metadata !423}
!423 = metadata !{metadata !424}
!424 = metadata !{metadata !"my_module2.bit.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!425 = metadata !{metadata !426}
!426 = metadata !{i32 0, i32 0, metadata !427}
!427 = metadata !{metadata !428}
!428 = metadata !{metadata !"my_module2.bit.s.m_if.Val.V", metadata !210, metadata !"uint1", i32 0, i32 0}
!429 = metadata !{metadata !430}
!430 = metadata !{i32 0, i32 0, metadata !431}
!431 = metadata !{metadata !432}
!432 = metadata !{metadata !"my_module2.byt.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!433 = metadata !{metadata !434}
!434 = metadata !{i32 0, i32 0, metadata !435}
!435 = metadata !{metadata !436}
!436 = metadata !{metadata !"my_module2.byt.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!437 = metadata !{metadata !438}
!438 = metadata !{i32 0, i32 0, metadata !439}
!439 = metadata !{metadata !440}
!440 = metadata !{metadata !"my_module2.byt.e.m_if.Val.V", metadata !210, metadata !"uint1", i32 0, i32 0}
!441 = metadata !{metadata !442}
!442 = metadata !{i32 0, i32 7, metadata !443}
!443 = metadata !{metadata !444}
!444 = metadata !{metadata !"my_module2.byt.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!445 = metadata !{metadata !446}
!446 = metadata !{i32 0, i32 0, metadata !447}
!447 = metadata !{metadata !448}
!448 = metadata !{metadata !"my_module2.crc.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!449 = metadata !{metadata !450}
!450 = metadata !{i32 0, i32 0, metadata !451}
!451 = metadata !{metadata !452}
!452 = metadata !{metadata !"my_module2.crc.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!453 = metadata !{metadata !454}
!454 = metadata !{i32 0, i32 7, metadata !455}
!455 = metadata !{metadata !456}
!456 = metadata !{metadata !"my_module2.crc.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!457 = metadata !{metadata !458}
!458 = metadata !{i32 0, i32 7, metadata !459}
!459 = metadata !{metadata !460}
!460 = metadata !{metadata !"my_module2.crc.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!461 = metadata !{metadata !462}
!462 = metadata !{i32 0, i32 0, metadata !463}
!463 = metadata !{metadata !464}
!464 = metadata !{metadata !"my_module2.fra.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!465 = metadata !{metadata !466}
!466 = metadata !{i32 0, i32 0, metadata !467}
!467 = metadata !{metadata !468}
!468 = metadata !{metadata !"my_module2.fra.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!469 = metadata !{metadata !470}
!470 = metadata !{i32 0, i32 7, metadata !471}
!471 = metadata !{metadata !472}
!472 = metadata !{metadata !"my_module2.fra.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!473 = metadata !{metadata !474}
!474 = metadata !{i32 0, i32 31, metadata !475}
!475 = metadata !{metadata !476}
!476 = metadata !{metadata !"my_module2.fra.addr.m_if.Val.V", metadata !210, metadata !"uint32", i32 0, i32 31}
!477 = metadata !{metadata !478}
!478 = metadata !{i32 0, i32 23, metadata !479}
!479 = metadata !{metadata !480}
!480 = metadata !{metadata !"my_module2.fra.rgbv.m_if.Val.V", metadata !210, metadata !"uint24", i32 0, i32 23}
!481 = metadata !{metadata !482}
!482 = metadata !{i32 0, i32 7, metadata !483}
!483 = metadata !{metadata !484}
!484 = metadata !{metadata !"my_module2.mod2dbl.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!485 = metadata !{metadata !486}
!486 = metadata !{i32 0, i32 7, metadata !487}
!487 = metadata !{metadata !488}
!488 = metadata !{metadata !"my_module2.dbl2det1.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!489 = metadata !{metadata !490}
!490 = metadata !{i32 0, i32 7, metadata !491}
!491 = metadata !{metadata !492}
!492 = metadata !{metadata !"my_module2.dbl2det2.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!493 = metadata !{metadata !494}
!494 = metadata !{i32 0, i32 7, metadata !495}
!495 = metadata !{metadata !496}
!496 = metadata !{metadata !"my_module2.det2dow.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!497 = metadata !{metadata !498}
!498 = metadata !{i32 0, i32 7, metadata !499}
!499 = metadata !{metadata !500}
!500 = metadata !{metadata !"my_module2.dow2bit.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!501 = metadata !{metadata !502}
!502 = metadata !{i32 0, i32 0, metadata !503}
!503 = metadata !{metadata !504}
!504 = metadata !{metadata !"my_module2.bit2byt.Val.V", metadata !210, metadata !"uint1", i32 0, i32 0}
!505 = metadata !{metadata !506}
!506 = metadata !{i32 0, i32 7, metadata !507}
!507 = metadata !{metadata !508}
!508 = metadata !{metadata !"my_module2.byt2crc.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!509 = metadata !{metadata !510}
!510 = metadata !{i32 0, i32 7, metadata !511}
!511 = metadata !{metadata !512}
!512 = metadata !{metadata !"my_module2.crc2fra.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!513 = metadata !{metadata !514}
!514 = metadata !{i32 0, i32 0, metadata !515}
!515 = metadata !{metadata !516}
!516 = metadata !{metadata !"Seuil_calc2.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!517 = metadata !{metadata !518}
!518 = metadata !{i32 0, i32 0, metadata !519}
!519 = metadata !{metadata !520}
!520 = metadata !{metadata !"Seuil_calc2.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!521 = metadata !{metadata !522}
!522 = metadata !{i32 0, i32 7, metadata !523}
!523 = metadata !{metadata !524}
!524 = metadata !{metadata !"Seuil_calc2.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!525 = metadata !{metadata !526}
!526 = metadata !{i32 0, i32 0, metadata !527}
!527 = metadata !{metadata !528}
!528 = metadata !{metadata !"Seuil_calc2.detect.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!529 = metadata !{metadata !530}
!530 = metadata !{i32 0, i32 0, metadata !531}
!531 = metadata !{metadata !532}
!532 = metadata !{metadata !"ModuleCompute.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!533 = metadata !{metadata !534}
!534 = metadata !{i32 0, i32 0, metadata !535}
!535 = metadata !{metadata !536}
!536 = metadata !{metadata !"ModuleCompute.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!537 = metadata !{metadata !538}
!538 = metadata !{i32 0, i32 7, metadata !539}
!539 = metadata !{metadata !540}
!540 = metadata !{metadata !"ModuleCompute.e.m_if.Val.V", metadata !210, metadata !"int8", i32 0, i32 7}
!541 = metadata !{metadata !542}
!542 = metadata !{i32 0, i32 7, metadata !543}
!543 = metadata !{metadata !544}
!544 = metadata !{metadata !"ModuleCompute.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!545 = metadata !{metadata !546}
!546 = metadata !{i32 0, i32 0, metadata !547}
!547 = metadata !{metadata !548}
!548 = metadata !{metadata !"FrameProcessing.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!549 = metadata !{metadata !550}
!550 = metadata !{i32 0, i32 0, metadata !551}
!551 = metadata !{metadata !552}
!552 = metadata !{metadata !"FrameProcessing.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!553 = metadata !{metadata !554}
!554 = metadata !{i32 0, i32 7, metadata !555}
!555 = metadata !{metadata !556}
!556 = metadata !{metadata !"FrameProcessing.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!557 = metadata !{metadata !558}
!558 = metadata !{i32 0, i32 31, metadata !559}
!559 = metadata !{metadata !560}
!560 = metadata !{metadata !"FrameProcessing.addr.m_if.Val.V", metadata !210, metadata !"uint32", i32 0, i32 31}
!561 = metadata !{metadata !562}
!562 = metadata !{i32 0, i32 23, metadata !563}
!563 = metadata !{metadata !564}
!564 = metadata !{metadata !"FrameProcessing.rgbv.m_if.Val.V", metadata !210, metadata !"uint24", i32 0, i32 23}
!565 = metadata !{metadata !566}
!566 = metadata !{i32 0, i32 0, metadata !567}
!567 = metadata !{metadata !568}
!568 = metadata !{metadata !"DownSampling.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!569 = metadata !{metadata !570}
!570 = metadata !{i32 0, i32 0, metadata !571}
!571 = metadata !{metadata !572}
!572 = metadata !{metadata !"DownSampling.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!573 = metadata !{metadata !574}
!574 = metadata !{i32 0, i32 7, metadata !575}
!575 = metadata !{metadata !576}
!576 = metadata !{metadata !"DownSampling.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!577 = metadata !{metadata !578}
!578 = metadata !{i32 0, i32 7, metadata !579}
!579 = metadata !{metadata !580}
!580 = metadata !{metadata !"DownSampling.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!581 = metadata !{metadata !582}
!582 = metadata !{i32 0, i32 0, metadata !583}
!583 = metadata !{metadata !584}
!584 = metadata !{metadata !"Detecteur2.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!585 = metadata !{metadata !586}
!586 = metadata !{i32 0, i32 0, metadata !587}
!587 = metadata !{metadata !588}
!588 = metadata !{metadata !"Detecteur2.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!589 = metadata !{metadata !590}
!590 = metadata !{i32 0, i32 7, metadata !591}
!591 = metadata !{metadata !592}
!592 = metadata !{metadata !"Detecteur2.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!593 = metadata !{metadata !594}
!594 = metadata !{i32 0, i32 7, metadata !595}
!595 = metadata !{metadata !596}
!596 = metadata !{metadata !"Detecteur2.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!597 = metadata !{metadata !598}
!598 = metadata !{i32 0, i32 0, metadata !599}
!599 = metadata !{metadata !600}
!600 = metadata !{metadata !"Detecteur2.s_calc.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!601 = metadata !{metadata !602}
!602 = metadata !{i32 0, i32 0, metadata !603}
!603 = metadata !{metadata !604}
!604 = metadata !{metadata !"Detecteur2.s_calc.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!605 = metadata !{metadata !606}
!606 = metadata !{i32 0, i32 7, metadata !607}
!607 = metadata !{metadata !608}
!608 = metadata !{metadata !"Detecteur2.s_calc.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!609 = metadata !{metadata !610}
!610 = metadata !{i32 0, i32 0, metadata !611}
!611 = metadata !{metadata !612}
!612 = metadata !{metadata !"Detecteur2.s_calc.detect.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!613 = metadata !{metadata !614}
!614 = metadata !{i32 0, i32 0, metadata !615}
!615 = metadata !{metadata !616}
!616 = metadata !{metadata !"Detecteur2.t_sep.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!617 = metadata !{metadata !618}
!618 = metadata !{i32 0, i32 0, metadata !619}
!619 = metadata !{metadata !620}
!620 = metadata !{metadata !"Detecteur2.t_sep.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!621 = metadata !{metadata !622}
!622 = metadata !{i32 0, i32 7, metadata !623}
!623 = metadata !{metadata !624}
!624 = metadata !{metadata !"Detecteur2.t_sep.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!625 = metadata !{metadata !626}
!626 = metadata !{i32 0, i32 0, metadata !627}
!627 = metadata !{metadata !628}
!628 = metadata !{metadata !"Detecteur2.t_sep.detect.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!629 = metadata !{metadata !630}
!630 = metadata !{i32 0, i32 7, metadata !631}
!631 = metadata !{metadata !632}
!632 = metadata !{metadata !"Detecteur2.t_sep.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!633 = metadata !{metadata !634}
!634 = metadata !{i32 0, i32 0, metadata !635}
!635 = metadata !{metadata !636}
!636 = metadata !{metadata !"Detecteur2.dbl.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!637 = metadata !{metadata !638}
!638 = metadata !{i32 0, i32 0, metadata !639}
!639 = metadata !{metadata !640}
!640 = metadata !{metadata !"Detecteur2.dbl.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!641 = metadata !{metadata !642}
!642 = metadata !{i32 0, i32 7, metadata !643}
!643 = metadata !{metadata !644}
!644 = metadata !{metadata !"Detecteur2.dbl.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!645 = metadata !{metadata !646}
!646 = metadata !{i32 0, i32 7, metadata !647}
!647 = metadata !{metadata !648}
!648 = metadata !{metadata !"Detecteur2.dbl.s1.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!649 = metadata !{metadata !650}
!650 = metadata !{i32 0, i32 7, metadata !651}
!651 = metadata !{metadata !652}
!652 = metadata !{metadata !"Detecteur2.dbl.s2.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!653 = metadata !{metadata !654}
!654 = metadata !{i32 0, i32 7, metadata !655}
!655 = metadata !{metadata !656}
!656 = metadata !{metadata !"Detecteur2.dbl2scalc.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!657 = metadata !{metadata !658}
!658 = metadata !{i32 0, i32 7, metadata !659}
!659 = metadata !{metadata !660}
!660 = metadata !{metadata !"Detecteur2.dbl2tsep.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!661 = metadata !{metadata !662}
!662 = metadata !{i32 0, i32 0, metadata !663}
!663 = metadata !{metadata !664}
!664 = metadata !{metadata !"Detecteur2.detect.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!665 = metadata !{metadata !666}
!666 = metadata !{i32 0, i32 0, metadata !667}
!667 = metadata !{metadata !668}
!668 = metadata !{metadata !"DOUBLEUR_U.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!669 = metadata !{metadata !670}
!670 = metadata !{i32 0, i32 0, metadata !671}
!671 = metadata !{metadata !672}
!672 = metadata !{metadata !"DOUBLEUR_U.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!673 = metadata !{metadata !674}
!674 = metadata !{i32 0, i32 7, metadata !675}
!675 = metadata !{metadata !676}
!676 = metadata !{metadata !"DOUBLEUR_U.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!677 = metadata !{metadata !678}
!678 = metadata !{i32 0, i32 7, metadata !679}
!679 = metadata !{metadata !680}
!680 = metadata !{metadata !"DOUBLEUR_U.s1.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!681 = metadata !{metadata !682}
!682 = metadata !{i32 0, i32 7, metadata !683}
!683 = metadata !{metadata !684}
!684 = metadata !{metadata !"DOUBLEUR_U.s2.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!685 = metadata !{metadata !686}
!686 = metadata !{i32 0, i32 0, metadata !687}
!687 = metadata !{metadata !688}
!688 = metadata !{metadata !"CRCCheck.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!689 = metadata !{metadata !690}
!690 = metadata !{i32 0, i32 0, metadata !691}
!691 = metadata !{metadata !692}
!692 = metadata !{metadata !"CRCCheck.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!693 = metadata !{metadata !694}
!694 = metadata !{i32 0, i32 7, metadata !695}
!695 = metadata !{metadata !696}
!696 = metadata !{metadata !"CRCCheck.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!697 = metadata !{metadata !698}
!698 = metadata !{i32 0, i32 7, metadata !699}
!699 = metadata !{metadata !700}
!700 = metadata !{metadata !"CRCCheck.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!701 = metadata !{metadata !702}
!702 = metadata !{i32 0, i32 0, metadata !703}
!703 = metadata !{metadata !704}
!704 = metadata !{metadata !"BitsToBytes.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!705 = metadata !{metadata !706}
!706 = metadata !{i32 0, i32 0, metadata !707}
!707 = metadata !{metadata !708}
!708 = metadata !{metadata !"BitsToBytes.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!709 = metadata !{metadata !710}
!710 = metadata !{i32 0, i32 0, metadata !711}
!711 = metadata !{metadata !712}
!712 = metadata !{metadata !"BitsToBytes.e.m_if.Val.V", metadata !210, metadata !"uint1", i32 0, i32 0}
!713 = metadata !{metadata !714}
!714 = metadata !{i32 0, i32 7, metadata !715}
!715 = metadata !{metadata !716}
!716 = metadata !{metadata !"BitsToBytes.s.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!717 = metadata !{metadata !718}
!718 = metadata !{i32 0, i32 0, metadata !719}
!719 = metadata !{metadata !720}
!720 = metadata !{metadata !"BitDecider.clock.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!721 = metadata !{metadata !722}
!722 = metadata !{i32 0, i32 0, metadata !723}
!723 = metadata !{metadata !724}
!724 = metadata !{metadata !"BitDecider.reset.m_if.Val", metadata !210, metadata !"bool", i32 0, i32 0}
!725 = metadata !{metadata !726}
!726 = metadata !{i32 0, i32 7, metadata !727}
!727 = metadata !{metadata !728}
!728 = metadata !{metadata !"BitDecider.e.m_if.Val.V", metadata !210, metadata !"uint8", i32 0, i32 7}
!729 = metadata !{metadata !730}
!730 = metadata !{i32 0, i32 0, metadata !731}
!731 = metadata !{metadata !732}
!732 = metadata !{metadata !"BitDecider.s.m_if.Val.V", metadata !210, metadata !"uint1", i32 0, i32 0}
