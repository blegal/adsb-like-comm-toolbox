; ModuleID = '/home/oasa/Documents/ef/adsb-like-comm-toolbox/src/HLS_RECEIVER_FLOAT/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trames_separ_ssdm_thread_M_do_gen = external global i1
@Seuil_calc_ssdm_thread_M_do_gen = external global i1
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
@p_str70 = private unnamed_addr constant [13 x i8] c"trames_separ\00", align 1
@p_str69 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str67 = private unnamed_addr constant [11 x i8] c"Seuil_calc\00", align 1
@p_str66 = private unnamed_addr constant [10 x i8] c"Detecteur\00", align 1
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
@p_str25 = private unnamed_addr constant [10 x i8] c"my_module\00", align 1
@p_str24 = private unnamed_addr constant [8 x i8] c"crc2fra\00", align 1
@p_str23 = private unnamed_addr constant [8 x i8] c"byt2crc\00", align 1
@p_str22 = private unnamed_addr constant [8 x i8] c"bit2byt\00", align 1
@p_str21 = private unnamed_addr constant [8 x i8] c"dow2bit\00", align 1
@p_str20 = private unnamed_addr constant [8 x i8] c"det2dow\00", align 1
@p_str19 = private unnamed_addr constant [8 x i8] c"mod2dbl\00", align 1

define weak void @"trames_separ::trames_separ.1"(i1* %clock, i1* %reset, i8* %e, i1* %detect, i8* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !198
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !202
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !206
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !210
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !214
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i1* %detect) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @p_str70, [13 x i8]* @p_str70) nounwind
  %trames_separ_ssdm = load i1* @trames_separ_ssdm_thread_M_do_gen, align 1
  br i1 %trames_separ_ssdm, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"trames_separ::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([13 x i8]* @p_str70, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 4, [7 x i8]* @p_str26, [7 x i8]* @p_str65, i32 0, i32 0, i1* %detect) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
  ret void
}

define weak void @"trames_separ::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect, i8* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !198
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !202
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !206
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !210
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !214
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str70, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([13 x i8]* @p_str70, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp_1)
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
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
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
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
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
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
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

define weak void @"my_module::my_module"(i1* %clock, i1* %reset, i8* %e, i32* %addr, i24* %rgbv, i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %mod2dbl_1_form, i1* %clock_form4, i1* %reset_form5, i8* %mod2dbl_1_form6, i8* %det2dow_1_form, i1* %my_module_det_s_calc_clock_m_if_Val, i1* %my_module_det_s_calc_reset_m_if_Val, i8* %my_module_det_s_calc_e_m_if_Val_V, i1* %my_module_det_s_calc_detect_m_if_Val, i1* %my_module_det_t_sep_clock_m_if_Val, i1* %my_module_det_t_sep_reset_m_if_Val, i8* %my_module_det_t_sep_e_m_if_Val_V, i1* %my_module_det_t_sep_detect_m_if_Val, i8* %my_module_det_t_sep_s_m_if_Val_V, i1* %my_module_det_dbl_clock_m_if_Val, i1* %my_module_det_dbl_reset_m_if_Val, i8* %my_module_det_dbl_e_m_if_Val_V, i8* %my_module_det_dbl_s1_m_if_Val_V, i8* %my_module_det_dbl_s2_m_if_Val_V, i8* %my_module_det_dbl2scalc_Val_V, i8* %my_module_det_dbl2tsep_Val_V, i1* %my_module_det_detect_Val, i1* %clock_form7, i1* %reset_form8, i8* %det2dow_1_form9, i8* %dow2bit_1_form, i1* %clock_form10, i1* %reset_form11, i8* %dow2bit_1_form12, i1* %bit2byt_1_form, i1* %clock_form13, i1* %reset_form14, i1* %bit2byt_1_form15, i8* %byt2crc_1_form, i1* %clock_form16, i1* %reset_form17, i8* %byt2crc_1_form18, i8* %crc2fra_1_form, i1* %clock_form19, i1* %reset_form20, i8* %crc2fra_1_form21, i32* %addr_form, i24* %rgbv_form, i8* %mod2dbl_1, i8* %sc_fifo_chn_1, i8* %sc_fifo_chn_13, i8* %det2dow_1, i8* %dow2bit_1, i1* %bit2byt_1, i8* %byt2crc_1, i8* %crc2fra_1) noinline {
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
  call void (...)* @_ssdm_op_SpecInterface(i1* %my_module_det_detect_Val, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_dbl2tsep_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_dbl2scalc_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_dbl_s2_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_dbl_s1_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_dbl_e_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_t_sep_s_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %my_module_det_t_sep_detect_m_if_Val, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_t_sep_e_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %my_module_det_s_calc_detect_m_if_Val, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %my_module_det_s_calc_e_m_if_Val_V, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %det2dow_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %mod2dbl_1_form6, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %mod2dbl_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %e_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !218
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !222
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !226
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr), !map !230
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv), !map !234
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form), !map !238
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form), !map !242
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e_form), !map !246
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %mod2dbl_1_form), !map !250
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form4), !map !254
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form5), !map !258
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %mod2dbl_1_form6), !map !262
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %det2dow_1_form), !map !266
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_s_calc_clock_m_if_Val), !map !270
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_s_calc_reset_m_if_Val), !map !274
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_s_calc_e_m_if_Val_V), !map !278
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_s_calc_detect_m_if_Val), !map !282
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_t_sep_clock_m_if_Val), !map !286
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_t_sep_reset_m_if_Val), !map !290
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_t_sep_e_m_if_Val_V), !map !294
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_t_sep_detect_m_if_Val), !map !298
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_t_sep_s_m_if_Val_V), !map !302
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_dbl_clock_m_if_Val), !map !306
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_dbl_reset_m_if_Val), !map !310
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_dbl_e_m_if_Val_V), !map !314
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_dbl_s1_m_if_Val_V), !map !318
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_dbl_s2_m_if_Val_V), !map !322
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_dbl2scalc_Val_V), !map !326
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %my_module_det_dbl2tsep_Val_V), !map !330
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %my_module_det_detect_Val), !map !334
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form7), !map !338
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form8), !map !342
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %det2dow_1_form9), !map !346
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dow2bit_1_form), !map !350
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form10), !map !354
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form11), !map !358
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dow2bit_1_form12), !map !362
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %bit2byt_1_form), !map !366
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form13), !map !370
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form14), !map !374
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %bit2byt_1_form15), !map !378
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %byt2crc_1_form), !map !382
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form16), !map !386
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form17), !map !390
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %byt2crc_1_form18), !map !394
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %crc2fra_1_form), !map !398
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form19), !map !402
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form20), !map !406
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %crc2fra_1_form21), !map !410
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr_form), !map !414
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv_form), !map !418
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %mod2dbl_1), !map !422
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %sc_fifo_chn_1), !map !426
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %sc_fifo_chn_13), !map !430
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %det2dow_1), !map !434
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dow2bit_1), !map !438
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %bit2byt_1), !map !442
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %byt2crc_1), !map !446
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %crc2fra_1), !map !450
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i24* %rgbv) nounwind
  call void @"ModuleCompute::ModuleCompute.1"(i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %mod2dbl_1_form)
  call void @"Detecteur::Detecteur.1"(i1* %clock_form4, i1* %reset_form5, i8* %mod2dbl_1_form6, i8* %det2dow_1_form, i1* %my_module_det_s_calc_clock_m_if_Val, i1* %my_module_det_s_calc_reset_m_if_Val, i8* %my_module_det_s_calc_e_m_if_Val_V, i1* %my_module_det_s_calc_detect_m_if_Val, i1* %my_module_det_t_sep_clock_m_if_Val, i1* %my_module_det_t_sep_reset_m_if_Val, i8* %my_module_det_t_sep_e_m_if_Val_V, i1* %my_module_det_t_sep_detect_m_if_Val, i8* %my_module_det_t_sep_s_m_if_Val_V, i1* %my_module_det_dbl_clock_m_if_Val, i1* %my_module_det_dbl_reset_m_if_Val, i8* %my_module_det_dbl_e_m_if_Val_V, i8* %my_module_det_dbl_s1_m_if_Val_V, i8* %my_module_det_dbl_s2_m_if_Val_V, i8* %my_module_det_dbl2scalc_Val_V, i8* %my_module_det_dbl2tsep_Val_V, i1* %my_module_det_detect_Val)
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
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @p_str25, [10 x i8]* @p_str25) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str25, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str25, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str25, i32 4, [13 x i8]* @p_str31, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %addr, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str25, i32 5, [14 x i8]* @p_str33, [5 x i8]* @p_str34, i32 0, i32 0, i32* %addr) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %rgbv, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str25, i32 5, [14 x i8]* @p_str35, [5 x i8]* @p_str36, i32 0, i32 0, i24* %rgbv) nounwind
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
  %empty_17 = trunc i9 %empty to i8
  ret i8 %empty_17
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_18 = trunc i32 %empty to i8
  ret i8 %empty_18
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_19 = trunc i8 %empty to i7
  ret i7 %empty_19
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_20 = trunc i32 %empty to i31
  ret i31 %empty_20
}

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

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
  %empty_21 = zext i1 %1 to i8
  %empty_22 = shl i8 %empty, 1
  %empty_23 = or i8 %empty_22, %empty_21
  ret i8 %empty_23
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32
  %empty_24 = zext i8 %1 to i32
  %empty_25 = shl i32 %empty, 8
  %empty_26 = or i32 %empty_25, %empty_24
  ret i32 %empty_26
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i8.i8.i9(i8, i8, i9) nounwind readnone {
entry:
  %empty = zext i8 %1 to i17
  %empty_27 = zext i9 %2 to i17
  %empty_28 = shl i17 %empty, 9
  %empty_29 = or i17 %empty_28, %empty_27
  %empty_30 = zext i8 %0 to i25
  %empty_31 = zext i17 %empty_29 to i25
  %empty_32 = shl i25 %empty_30, 17
  %empty_33 = or i25 %empty_32, %empty_31
  ret i25 %empty_33
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_34 = zext i8 %2 to i16
  %empty_35 = shl i16 %empty, 8
  %empty_36 = or i16 %empty_35, %empty_34
  %empty_37 = zext i8 %0 to i24
  %empty_38 = zext i16 %empty_36 to i24
  %empty_39 = shl i24 %empty_37, 16
  %empty_40 = or i24 %empty_39, %empty_38
  ret i24 %empty_40
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i8.i7(i8, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %1 to i15
  %empty_41 = zext i7 %2 to i15
  %empty_42 = shl i15 %empty, 7
  %empty_43 = or i15 %empty_42, %empty_41
  %empty_44 = zext i8 %0 to i23
  %empty_45 = zext i15 %empty_43 to i23
  %empty_46 = shl i23 %empty_44, 15
  %empty_47 = or i23 %empty_46, %empty_45
  ret i23 %empty_47
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_48 = zext i8 %1 to i16
  %empty_49 = shl i16 %empty, 8
  %empty_50 = or i16 %empty_49, %empty_48
  ret i16 %empty_50
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i7.i9(i7, i9) nounwind readnone {
entry:
  %empty = zext i7 %0 to i16
  %empty_51 = zext i9 %1 to i16
  %empty_52 = shl i16 %empty, 9
  %empty_53 = or i16 %empty_52, %empty_51
  ret i16 %empty_53
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i1.i8.i7(i1, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %1 to i15
  %empty_54 = zext i7 %2 to i15
  %empty_55 = shl i15 %empty, 7
  %empty_56 = or i15 %empty_55, %empty_54
  %empty_57 = zext i1 %0 to i16
  %empty_58 = zext i15 %empty_56 to i16
  %empty_59 = shl i16 %empty_57, 15
  %empty_60 = or i16 %empty_59, %empty_58
  ret i16 %empty_60
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i24 @_autotb_FifoWrite_i24(i24*, i24)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i1 @_autotb_FifoRead_i1(i1*)

define weak void @"Seuil_calc::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect) noinline {
__ssdm_reset__:
  %buffer_load_8_0 = alloca float
  %buffer_load_8_1 = alloca float
  %buffer_load_8_2 = alloca float
  %buffer_load_8_3 = alloca float
  %buffer_load_8_4 = alloca float
  %buffer_load_8_5 = alloca float
  %buffer_load_8_6 = alloca float
  %buffer_load_8_7 = alloca float
  %buffer_load_8_8 = alloca float
  %buffer_load_8_9 = alloca float
  %buffer_load_8_10 = alloca float
  %buffer_load_8_11 = alloca float
  %buffer_load_8_12 = alloca float
  %buffer_load_8_13 = alloca float
  %buffer_load_8_14 = alloca float
  %buffer_load_8_15 = alloca float
  %buffer_load_8_16 = alloca float
  %buffer_load_8_17 = alloca float
  %buffer_load_8_18 = alloca float
  %buffer_load_8_19 = alloca float
  %buffer_load_8_20 = alloca float
  %buffer_load_8_21 = alloca float
  %buffer_load_8_22 = alloca float
  %buffer_load_8_23 = alloca float
  %buffer_load_8_24 = alloca float
  %buffer_load_8_25 = alloca float
  %buffer_load_8_26 = alloca float
  %buffer_load_8_27 = alloca float
  %buffer_load_8_28 = alloca float
  %buffer_load_8_29 = alloca float
  %buffer_load_8_30 = alloca float
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !454
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !458
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !462
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !466
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([11 x i8]* @p_str67, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_61 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp_7)
  br label %hls_label_0

hls_label_0:                                      ; preds = %hls_label_0, %__ssdm_reset__
  %buffer_load = load float* %buffer_load_8_0
  %buffer_load_1 = load float* %buffer_load_8_1
  %buffer_load_2 = load float* %buffer_load_8_2
  %buffer_load_3 = load float* %buffer_load_8_3
  %buffer_load_4 = load float* %buffer_load_8_4
  %buffer_load_5 = load float* %buffer_load_8_5
  %buffer_load_6 = load float* %buffer_load_8_6
  %buffer_load_7 = load float* %buffer_load_8_7
  %buffer_load_8 = load float* %buffer_load_8_8
  %buffer_load_9 = load float* %buffer_load_8_9
  %buffer_load_10 = load float* %buffer_load_8_10
  %buffer_load_11 = load float* %buffer_load_8_11
  %buffer_load_12 = load float* %buffer_load_8_12
  %buffer_load_13 = load float* %buffer_load_8_13
  %buffer_load_14 = load float* %buffer_load_8_14
  %buffer_load_15 = load float* %buffer_load_8_15
  %buffer_load_16 = load float* %buffer_load_8_16
  %buffer_load_17 = load float* %buffer_load_8_17
  %buffer_load_18 = load float* %buffer_load_8_18
  %buffer_load_19 = load float* %buffer_load_8_19
  %buffer_load_20 = load float* %buffer_load_8_20
  %buffer_load_21 = load float* %buffer_load_8_21
  %buffer_load_22 = load float* %buffer_load_8_22
  %buffer_load_23 = load float* %buffer_load_8_23
  %buffer_load_24 = load float* %buffer_load_8_24
  %buffer_load_25 = load float* %buffer_load_8_25
  %buffer_load_26 = load float* %buffer_load_8_26
  %buffer_load_27 = load float* %buffer_load_8_27
  %buffer_load_28 = load float* %buffer_load_8_28
  %buffer_load_29 = load float* %buffer_load_8_29
  %buffer_load_30 = load float* %buffer_load_8_30
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str69)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str30) nounwind
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %zext_ln52 = zext i8 %val_V to i32
  %tmp = uitofp i32 %zext_ln52 to float
  %tmp_1 = fadd float %buffer_load, %buffer_load_1
  %tmp_2 = fadd float %tmp_1, %buffer_load_4
  %tmp_3 = fadd float %tmp_2, %buffer_load_5
  %tmp_4 = fadd float %tmp_3, %buffer_load_14
  %tmp_5 = fadd float %tmp_4, %buffer_load_15
  %tmp_6 = fadd float %tmp_5, %buffer_load_18
  %ps = fadd float %tmp_6, %buffer_load_19
  %sqrv = fmul float %buffer_load, %buffer_load
  %sum_1 = fadd float %sqrv, 0.000000e+00
  %sqrv_1 = fmul float %buffer_load_1, %buffer_load_1
  %sum_1_1 = fadd float %sum_1, %sqrv_1
  %sqrv_2 = fmul float %buffer_load_2, %buffer_load_2
  %sum_1_2 = fadd float %sum_1_1, %sqrv_2
  %sqrv_3 = fmul float %buffer_load_3, %buffer_load_3
  %sum_1_3 = fadd float %sum_1_2, %sqrv_3
  %sqrv_4 = fmul float %buffer_load_4, %buffer_load_4
  %sum_1_4 = fadd float %sum_1_3, %sqrv_4
  %sqrv_5 = fmul float %buffer_load_5, %buffer_load_5
  %sum_1_5 = fadd float %sum_1_4, %sqrv_5
  %sqrv_6 = fmul float %buffer_load_6, %buffer_load_6
  %sum_1_6 = fadd float %sum_1_5, %sqrv_6
  %sqrv_7 = fmul float %buffer_load_7, %buffer_load_7
  %sum_1_7 = fadd float %sum_1_6, %sqrv_7
  %sqrv_8 = fmul float %buffer_load_8, %buffer_load_8
  %sum_1_8 = fadd float %sum_1_7, %sqrv_8
  %sqrv_9 = fmul float %buffer_load_9, %buffer_load_9
  %sum_1_9 = fadd float %sum_1_8, %sqrv_9
  %sqrv_s = fmul float %buffer_load_10, %buffer_load_10
  %sum_1_s = fadd float %sum_1_9, %sqrv_s
  %sqrv_10 = fmul float %buffer_load_11, %buffer_load_11
  %sum_1_10 = fadd float %sum_1_s, %sqrv_10
  %sqrv_11 = fmul float %buffer_load_12, %buffer_load_12
  %sum_1_11 = fadd float %sum_1_10, %sqrv_11
  %sqrv_12 = fmul float %buffer_load_13, %buffer_load_13
  %sum_1_12 = fadd float %sum_1_11, %sqrv_12
  %sqrv_13 = fmul float %buffer_load_14, %buffer_load_14
  %sum_1_13 = fadd float %sum_1_12, %sqrv_13
  %sqrv_14 = fmul float %buffer_load_15, %buffer_load_15
  %sum_1_14 = fadd float %sum_1_13, %sqrv_14
  %sqrv_15 = fmul float %buffer_load_16, %buffer_load_16
  %sum_1_15 = fadd float %sum_1_14, %sqrv_15
  %sqrv_16 = fmul float %buffer_load_17, %buffer_load_17
  %sum_1_16 = fadd float %sum_1_15, %sqrv_16
  %sqrv_17 = fmul float %buffer_load_18, %buffer_load_18
  %sum_1_17 = fadd float %sum_1_16, %sqrv_17
  %sqrv_18 = fmul float %buffer_load_19, %buffer_load_19
  %sum_1_18 = fadd float %sum_1_17, %sqrv_18
  %sqrv_19 = fmul float %buffer_load_20, %buffer_load_20
  %sum_1_19 = fadd float %sum_1_18, %sqrv_19
  %sqrv_20 = fmul float %buffer_load_21, %buffer_load_21
  %sum_1_20 = fadd float %sum_1_19, %sqrv_20
  %sqrv_21 = fmul float %buffer_load_22, %buffer_load_22
  %sum_1_21 = fadd float %sum_1_20, %sqrv_21
  %sqrv_22 = fmul float %buffer_load_23, %buffer_load_23
  %sum_1_22 = fadd float %sum_1_21, %sqrv_22
  %sqrv_23 = fmul float %buffer_load_24, %buffer_load_24
  %sum_1_23 = fadd float %sum_1_22, %sqrv_23
  %sqrv_24 = fmul float %buffer_load_25, %buffer_load_25
  %sum_1_24 = fadd float %sum_1_23, %sqrv_24
  %sqrv_25 = fmul float %buffer_load_26, %buffer_load_26
  %sum_1_25 = fadd float %sum_1_24, %sqrv_25
  %sqrv_26 = fmul float %buffer_load_27, %buffer_load_27
  %sum_1_26 = fadd float %sum_1_25, %sqrv_26
  %sqrv_27 = fmul float %buffer_load_28, %buffer_load_28
  %sum_1_27 = fadd float %sum_1_26, %sqrv_27
  %sqrv_28 = fmul float %buffer_load_29, %buffer_load_29
  %sum_1_28 = fadd float %sum_1_27, %sqrv_28
  %sqrv_29 = fmul float %buffer_load_30, %buffer_load_30
  %sum_1_29 = fadd float %sum_1_28, %sqrv_29
  %sqrv_30 = fmul float %tmp, %tmp
  %sum_1_30 = fadd float %sum_1_29, %sqrv_30
  %sum = fmul float %sum_1_30, 8.000000e+00
  %tmp_8 = fmul float %ps, %ps
  %res = fdiv float %tmp_8, %sum
  %bitcast_ln68 = bitcast float %res to i32
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %bitcast_ln68, i32 23, i32 30)
  %trunc_ln68 = trunc i32 %bitcast_ln68 to i23
  %icmp_ln68 = icmp ne i8 %tmp_s, -1
  %icmp_ln68_1 = icmp eq i23 %trunc_ln68, 0
  %or_ln68 = or i1 %icmp_ln68_1, %icmp_ln68
  %tmp_10 = fcmp ogt float %res, 0x3FE99999A0000000
  %and_ln68 = and i1 %or_ln68, %tmp_10
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* %detect, i1 %and_ln68)
  %empty_62 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str69, i32 %tmp_9)
  store float %tmp, float* %buffer_load_8_30
  store float %buffer_load_30, float* %buffer_load_8_29
  store float %buffer_load_29, float* %buffer_load_8_28
  store float %buffer_load_28, float* %buffer_load_8_27
  store float %buffer_load_27, float* %buffer_load_8_26
  store float %buffer_load_26, float* %buffer_load_8_25
  store float %buffer_load_25, float* %buffer_load_8_24
  store float %buffer_load_24, float* %buffer_load_8_23
  store float %buffer_load_23, float* %buffer_load_8_22
  store float %buffer_load_22, float* %buffer_load_8_21
  store float %buffer_load_21, float* %buffer_load_8_20
  store float %buffer_load_20, float* %buffer_load_8_19
  store float %buffer_load_19, float* %buffer_load_8_18
  store float %buffer_load_18, float* %buffer_load_8_17
  store float %buffer_load_17, float* %buffer_load_8_16
  store float %buffer_load_16, float* %buffer_load_8_15
  store float %buffer_load_15, float* %buffer_load_8_14
  store float %buffer_load_14, float* %buffer_load_8_13
  store float %buffer_load_13, float* %buffer_load_8_12
  store float %buffer_load_12, float* %buffer_load_8_11
  store float %buffer_load_11, float* %buffer_load_8_10
  store float %buffer_load_10, float* %buffer_load_8_9
  store float %buffer_load_9, float* %buffer_load_8_8
  store float %buffer_load_8, float* %buffer_load_8_7
  store float %buffer_load_7, float* %buffer_load_8_6
  store float %buffer_load_6, float* %buffer_load_8_5
  store float %buffer_load_5, float* %buffer_load_8_4
  store float %buffer_load_4, float* %buffer_load_8_3
  store float %buffer_load_3, float* %buffer_load_8_2
  store float %buffer_load_2, float* %buffer_load_8_1
  store float %buffer_load_1, float* %buffer_load_8_0
  br label %hls_label_0
}

define weak void @"Seuil_calc::Seuil_calc.1"(i1* %clock, i1* %reset, i8* %e, i1* %detect) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !454
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !458
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !462
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect), !map !466
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i1* %detect) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @p_str67, [11 x i8]* @p_str67) nounwind
  %Seuil_calc_ssdm_t = load i1* @Seuil_calc_ssdm_thread_M_do_gen, align 1
  br i1 %Seuil_calc_ssdm_t, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"Seuil_calc::do_gen"(i1* %clock, i1* %reset, i8* %e, i1* %detect)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([11 x i8]* @p_str67, i32 2, [7 x i8]* @p_str42) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str27, i1* %clock, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([7 x i8]* @p_str42, [6 x i8]* @p_str28, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str67, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str67, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str67, i32 5, [7 x i8]* @p_str26, [7 x i8]* @p_str65, i32 0, i32 0, i1* %detect) nounwind
  ret void
}

define weak void @"ModuleCompute::do_gen"(i1* %clock, i1* %reset, i8* %e, i8* %s) noinline {
__ssdm_reset__:
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !470
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !474
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !478
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !482
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str74, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([14 x i8]* @p_str74, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %int_sqrt32.exit, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %lhs_V = sext i8 %val_V to i16
  %ret_V = mul i16 %lhs_V, %lhs_V
  %lhs_V_1 = sext i8 %val_V_3 to i16
  %ret_V_1 = mul i16 %lhs_V_1, %lhs_V_1
  %add_ln99 = add i16 %ret_V_1, %ret_V
  br label %1

; <label>:1                                       ; preds = %2, %0
  %rc_V = phi i8 [ 0, %0 ], [ %select_ln74, %2 ]
  %add_0_i = phi i8 [ -128, %0 ], [ %add_1, %2 ]
  %i_0_i = phi i4 [ 0, %0 ], [ %i, %2 ]
  %icmp_ln70 = icmp eq i4 %i_0_i, -8
  %empty_64 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !470
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !474
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !478
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !482
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !486
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !490
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !494
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr), !map !498
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv), !map !502
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
  %empty_65 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
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
  %empty_66 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 60, i64 60, i64 60)
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
  %empty_67 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 60, i64 60, i64 60)
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
  %empty_68 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20)
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
  %empty_69 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !486
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !490
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !494
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %addr), !map !498
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %rgbv), !map !502
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !506
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !510
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !514
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !518
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([13 x i8]* @p_str59, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([13 x i8]* @p_str59, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_70 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !506
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !510
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !514
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !518
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

define weak void @"Detecteur::Detecteur.1"(i1* %clock, i1* %reset, i8* %e, i8* %s, i1* %clock_form2, i1* %reset_form3, i8* %dbl2scalc_1_form4, i1* %detect_1_form, i1* %clock_form5, i1* %reset_form6, i8* %dbl2tsep_1_form7, i1* %detect_1_form8, i8* %s_form, i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %dbl2scalc_1_form, i8* %dbl2tsep_1_form, i8* %dbl2scalc_1, i8* %dbl2tsep_1, i1* %detect_1) noinline {
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2tsep_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2scalc_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %e_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect_1_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2scalc_1_form4, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %s_form, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect_1_form8, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2tsep_1_form7, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !522
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !526
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !530
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !534
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form2), !map !538
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form3), !map !542
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2scalc_1_form4), !map !546
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect_1_form), !map !550
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form5), !map !554
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form6), !map !558
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2tsep_1_form7), !map !562
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect_1_form8), !map !566
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s_form), !map !570
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock_form), !map !574
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form), !map !578
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e_form), !map !582
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2scalc_1_form), !map !586
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2tsep_1_form), !map !590
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2scalc_1), !map !594
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %dbl2tsep_1), !map !598
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %detect_1), !map !602
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 4, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str30, i32 5, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i8* %s) nounwind
  call void @"Seuil_calc::Seuil_calc.1"(i1* %clock_form2, i1* %reset_form3, i8* %dbl2scalc_1_form4, i1* %detect_1_form)
  call void @"trames_separ::trames_separ.1"(i1* %clock_form5, i1* %reset_form6, i8* %dbl2tsep_1_form7, i1* %detect_1_form8, i8* %s_form)
  call void @"DOUBLEUR_U::DOUBLEUR_U.1"(i1* %clock_form, i1* %reset_form, i8* %e_form, i8* %dbl2scalc_1_form, i8* %dbl2tsep_1_form)
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [10 x i8]* @p_str63, i32 1024, i32 1024, i8* %dbl2scalc_1, i8* %dbl2scalc_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2scalc_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [9 x i8]* @p_str64, i32 1024, i32 1024, i8* %dbl2tsep_1, i8* %dbl2tsep_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %dbl2tsep_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecChannel([1 x i8]* @p_str30, i32 1, [1 x i8]* @p_str30, [7 x i8]* @p_str65, i32 1024, i32 1024, i1* %detect_1, i1* %detect_1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %detect_1, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @p_str66, [10 x i8]* @p_str66) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str66, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str66, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str66, i32 4, [13 x i8]* @p_str50, [2 x i8]* @p_str32, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecPort([10 x i8]* @p_str66, i32 5, [13 x i8]* @p_str50, [2 x i8]* @p_str51, i32 0, i32 0, i8* %s) nounwind
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !606
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !610
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !614
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s1), !map !618
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s2), !map !622
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
  %empty_71 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %0, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s1, i8 %val_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s2, i8 %val_V)
  br label %0
}

define weak void @"DOUBLEUR_U::DOUBLEUR_U.1"(i1* %clock, i1* %reset, i8* %e, i8* %s1, i8* %s2) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !606
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !610
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !614
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s1), !map !618
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s2), !map !622
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !626
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !630
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !634
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !638
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
  %empty_72 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %.loopexit, %__ssdm_reset__
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %1

; <label>:1                                       ; preds = %hls_label_1, %0
  %R_0 = phi i32 [ 0, %0 ], [ %select_ln49_7, %hls_label_1 ]
  %i_0 = phi i7 [ 0, %0 ], [ %i_5, %hls_label_1 ]
  %icmp_ln41 = icmp eq i7 %i_0, -60
  %empty_73 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 68, i64 68, i64 68)
  %i_5 = add i7 %i_0, 1
  br i1 %icmp_ln41, label %.preheader48.preheader, label %hls_label_1

.preheader48.preheader:                           ; preds = %1
  br label %.preheader48

hls_label_1:                                      ; preds = %1
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str53)
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
  %empty_74 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str53, i32 %tmp_s)
  br label %1

.preheader48:                                     ; preds = %.preheader48.preheader, %.preheader48.backedge
  %i1_0 = phi i3 [ %i, %.preheader48.backedge ], [ 0, %.preheader48.preheader ]
  %icmp_ln54 = icmp eq i3 %i1_0, -4
  %empty_75 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
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
  %empty_76 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_6 = add i3 %i2_0, 1
  br i1 %icmp_ln58, label %4, label %3

; <label>:3                                       ; preds = %.preheader47
  %crc_t_3_load = load i8* %crc_t_3
  %crc_t_3_1_load = load i8* %crc_t_3_1
  %crc_t_3_2_load = load i8* %crc_t_3_2
  %crc_t_3_3_load = load i8* %crc_t_3_3
  %trunc_ln59 = trunc i3 %i2_0 to i2
  %xor_ln59 = xor i2 %trunc_ln59, -1
  %tmp_11 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %crc_t_3_load, i8 %crc_t_3_1_load, i8 %crc_t_3_2_load, i8 %crc_t_3_3_load, i2 %xor_ln59)
  %trunc_ln59_1 = trunc i32 %crc_0 to i24
  %crc = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 %trunc_ln59_1, i8 %tmp_11)
  br label %.preheader47

; <label>:4                                       ; preds = %.preheader47
  %icmp_ln63 = icmp eq i32 %crc_0, %R_0
  br i1 %icmp_ln63, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %hls_label_3
  %i3_0 = phi i7 [ %i_7, %hls_label_3 ], [ 0, %.preheader.preheader ]
  %icmp_ln68 = icmp eq i7 %i3_0, -60
  %empty_77 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 68, i64 68, i64 68)
  %i_7 = add i7 %i3_0, 1
  br i1 %icmp_ln68, label %.loopexit.loopexit, label %hls_label_3

hls_label_3:                                      ; preds = %.preheader
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str30) nounwind
  %zext_ln70 = zext i7 %i3_0 to i64
  %ibuffer_V_addr_1 = getelementptr [68 x i8]* %ibuffer_V, i64 0, i64 %zext_ln70
  %ibuffer_V_load = load i8* %ibuffer_V_addr_1, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %ibuffer_V_load)
  %empty_78 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str55, i32 %tmp_3)
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !626
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !630
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !634
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !638
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !642
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !646
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %e), !map !650
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !654
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([12 x i8]* @p_str56, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([12 x i8]* @p_str56, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_79 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %3, %__ssdm_reset__
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %v_assign = phi i8 [ 0, %0 ], [ %v, %2 ]
  %q_0 = phi i4 [ 0, %0 ], [ %q, %2 ]
  %icmp_ln37 = icmp eq i4 %q_0, -8
  %empty_80 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !642
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !646
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %e), !map !650
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !654
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !658
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !662
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !666
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s), !map !670
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str27, i32 0, i32 0, i1* %clock) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str58, i32 0, [7 x i8]* @p_str26, [6 x i8]* @p_str28, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %s, [8 x i8]* @p_str29, i32 0, i32 0, [1 x i8]* @p_str30, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30, [1 x i8]* @p_str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str30, [1 x i8]* @p_str30) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([11 x i8]* @p_str58, i32 2, [7 x i8]* @p_str42) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str44)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str30) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_81 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str44, i32 %tmp)
  br label %0

; <label>:0                                       ; preds = %0, %__ssdm_reset__
  %val_V = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %val_V_15 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %icmp_ln37 = icmp ugt i8 %val_V, %val_V_15
  call void @_ssdm_op_Write.ap_fifo.volatile.i1P(i1* %s, i1 %icmp_ln37)
  br label %0
}

define weak void @"BitDecider::BitDecider.1"(i1* %clock, i1* %reset, i8* %e, i1* %s) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !658
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !662
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !666
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %s), !map !670
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

!opencl.kernels = !{!0, !0, !7, !7, !10, !13, !13, !15, !17, !17, !17, !17, !17, !17, !17, !17, !20, !20, !22, !24, !24, !26, !28, !28, !34, !34, !34, !34, !34, !40, !40, !34, !34, !34, !34, !28, !28, !34, !34, !34, !43, !43, !34, !34, !34, !34, !34, !34, !34, !34, !43, !43, !34, !34, !34, !34, !34, !34, !34, !43, !43, !34, !34, !34, !34, !34, !34, !34, !34, !34, !0, !0, !34, !48, !48, !51, !53, !55, !57, !62, !64, !66, !67, !69, !70, !73, !73, !70, !76, !76, !78, !78, !78, !34, !81, !81, !34, !83, !83, !34, !34, !34, !83, !83, !34, !34, !34, !84, !87, !34, !34, !34, !43, !43, !0, !0, !34, !89, !91, !92, !94, !95, !95, !97, !94, !34, !34, !34, !43, !43, !0, !0, !34, !34, !34, !34, !98, !100, !34, !34, !34, !43, !43, !0, !0, !34, !95, !95, !97, !102, !104, !105, !107, !34, !34, !34, !43, !43, !0, !0, !34, !48, !48, !51, !0, !0, !108, !108, !110, !17, !17, !17, !17, !112, !112, !114, !28, !28, !0, !0, !34, !116, !118, !119, !34, !34, !34, !43, !43, !0, !0, !34, !34, !34, !121, !34, !34, !34, !43, !43, !0, !0, !34, !123, !123, !0, !0, !34, !34, !124, !127, !127, !34, !34, !34, !129, !129, !131, !134, !134, !135, !136, !138, !138, !34, !34, !34, !140, !140, !138, !138, !138, !34, !34, !142, !144}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!146, !153, !158, !163, !168, !173, !178, !183, !188, !193}
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
!121 = metadata !{null, metadata !1, metadata !2, metadata !122, metadata !4, metadata !86, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!123 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !46, metadata !5, metadata !6}
!124 = metadata !{null, metadata !58, metadata !30, metadata !125, metadata !60, metadata !126, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<16, false> &"}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!127 = metadata !{null, metadata !1, metadata !2, metadata !128, metadata !4, metadata !52, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &"}
!129 = metadata !{null, metadata !1, metadata !2, metadata !130, metadata !4, metadata !52, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!131 = metadata !{null, metadata !1, metadata !2, metadata !132, metadata !4, metadata !133, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!134 = metadata !{null, metadata !1, metadata !2, metadata !132, metadata !4, metadata !50, metadata !6}
!135 = metadata !{null, metadata !1, metadata !2, metadata !132, metadata !46, metadata !52, metadata !6}
!136 = metadata !{null, metadata !58, metadata !30, metadata !137, metadata !60, metadata !126, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &", metadata !"const ap_int_base<8, true> &"}
!138 = metadata !{null, metadata !1, metadata !2, metadata !139, metadata !4, metadata !52, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!140 = metadata !{null, metadata !1, metadata !2, metadata !141, metadata !4, metadata !52, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!142 = metadata !{null, metadata !1, metadata !2, metadata !143, metadata !4, metadata !86, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_int<8> &"}
!144 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !63, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile struct _ap_sc_::sc_dt::sc_int<8> &"}
!146 = metadata !{metadata !147, i1* @trames_separ_ssdm_thread_M_do_gen}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 0, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"trames_separ::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 0, i32 1}
!153 = metadata !{metadata !154, null}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 0, i32 31, metadata !156}
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !"llvm.global_ctors.0", metadata !151, metadata !"", i32 0, i32 31}
!158 = metadata !{metadata !159, i1* @Seuil_calc_ssdm_thread_M_do_gen}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 0, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"Seuil_calc::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!163 = metadata !{metadata !164, i1* @ModuleCompute_ssdm_thread_M_do_gen}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 0, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"ModuleCompute::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!168 = metadata !{metadata !169, i1* @FrameProcessing_ssdm_thread_M_do_gen}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 0, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"FrameProcessing::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!173 = metadata !{metadata !174, i1* @DownSampling_ssdm_thread_M_do_gen}
!174 = metadata !{metadata !175}
!175 = metadata !{i32 0, i32 0, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"DownSampling::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!178 = metadata !{metadata !179, i1* @DOUBLEUR_U_ssdm_thread_M_do_gen}
!179 = metadata !{metadata !180}
!180 = metadata !{i32 0, i32 0, metadata !181}
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !"DOUBLEUR_U::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!183 = metadata !{metadata !184, i1* @CRCCheck_ssdm_thread_M_do_gen}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 0, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"CRCCheck::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!188 = metadata !{metadata !189, i1* @BitsToBytes_ssdm_thread_M_do_gen}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 0, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"BitsToBytes::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!193 = metadata !{metadata !194, i1* @BitDecider_ssdm_thread_M_do_gen}
!194 = metadata !{metadata !195}
!195 = metadata !{i32 0, i32 0, metadata !196}
!196 = metadata !{metadata !197}
!197 = metadata !{metadata !"BitDecider::__ssdm_thread_M_do_gen", metadata !151, metadata !"bool", i32 0, i32 0}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 0, i32 0, metadata !200}
!200 = metadata !{metadata !201}
!201 = metadata !{metadata !"trames_separ.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 0, i32 0, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"trames_separ.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 0, i32 7, metadata !208}
!208 = metadata !{metadata !209}
!209 = metadata !{metadata !"trames_separ.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!210 = metadata !{metadata !211}
!211 = metadata !{i32 0, i32 0, metadata !212}
!212 = metadata !{metadata !213}
!213 = metadata !{metadata !"trames_separ.detect.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!214 = metadata !{metadata !215}
!215 = metadata !{i32 0, i32 7, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"trames_separ.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 0, i32 0, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"my_module.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 0, i32 0, metadata !224}
!224 = metadata !{metadata !225}
!225 = metadata !{metadata !"my_module.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!226 = metadata !{metadata !227}
!227 = metadata !{i32 0, i32 7, metadata !228}
!228 = metadata !{metadata !229}
!229 = metadata !{metadata !"my_module.e.m_if.Val.V", metadata !151, metadata !"int8", i32 0, i32 7}
!230 = metadata !{metadata !231}
!231 = metadata !{i32 0, i32 31, metadata !232}
!232 = metadata !{metadata !233}
!233 = metadata !{metadata !"my_module.addr.m_if.Val.V", metadata !151, metadata !"uint32", i32 0, i32 31}
!234 = metadata !{metadata !235}
!235 = metadata !{i32 0, i32 23, metadata !236}
!236 = metadata !{metadata !237}
!237 = metadata !{metadata !"my_module.rgbv.m_if.Val.V", metadata !151, metadata !"uint24", i32 0, i32 23}
!238 = metadata !{metadata !239}
!239 = metadata !{i32 0, i32 0, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"my_module.mod.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 0, i32 0, metadata !244}
!244 = metadata !{metadata !245}
!245 = metadata !{metadata !"my_module.mod.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!246 = metadata !{metadata !247}
!247 = metadata !{i32 0, i32 7, metadata !248}
!248 = metadata !{metadata !249}
!249 = metadata !{metadata !"my_module.mod.e.m_if.Val.V", metadata !151, metadata !"int8", i32 0, i32 7}
!250 = metadata !{metadata !251}
!251 = metadata !{i32 0, i32 7, metadata !252}
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !"my_module.mod.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!254 = metadata !{metadata !255}
!255 = metadata !{i32 0, i32 0, metadata !256}
!256 = metadata !{metadata !257}
!257 = metadata !{metadata !"my_module.det.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!258 = metadata !{metadata !259}
!259 = metadata !{i32 0, i32 0, metadata !260}
!260 = metadata !{metadata !261}
!261 = metadata !{metadata !"my_module.det.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!262 = metadata !{metadata !263}
!263 = metadata !{i32 0, i32 7, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"my_module.det.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!266 = metadata !{metadata !267}
!267 = metadata !{i32 0, i32 7, metadata !268}
!268 = metadata !{metadata !269}
!269 = metadata !{metadata !"my_module.det.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!270 = metadata !{metadata !271}
!271 = metadata !{i32 0, i32 0, metadata !272}
!272 = metadata !{metadata !273}
!273 = metadata !{metadata !"my_module.det.s_calc.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!274 = metadata !{metadata !275}
!275 = metadata !{i32 0, i32 0, metadata !276}
!276 = metadata !{metadata !277}
!277 = metadata !{metadata !"my_module.det.s_calc.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!278 = metadata !{metadata !279}
!279 = metadata !{i32 0, i32 7, metadata !280}
!280 = metadata !{metadata !281}
!281 = metadata !{metadata !"my_module.det.s_calc.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!282 = metadata !{metadata !283}
!283 = metadata !{i32 0, i32 0, metadata !284}
!284 = metadata !{metadata !285}
!285 = metadata !{metadata !"my_module.det.s_calc.detect.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!286 = metadata !{metadata !287}
!287 = metadata !{i32 0, i32 0, metadata !288}
!288 = metadata !{metadata !289}
!289 = metadata !{metadata !"my_module.det.t_sep.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!290 = metadata !{metadata !291}
!291 = metadata !{i32 0, i32 0, metadata !292}
!292 = metadata !{metadata !293}
!293 = metadata !{metadata !"my_module.det.t_sep.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!294 = metadata !{metadata !295}
!295 = metadata !{i32 0, i32 7, metadata !296}
!296 = metadata !{metadata !297}
!297 = metadata !{metadata !"my_module.det.t_sep.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!298 = metadata !{metadata !299}
!299 = metadata !{i32 0, i32 0, metadata !300}
!300 = metadata !{metadata !301}
!301 = metadata !{metadata !"my_module.det.t_sep.detect.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!302 = metadata !{metadata !303}
!303 = metadata !{i32 0, i32 7, metadata !304}
!304 = metadata !{metadata !305}
!305 = metadata !{metadata !"my_module.det.t_sep.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!306 = metadata !{metadata !307}
!307 = metadata !{i32 0, i32 0, metadata !308}
!308 = metadata !{metadata !309}
!309 = metadata !{metadata !"my_module.det.dbl.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!310 = metadata !{metadata !311}
!311 = metadata !{i32 0, i32 0, metadata !312}
!312 = metadata !{metadata !313}
!313 = metadata !{metadata !"my_module.det.dbl.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!314 = metadata !{metadata !315}
!315 = metadata !{i32 0, i32 7, metadata !316}
!316 = metadata !{metadata !317}
!317 = metadata !{metadata !"my_module.det.dbl.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!318 = metadata !{metadata !319}
!319 = metadata !{i32 0, i32 7, metadata !320}
!320 = metadata !{metadata !321}
!321 = metadata !{metadata !"my_module.det.dbl.s1.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!322 = metadata !{metadata !323}
!323 = metadata !{i32 0, i32 7, metadata !324}
!324 = metadata !{metadata !325}
!325 = metadata !{metadata !"my_module.det.dbl.s2.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!326 = metadata !{metadata !327}
!327 = metadata !{i32 0, i32 7, metadata !328}
!328 = metadata !{metadata !329}
!329 = metadata !{metadata !"my_module.det.dbl2scalc.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!330 = metadata !{metadata !331}
!331 = metadata !{i32 0, i32 7, metadata !332}
!332 = metadata !{metadata !333}
!333 = metadata !{metadata !"my_module.det.dbl2tsep.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!334 = metadata !{metadata !335}
!335 = metadata !{i32 0, i32 0, metadata !336}
!336 = metadata !{metadata !337}
!337 = metadata !{metadata !"my_module.det.detect.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!338 = metadata !{metadata !339}
!339 = metadata !{i32 0, i32 0, metadata !340}
!340 = metadata !{metadata !341}
!341 = metadata !{metadata !"my_module.dow.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!342 = metadata !{metadata !343}
!343 = metadata !{i32 0, i32 0, metadata !344}
!344 = metadata !{metadata !345}
!345 = metadata !{metadata !"my_module.dow.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!346 = metadata !{metadata !347}
!347 = metadata !{i32 0, i32 7, metadata !348}
!348 = metadata !{metadata !349}
!349 = metadata !{metadata !"my_module.dow.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!350 = metadata !{metadata !351}
!351 = metadata !{i32 0, i32 7, metadata !352}
!352 = metadata !{metadata !353}
!353 = metadata !{metadata !"my_module.dow.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!354 = metadata !{metadata !355}
!355 = metadata !{i32 0, i32 0, metadata !356}
!356 = metadata !{metadata !357}
!357 = metadata !{metadata !"my_module.bit.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!358 = metadata !{metadata !359}
!359 = metadata !{i32 0, i32 0, metadata !360}
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !"my_module.bit.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!362 = metadata !{metadata !363}
!363 = metadata !{i32 0, i32 7, metadata !364}
!364 = metadata !{metadata !365}
!365 = metadata !{metadata !"my_module.bit.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!366 = metadata !{metadata !367}
!367 = metadata !{i32 0, i32 0, metadata !368}
!368 = metadata !{metadata !369}
!369 = metadata !{metadata !"my_module.bit.s.m_if.Val.V", metadata !151, metadata !"uint1", i32 0, i32 0}
!370 = metadata !{metadata !371}
!371 = metadata !{i32 0, i32 0, metadata !372}
!372 = metadata !{metadata !373}
!373 = metadata !{metadata !"my_module.byt.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!374 = metadata !{metadata !375}
!375 = metadata !{i32 0, i32 0, metadata !376}
!376 = metadata !{metadata !377}
!377 = metadata !{metadata !"my_module.byt.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!378 = metadata !{metadata !379}
!379 = metadata !{i32 0, i32 0, metadata !380}
!380 = metadata !{metadata !381}
!381 = metadata !{metadata !"my_module.byt.e.m_if.Val.V", metadata !151, metadata !"uint1", i32 0, i32 0}
!382 = metadata !{metadata !383}
!383 = metadata !{i32 0, i32 7, metadata !384}
!384 = metadata !{metadata !385}
!385 = metadata !{metadata !"my_module.byt.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!386 = metadata !{metadata !387}
!387 = metadata !{i32 0, i32 0, metadata !388}
!388 = metadata !{metadata !389}
!389 = metadata !{metadata !"my_module.crc.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!390 = metadata !{metadata !391}
!391 = metadata !{i32 0, i32 0, metadata !392}
!392 = metadata !{metadata !393}
!393 = metadata !{metadata !"my_module.crc.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!394 = metadata !{metadata !395}
!395 = metadata !{i32 0, i32 7, metadata !396}
!396 = metadata !{metadata !397}
!397 = metadata !{metadata !"my_module.crc.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!398 = metadata !{metadata !399}
!399 = metadata !{i32 0, i32 7, metadata !400}
!400 = metadata !{metadata !401}
!401 = metadata !{metadata !"my_module.crc.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!402 = metadata !{metadata !403}
!403 = metadata !{i32 0, i32 0, metadata !404}
!404 = metadata !{metadata !405}
!405 = metadata !{metadata !"my_module.fra.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!406 = metadata !{metadata !407}
!407 = metadata !{i32 0, i32 0, metadata !408}
!408 = metadata !{metadata !409}
!409 = metadata !{metadata !"my_module.fra.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!410 = metadata !{metadata !411}
!411 = metadata !{i32 0, i32 7, metadata !412}
!412 = metadata !{metadata !413}
!413 = metadata !{metadata !"my_module.fra.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!414 = metadata !{metadata !415}
!415 = metadata !{i32 0, i32 31, metadata !416}
!416 = metadata !{metadata !417}
!417 = metadata !{metadata !"my_module.fra.addr.m_if.Val.V", metadata !151, metadata !"uint32", i32 0, i32 31}
!418 = metadata !{metadata !419}
!419 = metadata !{i32 0, i32 23, metadata !420}
!420 = metadata !{metadata !421}
!421 = metadata !{metadata !"my_module.fra.rgbv.m_if.Val.V", metadata !151, metadata !"uint24", i32 0, i32 23}
!422 = metadata !{metadata !423}
!423 = metadata !{i32 0, i32 7, metadata !424}
!424 = metadata !{metadata !425}
!425 = metadata !{metadata !"my_module.mod2dbl.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!426 = metadata !{metadata !427}
!427 = metadata !{i32 0, i32 7, metadata !428}
!428 = metadata !{metadata !429}
!429 = metadata !{metadata !"my_module.dbl2det1.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!430 = metadata !{metadata !431}
!431 = metadata !{i32 0, i32 7, metadata !432}
!432 = metadata !{metadata !433}
!433 = metadata !{metadata !"my_module.dbl2det2.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!434 = metadata !{metadata !435}
!435 = metadata !{i32 0, i32 7, metadata !436}
!436 = metadata !{metadata !437}
!437 = metadata !{metadata !"my_module.det2dow.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!438 = metadata !{metadata !439}
!439 = metadata !{i32 0, i32 7, metadata !440}
!440 = metadata !{metadata !441}
!441 = metadata !{metadata !"my_module.dow2bit.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!442 = metadata !{metadata !443}
!443 = metadata !{i32 0, i32 0, metadata !444}
!444 = metadata !{metadata !445}
!445 = metadata !{metadata !"my_module.bit2byt.Val.V", metadata !151, metadata !"uint1", i32 0, i32 0}
!446 = metadata !{metadata !447}
!447 = metadata !{i32 0, i32 7, metadata !448}
!448 = metadata !{metadata !449}
!449 = metadata !{metadata !"my_module.byt2crc.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!450 = metadata !{metadata !451}
!451 = metadata !{i32 0, i32 7, metadata !452}
!452 = metadata !{metadata !453}
!453 = metadata !{metadata !"my_module.crc2fra.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!454 = metadata !{metadata !455}
!455 = metadata !{i32 0, i32 0, metadata !456}
!456 = metadata !{metadata !457}
!457 = metadata !{metadata !"Seuil_calc.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!458 = metadata !{metadata !459}
!459 = metadata !{i32 0, i32 0, metadata !460}
!460 = metadata !{metadata !461}
!461 = metadata !{metadata !"Seuil_calc.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!462 = metadata !{metadata !463}
!463 = metadata !{i32 0, i32 7, metadata !464}
!464 = metadata !{metadata !465}
!465 = metadata !{metadata !"Seuil_calc.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!466 = metadata !{metadata !467}
!467 = metadata !{i32 0, i32 0, metadata !468}
!468 = metadata !{metadata !469}
!469 = metadata !{metadata !"Seuil_calc.detect.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!470 = metadata !{metadata !471}
!471 = metadata !{i32 0, i32 0, metadata !472}
!472 = metadata !{metadata !473}
!473 = metadata !{metadata !"ModuleCompute.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!474 = metadata !{metadata !475}
!475 = metadata !{i32 0, i32 0, metadata !476}
!476 = metadata !{metadata !477}
!477 = metadata !{metadata !"ModuleCompute.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!478 = metadata !{metadata !479}
!479 = metadata !{i32 0, i32 7, metadata !480}
!480 = metadata !{metadata !481}
!481 = metadata !{metadata !"ModuleCompute.e.m_if.Val.V", metadata !151, metadata !"int8", i32 0, i32 7}
!482 = metadata !{metadata !483}
!483 = metadata !{i32 0, i32 7, metadata !484}
!484 = metadata !{metadata !485}
!485 = metadata !{metadata !"ModuleCompute.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!486 = metadata !{metadata !487}
!487 = metadata !{i32 0, i32 0, metadata !488}
!488 = metadata !{metadata !489}
!489 = metadata !{metadata !"FrameProcessing.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!490 = metadata !{metadata !491}
!491 = metadata !{i32 0, i32 0, metadata !492}
!492 = metadata !{metadata !493}
!493 = metadata !{metadata !"FrameProcessing.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!494 = metadata !{metadata !495}
!495 = metadata !{i32 0, i32 7, metadata !496}
!496 = metadata !{metadata !497}
!497 = metadata !{metadata !"FrameProcessing.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!498 = metadata !{metadata !499}
!499 = metadata !{i32 0, i32 31, metadata !500}
!500 = metadata !{metadata !501}
!501 = metadata !{metadata !"FrameProcessing.addr.m_if.Val.V", metadata !151, metadata !"uint32", i32 0, i32 31}
!502 = metadata !{metadata !503}
!503 = metadata !{i32 0, i32 23, metadata !504}
!504 = metadata !{metadata !505}
!505 = metadata !{metadata !"FrameProcessing.rgbv.m_if.Val.V", metadata !151, metadata !"uint24", i32 0, i32 23}
!506 = metadata !{metadata !507}
!507 = metadata !{i32 0, i32 0, metadata !508}
!508 = metadata !{metadata !509}
!509 = metadata !{metadata !"DownSampling.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!510 = metadata !{metadata !511}
!511 = metadata !{i32 0, i32 0, metadata !512}
!512 = metadata !{metadata !513}
!513 = metadata !{metadata !"DownSampling.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!514 = metadata !{metadata !515}
!515 = metadata !{i32 0, i32 7, metadata !516}
!516 = metadata !{metadata !517}
!517 = metadata !{metadata !"DownSampling.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!518 = metadata !{metadata !519}
!519 = metadata !{i32 0, i32 7, metadata !520}
!520 = metadata !{metadata !521}
!521 = metadata !{metadata !"DownSampling.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!522 = metadata !{metadata !523}
!523 = metadata !{i32 0, i32 0, metadata !524}
!524 = metadata !{metadata !525}
!525 = metadata !{metadata !"Detecteur.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!526 = metadata !{metadata !527}
!527 = metadata !{i32 0, i32 0, metadata !528}
!528 = metadata !{metadata !529}
!529 = metadata !{metadata !"Detecteur.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!530 = metadata !{metadata !531}
!531 = metadata !{i32 0, i32 7, metadata !532}
!532 = metadata !{metadata !533}
!533 = metadata !{metadata !"Detecteur.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!534 = metadata !{metadata !535}
!535 = metadata !{i32 0, i32 7, metadata !536}
!536 = metadata !{metadata !537}
!537 = metadata !{metadata !"Detecteur.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!538 = metadata !{metadata !539}
!539 = metadata !{i32 0, i32 0, metadata !540}
!540 = metadata !{metadata !541}
!541 = metadata !{metadata !"Detecteur.s_calc.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!542 = metadata !{metadata !543}
!543 = metadata !{i32 0, i32 0, metadata !544}
!544 = metadata !{metadata !545}
!545 = metadata !{metadata !"Detecteur.s_calc.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!546 = metadata !{metadata !547}
!547 = metadata !{i32 0, i32 7, metadata !548}
!548 = metadata !{metadata !549}
!549 = metadata !{metadata !"Detecteur.s_calc.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!550 = metadata !{metadata !551}
!551 = metadata !{i32 0, i32 0, metadata !552}
!552 = metadata !{metadata !553}
!553 = metadata !{metadata !"Detecteur.s_calc.detect.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!554 = metadata !{metadata !555}
!555 = metadata !{i32 0, i32 0, metadata !556}
!556 = metadata !{metadata !557}
!557 = metadata !{metadata !"Detecteur.t_sep.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!558 = metadata !{metadata !559}
!559 = metadata !{i32 0, i32 0, metadata !560}
!560 = metadata !{metadata !561}
!561 = metadata !{metadata !"Detecteur.t_sep.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!562 = metadata !{metadata !563}
!563 = metadata !{i32 0, i32 7, metadata !564}
!564 = metadata !{metadata !565}
!565 = metadata !{metadata !"Detecteur.t_sep.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!566 = metadata !{metadata !567}
!567 = metadata !{i32 0, i32 0, metadata !568}
!568 = metadata !{metadata !569}
!569 = metadata !{metadata !"Detecteur.t_sep.detect.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!570 = metadata !{metadata !571}
!571 = metadata !{i32 0, i32 7, metadata !572}
!572 = metadata !{metadata !573}
!573 = metadata !{metadata !"Detecteur.t_sep.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!574 = metadata !{metadata !575}
!575 = metadata !{i32 0, i32 0, metadata !576}
!576 = metadata !{metadata !577}
!577 = metadata !{metadata !"Detecteur.dbl.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!578 = metadata !{metadata !579}
!579 = metadata !{i32 0, i32 0, metadata !580}
!580 = metadata !{metadata !581}
!581 = metadata !{metadata !"Detecteur.dbl.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!582 = metadata !{metadata !583}
!583 = metadata !{i32 0, i32 7, metadata !584}
!584 = metadata !{metadata !585}
!585 = metadata !{metadata !"Detecteur.dbl.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!586 = metadata !{metadata !587}
!587 = metadata !{i32 0, i32 7, metadata !588}
!588 = metadata !{metadata !589}
!589 = metadata !{metadata !"Detecteur.dbl.s1.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!590 = metadata !{metadata !591}
!591 = metadata !{i32 0, i32 7, metadata !592}
!592 = metadata !{metadata !593}
!593 = metadata !{metadata !"Detecteur.dbl.s2.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!594 = metadata !{metadata !595}
!595 = metadata !{i32 0, i32 7, metadata !596}
!596 = metadata !{metadata !597}
!597 = metadata !{metadata !"Detecteur.dbl2scalc.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!598 = metadata !{metadata !599}
!599 = metadata !{i32 0, i32 7, metadata !600}
!600 = metadata !{metadata !601}
!601 = metadata !{metadata !"Detecteur.dbl2tsep.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!602 = metadata !{metadata !603}
!603 = metadata !{i32 0, i32 0, metadata !604}
!604 = metadata !{metadata !605}
!605 = metadata !{metadata !"Detecteur.detect.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!606 = metadata !{metadata !607}
!607 = metadata !{i32 0, i32 0, metadata !608}
!608 = metadata !{metadata !609}
!609 = metadata !{metadata !"DOUBLEUR_U.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!610 = metadata !{metadata !611}
!611 = metadata !{i32 0, i32 0, metadata !612}
!612 = metadata !{metadata !613}
!613 = metadata !{metadata !"DOUBLEUR_U.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!614 = metadata !{metadata !615}
!615 = metadata !{i32 0, i32 7, metadata !616}
!616 = metadata !{metadata !617}
!617 = metadata !{metadata !"DOUBLEUR_U.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!618 = metadata !{metadata !619}
!619 = metadata !{i32 0, i32 7, metadata !620}
!620 = metadata !{metadata !621}
!621 = metadata !{metadata !"DOUBLEUR_U.s1.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!622 = metadata !{metadata !623}
!623 = metadata !{i32 0, i32 7, metadata !624}
!624 = metadata !{metadata !625}
!625 = metadata !{metadata !"DOUBLEUR_U.s2.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!626 = metadata !{metadata !627}
!627 = metadata !{i32 0, i32 0, metadata !628}
!628 = metadata !{metadata !629}
!629 = metadata !{metadata !"CRCCheck.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!630 = metadata !{metadata !631}
!631 = metadata !{i32 0, i32 0, metadata !632}
!632 = metadata !{metadata !633}
!633 = metadata !{metadata !"CRCCheck.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!634 = metadata !{metadata !635}
!635 = metadata !{i32 0, i32 7, metadata !636}
!636 = metadata !{metadata !637}
!637 = metadata !{metadata !"CRCCheck.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!638 = metadata !{metadata !639}
!639 = metadata !{i32 0, i32 7, metadata !640}
!640 = metadata !{metadata !641}
!641 = metadata !{metadata !"CRCCheck.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!642 = metadata !{metadata !643}
!643 = metadata !{i32 0, i32 0, metadata !644}
!644 = metadata !{metadata !645}
!645 = metadata !{metadata !"BitsToBytes.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!646 = metadata !{metadata !647}
!647 = metadata !{i32 0, i32 0, metadata !648}
!648 = metadata !{metadata !649}
!649 = metadata !{metadata !"BitsToBytes.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!650 = metadata !{metadata !651}
!651 = metadata !{i32 0, i32 0, metadata !652}
!652 = metadata !{metadata !653}
!653 = metadata !{metadata !"BitsToBytes.e.m_if.Val.V", metadata !151, metadata !"uint1", i32 0, i32 0}
!654 = metadata !{metadata !655}
!655 = metadata !{i32 0, i32 7, metadata !656}
!656 = metadata !{metadata !657}
!657 = metadata !{metadata !"BitsToBytes.s.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!658 = metadata !{metadata !659}
!659 = metadata !{i32 0, i32 0, metadata !660}
!660 = metadata !{metadata !661}
!661 = metadata !{metadata !"BitDecider.clock.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!662 = metadata !{metadata !663}
!663 = metadata !{i32 0, i32 0, metadata !664}
!664 = metadata !{metadata !665}
!665 = metadata !{metadata !"BitDecider.reset.m_if.Val", metadata !151, metadata !"bool", i32 0, i32 0}
!666 = metadata !{metadata !667}
!667 = metadata !{i32 0, i32 7, metadata !668}
!668 = metadata !{metadata !669}
!669 = metadata !{metadata !"BitDecider.e.m_if.Val.V", metadata !151, metadata !"uint8", i32 0, i32 7}
!670 = metadata !{metadata !671}
!671 = metadata !{i32 0, i32 0, metadata !672}
!672 = metadata !{metadata !673}
!673 = metadata !{metadata !"BitDecider.s.m_if.Val.V", metadata !151, metadata !"uint1", i32 0, i32 0}
