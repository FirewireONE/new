
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,5 :: 		sum_thumb=0, sum_index=0, sum_tall=0, sum_ring=0, sum_pinky=0,
	CLRF        main_sum_thumb_L0+0 
	CLRF        main_sum_thumb_L0+1 
	CLRF        main_sum_thumb_L0+2 
	CLRF        main_sum_thumb_L0+3 
	CLRF        main_sum_index_L0+0 
	CLRF        main_sum_index_L0+1 
	CLRF        main_sum_index_L0+2 
	CLRF        main_sum_index_L0+3 
	CLRF        main_sum_tall_L0+0 
	CLRF        main_sum_tall_L0+1 
	CLRF        main_sum_tall_L0+2 
	CLRF        main_sum_tall_L0+3 
	CLRF        main_sum_ring_L0+0 
	CLRF        main_sum_ring_L0+1 
	CLRF        main_sum_ring_L0+2 
	CLRF        main_sum_ring_L0+3 
	CLRF        main_sum_pinky_L0+0 
	CLRF        main_sum_pinky_L0+1 
	CLRF        main_sum_pinky_L0+2 
	CLRF        main_sum_pinky_L0+3 
	CLRF        main_tmb_L0+0 
	CLRF        main_tmb_L0+1 
	CLRF        main_tmb_L0+2 
	CLRF        main_tmb_L0+3 
	CLRF        main_ind_L0+0 
	CLRF        main_ind_L0+1 
	CLRF        main_ind_L0+2 
	CLRF        main_ind_L0+3 
	CLRF        main_mid_L0+0 
	CLRF        main_mid_L0+1 
	CLRF        main_mid_L0+2 
	CLRF        main_mid_L0+3 
	CLRF        main_rin_L0+0 
	CLRF        main_rin_L0+1 
	CLRF        main_rin_L0+2 
	CLRF        main_rin_L0+3 
	CLRF        main_pin_L0+0 
	CLRF        main_pin_L0+1 
	CLRF        main_pin_L0+2 
	CLRF        main_pin_L0+3 
;MyProject.c,14 :: 		ADCON1= 0x0A;
	MOVLW       10
	MOVWF       ADCON1+0 
;MyProject.c,15 :: 		TRISA= 0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;MyProject.c,16 :: 		TRISB= 0x08;
	MOVLW       8
	MOVWF       TRISB+0 
;MyProject.c,17 :: 		PORTB= 0x00;
	CLRF        PORTB+0 
;MyProject.c,18 :: 		TRISC= 0xFF;
	MOVLW       255
	MOVWF       TRISC+0 
;MyProject.c,19 :: 		PORTC= 0x00;
	CLRF        PORTC+0 
;MyProject.c,20 :: 		TRISD= 0xFF;
	MOVLW       255
	MOVWF       TRISD+0 
;MyProject.c,21 :: 		PORTD= 0x00;
	CLRF        PORTD+0 
;MyProject.c,22 :: 		UART1_Init(9600);
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       207
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;MyProject.c,23 :: 		REQ:
___main_REQ:
;MyProject.c,24 :: 		while(1)
L_main0:
;MyProject.c,26 :: 		div = 15;
	MOVLW       15
	MOVWF       main_div_L0+0 
	MOVLW       0
	MOVWF       main_div_L0+1 
;MyProject.c,27 :: 		cont1=RB0;
	CLRF        main_cont1_L0+0 
	CLRF        main_cont1_L0+1 
;MyProject.c,28 :: 		imp = 0;
	CLRF        main_imp_L0+0 
	CLRF        main_imp_L0+1 
;MyProject.c,29 :: 		imp = UART1_Read();
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_imp_L0+0 
	MOVLW       0
	MOVWF       main_imp_L0+1 
;MyProject.c,30 :: 		adc_result0=ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_adc_result0_L0+0 
	MOVF        R1, 0 
	MOVWF       main_adc_result0_L0+1 
;MyProject.c,31 :: 		adc_result1=ADC_Read(1);
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_adc_result1_L0+0 
	MOVF        R1, 0 
	MOVWF       main_adc_result1_L0+1 
;MyProject.c,32 :: 		adc_result2=ADC_Read(2);
	MOVLW       2
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_adc_result2_L0+0 
	MOVF        R1, 0 
	MOVWF       main_adc_result2_L0+1 
;MyProject.c,33 :: 		adc_result3=ADC_Read(3);
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_adc_result3_L0+0 
	MOVF        R1, 0 
	MOVWF       main_adc_result3_L0+1 
;MyProject.c,34 :: 		adc_result4=ADC_Read(4);
	MOVLW       4
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_adc_result4_L0+0 
	MOVF        R1, 0 
	MOVWF       main_adc_result4_L0+1 
;MyProject.c,36 :: 		sum_thumb=0;
	CLRF        main_sum_thumb_L0+0 
	CLRF        main_sum_thumb_L0+1 
	CLRF        main_sum_thumb_L0+2 
	CLRF        main_sum_thumb_L0+3 
;MyProject.c,37 :: 		sum_index=0;
	CLRF        main_sum_index_L0+0 
	CLRF        main_sum_index_L0+1 
	CLRF        main_sum_index_L0+2 
	CLRF        main_sum_index_L0+3 
;MyProject.c,38 :: 		sum_tall=0;
	CLRF        main_sum_tall_L0+0 
	CLRF        main_sum_tall_L0+1 
	CLRF        main_sum_tall_L0+2 
	CLRF        main_sum_tall_L0+3 
;MyProject.c,39 :: 		sum_ring=0;
	CLRF        main_sum_ring_L0+0 
	CLRF        main_sum_ring_L0+1 
	CLRF        main_sum_ring_L0+2 
	CLRF        main_sum_ring_L0+3 
;MyProject.c,40 :: 		sum_pinky=0;
	CLRF        main_sum_pinky_L0+0 
	CLRF        main_sum_pinky_L0+1 
	CLRF        main_sum_pinky_L0+2 
	CLRF        main_sum_pinky_L0+3 
;MyProject.c,42 :: 		tmb=0;
	CLRF        main_tmb_L0+0 
	CLRF        main_tmb_L0+1 
	CLRF        main_tmb_L0+2 
	CLRF        main_tmb_L0+3 
;MyProject.c,43 :: 		ind=0;
	CLRF        main_ind_L0+0 
	CLRF        main_ind_L0+1 
	CLRF        main_ind_L0+2 
	CLRF        main_ind_L0+3 
;MyProject.c,44 :: 		mid=0;
	CLRF        main_mid_L0+0 
	CLRF        main_mid_L0+1 
	CLRF        main_mid_L0+2 
	CLRF        main_mid_L0+3 
;MyProject.c,45 :: 		rin=0;
	CLRF        main_rin_L0+0 
	CLRF        main_rin_L0+1 
	CLRF        main_rin_L0+2 
	CLRF        main_rin_L0+3 
;MyProject.c,46 :: 		pin=0;
	CLRF        main_pin_L0+0 
	CLRF        main_pin_L0+1 
	CLRF        main_pin_L0+2 
	CLRF        main_pin_L0+3 
;MyProject.c,50 :: 		for(x=0;x<div;x++){
	CLRF        main_x_L0+0 
	CLRF        main_x_L0+1 
L_main2:
	MOVF        main_div_L0+1, 0 
	SUBWF       main_x_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main242
	MOVF        main_div_L0+0, 0 
	SUBWF       main_x_L0+0, 0 
L__main242:
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;MyProject.c,51 :: 		volts_thumb[x]=(adc_result0*5.00)/1024;
	MOVF        main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        main_x_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       main_volts_thumb_L0+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(main_volts_thumb_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        main_adc_result0_L0+0, 0 
	MOVWF       R0 
	MOVF        main_adc_result0_L0+1, 0 
	MOVWF       R1 
	CALL        _word2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       137
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVFF       FLOC__main+0, FSR1
	MOVFF       FLOC__main+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVF        R2, 0 
	MOVWF       POSTINC1+0 
	MOVF        R3, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,52 :: 		volts_index[x]=(adc_result1*5.00)/1024;
	MOVF        main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        main_x_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       main_volts_index_L0+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(main_volts_index_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        main_adc_result1_L0+0, 0 
	MOVWF       R0 
	MOVF        main_adc_result1_L0+1, 0 
	MOVWF       R1 
	CALL        _word2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       137
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVFF       FLOC__main+0, FSR1
	MOVFF       FLOC__main+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVF        R2, 0 
	MOVWF       POSTINC1+0 
	MOVF        R3, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,53 :: 		volts_tall[x]=(adc_result2*5.00)/1024;
	MOVF        main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        main_x_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       main_volts_tall_L0+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(main_volts_tall_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        main_adc_result2_L0+0, 0 
	MOVWF       R0 
	MOVF        main_adc_result2_L0+1, 0 
	MOVWF       R1 
	CALL        _word2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       137
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVFF       FLOC__main+0, FSR1
	MOVFF       FLOC__main+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVF        R2, 0 
	MOVWF       POSTINC1+0 
	MOVF        R3, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,54 :: 		volts_ring[x]=(adc_result3*5.00)/1024;
	MOVF        main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        main_x_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       main_volts_ring_L0+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(main_volts_ring_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        main_adc_result3_L0+0, 0 
	MOVWF       R0 
	MOVF        main_adc_result3_L0+1, 0 
	MOVWF       R1 
	CALL        _word2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       137
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVFF       FLOC__main+0, FSR1
	MOVFF       FLOC__main+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVF        R2, 0 
	MOVWF       POSTINC1+0 
	MOVF        R3, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,55 :: 		volts_pinky[x]=(adc_result4*5.00)/1024;
	MOVF        main_x_L0+0, 0 
	MOVWF       R0 
	MOVF        main_x_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       main_volts_pinky_L0+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+0 
	MOVLW       hi_addr(main_volts_pinky_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        main_adc_result4_L0+0, 0 
	MOVWF       R0 
	MOVF        main_adc_result4_L0+1, 0 
	MOVWF       R1 
	CALL        _word2double+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       137
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVFF       FLOC__main+0, FSR1
	MOVFF       FLOC__main+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVF        R2, 0 
	MOVWF       POSTINC1+0 
	MOVF        R3, 0 
	MOVWF       POSTINC1+0 
;MyProject.c,57 :: 		sum_thumb = sum_thumb + volts_thumb[x];
	MOVF        main_x_L0+0, 0 
	MOVWF       FLOC__main+0 
	MOVF        main_x_L0+1, 0 
	MOVWF       FLOC__main+1 
	RLCF        FLOC__main+0, 1 
	BCF         FLOC__main+0, 0 
	RLCF        FLOC__main+1, 1 
	RLCF        FLOC__main+0, 1 
	BCF         FLOC__main+0, 0 
	RLCF        FLOC__main+1, 1 
	MOVLW       main_volts_thumb_L0+0
	ADDWF       FLOC__main+0, 0 
	MOVWF       FSR2 
	MOVLW       hi_addr(main_volts_thumb_L0+0)
	ADDWFC      FLOC__main+1, 0 
	MOVWF       FSR2H 
	MOVF        main_sum_thumb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_thumb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_thumb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_thumb_L0+3, 0 
	MOVWF       R3 
	MOVF        POSTINC2+0, 0 
	MOVWF       R4 
	MOVF        POSTINC2+0, 0 
	MOVWF       R5 
	MOVF        POSTINC2+0, 0 
	MOVWF       R6 
	MOVF        POSTINC2+0, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_sum_thumb_L0+0 
	MOVF        R1, 0 
	MOVWF       main_sum_thumb_L0+1 
	MOVF        R2, 0 
	MOVWF       main_sum_thumb_L0+2 
	MOVF        R3, 0 
	MOVWF       main_sum_thumb_L0+3 
;MyProject.c,58 :: 		sum_index = sum_index + volts_index[x];
	MOVLW       main_volts_index_L0+0
	ADDWF       FLOC__main+0, 0 
	MOVWF       FSR2 
	MOVLW       hi_addr(main_volts_index_L0+0)
	ADDWFC      FLOC__main+1, 0 
	MOVWF       FSR2H 
	MOVF        main_sum_index_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_index_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_index_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_index_L0+3, 0 
	MOVWF       R3 
	MOVF        POSTINC2+0, 0 
	MOVWF       R4 
	MOVF        POSTINC2+0, 0 
	MOVWF       R5 
	MOVF        POSTINC2+0, 0 
	MOVWF       R6 
	MOVF        POSTINC2+0, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_sum_index_L0+0 
	MOVF        R1, 0 
	MOVWF       main_sum_index_L0+1 
	MOVF        R2, 0 
	MOVWF       main_sum_index_L0+2 
	MOVF        R3, 0 
	MOVWF       main_sum_index_L0+3 
;MyProject.c,59 :: 		sum_tall = sum_tall + volts_tall[x];
	MOVLW       main_volts_tall_L0+0
	ADDWF       FLOC__main+0, 0 
	MOVWF       FSR2 
	MOVLW       hi_addr(main_volts_tall_L0+0)
	ADDWFC      FLOC__main+1, 0 
	MOVWF       FSR2H 
	MOVF        main_sum_tall_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_tall_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_tall_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_tall_L0+3, 0 
	MOVWF       R3 
	MOVF        POSTINC2+0, 0 
	MOVWF       R4 
	MOVF        POSTINC2+0, 0 
	MOVWF       R5 
	MOVF        POSTINC2+0, 0 
	MOVWF       R6 
	MOVF        POSTINC2+0, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_sum_tall_L0+0 
	MOVF        R1, 0 
	MOVWF       main_sum_tall_L0+1 
	MOVF        R2, 0 
	MOVWF       main_sum_tall_L0+2 
	MOVF        R3, 0 
	MOVWF       main_sum_tall_L0+3 
;MyProject.c,60 :: 		sum_ring = sum_ring + volts_ring[x];
	MOVLW       main_volts_ring_L0+0
	ADDWF       FLOC__main+0, 0 
	MOVWF       FSR2 
	MOVLW       hi_addr(main_volts_ring_L0+0)
	ADDWFC      FLOC__main+1, 0 
	MOVWF       FSR2H 
	MOVF        main_sum_ring_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_ring_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_ring_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_ring_L0+3, 0 
	MOVWF       R3 
	MOVF        POSTINC2+0, 0 
	MOVWF       R4 
	MOVF        POSTINC2+0, 0 
	MOVWF       R5 
	MOVF        POSTINC2+0, 0 
	MOVWF       R6 
	MOVF        POSTINC2+0, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_sum_ring_L0+0 
	MOVF        R1, 0 
	MOVWF       main_sum_ring_L0+1 
	MOVF        R2, 0 
	MOVWF       main_sum_ring_L0+2 
	MOVF        R3, 0 
	MOVWF       main_sum_ring_L0+3 
;MyProject.c,61 :: 		sum_pinky = sum_pinky + volts_pinky[x];
	MOVLW       main_volts_pinky_L0+0
	ADDWF       FLOC__main+0, 0 
	MOVWF       FSR2 
	MOVLW       hi_addr(main_volts_pinky_L0+0)
	ADDWFC      FLOC__main+1, 0 
	MOVWF       FSR2H 
	MOVF        main_sum_pinky_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_pinky_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_pinky_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_pinky_L0+3, 0 
	MOVWF       R3 
	MOVF        POSTINC2+0, 0 
	MOVWF       R4 
	MOVF        POSTINC2+0, 0 
	MOVWF       R5 
	MOVF        POSTINC2+0, 0 
	MOVWF       R6 
	MOVF        POSTINC2+0, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_sum_pinky_L0+0 
	MOVF        R1, 0 
	MOVWF       main_sum_pinky_L0+1 
	MOVF        R2, 0 
	MOVWF       main_sum_pinky_L0+2 
	MOVF        R3, 0 
	MOVWF       main_sum_pinky_L0+3 
;MyProject.c,50 :: 		for(x=0;x<div;x++){
	INFSNZ      main_x_L0+0, 1 
	INCF        main_x_L0+1, 1 
;MyProject.c,63 :: 		}
	GOTO        L_main2
L_main3:
;MyProject.c,65 :: 		ind = sum_thumb/div;
	MOVF        main_div_L0+0, 0 
	MOVWF       R0 
	MOVF        main_div_L0+1, 0 
	MOVWF       R1 
	CALL        _word2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+4 
	MOVF        R1, 0 
	MOVWF       FLOC__main+5 
	MOVF        R2, 0 
	MOVWF       FLOC__main+6 
	MOVF        R3, 0 
	MOVWF       FLOC__main+7 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	MOVF        main_sum_thumb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_thumb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_thumb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_thumb_L0+3, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_ind_L0+0 
	MOVF        R1, 0 
	MOVWF       main_ind_L0+1 
	MOVF        R2, 0 
	MOVWF       main_ind_L0+2 
	MOVF        R3, 0 
	MOVWF       main_ind_L0+3 
;MyProject.c,66 :: 		tmb = sum_index/div;
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	MOVF        main_sum_index_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_index_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_index_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_index_L0+3, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        R2, 0 
	MOVWF       FLOC__main+2 
	MOVF        R3, 0 
	MOVWF       FLOC__main+3 
	MOVF        FLOC__main+0, 0 
	MOVWF       main_tmb_L0+0 
	MOVF        FLOC__main+1, 0 
	MOVWF       main_tmb_L0+1 
	MOVF        FLOC__main+2, 0 
	MOVWF       main_tmb_L0+2 
	MOVF        FLOC__main+3, 0 
	MOVWF       main_tmb_L0+3 
;MyProject.c,67 :: 		mid = sum_tall/div;
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	MOVF        main_sum_tall_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_tall_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_tall_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_tall_L0+3, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_mid_L0+0 
	MOVF        R1, 0 
	MOVWF       main_mid_L0+1 
	MOVF        R2, 0 
	MOVWF       main_mid_L0+2 
	MOVF        R3, 0 
	MOVWF       main_mid_L0+3 
;MyProject.c,68 :: 		rin = sum_ring/div;
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	MOVF        main_sum_ring_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_ring_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_ring_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_ring_L0+3, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_rin_L0+0 
	MOVF        R1, 0 
	MOVWF       main_rin_L0+1 
	MOVF        R2, 0 
	MOVWF       main_rin_L0+2 
	MOVF        R3, 0 
	MOVWF       main_rin_L0+3 
;MyProject.c,69 :: 		pin = sum_pinky/div;
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	MOVF        main_sum_pinky_L0+0, 0 
	MOVWF       R0 
	MOVF        main_sum_pinky_L0+1, 0 
	MOVWF       R1 
	MOVF        main_sum_pinky_L0+2, 0 
	MOVWF       R2 
	MOVF        main_sum_pinky_L0+3, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       main_pin_L0+0 
	MOVF        R1, 0 
	MOVWF       main_pin_L0+1 
	MOVF        R2, 0 
	MOVWF       main_pin_L0+2 
	MOVF        R3, 0 
	MOVWF       main_pin_L0+3 
;MyProject.c,72 :: 		FloatToStr(tmb,thumb);
	MOVF        FLOC__main+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        FLOC__main+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        FLOC__main+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        FLOC__main+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       main_thumb_L0+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(main_thumb_L0+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;MyProject.c,73 :: 		FloatToStr(ind,index);
	MOVF        main_ind_L0+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       main_index_L0+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(main_index_L0+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;MyProject.c,74 :: 		FloatToStr(mid,tall);
	MOVF        main_mid_L0+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       main_tall_L0+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(main_tall_L0+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;MyProject.c,75 :: 		FloatToStr(rin,ring);
	MOVF        main_rin_L0+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        main_rin_L0+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        main_rin_L0+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        main_rin_L0+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       main_ring_L0+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(main_ring_L0+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;MyProject.c,76 :: 		FloatToStr(pin,pinky);
	MOVF        main_pin_L0+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        main_pin_L0+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        main_pin_L0+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        main_pin_L0+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       main_pinky_L0+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(main_pinky_L0+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;MyProject.c,78 :: 		thumb[4]=0;
	CLRF        main_thumb_L0+4 
;MyProject.c,79 :: 		index[4]=0;
	CLRF        main_index_L0+4 
;MyProject.c,80 :: 		tall[4]=0;
	CLRF        main_tall_L0+4 
;MyProject.c,81 :: 		ring[4]=0;
	CLRF        main_ring_L0+4 
;MyProject.c,82 :: 		pinky[4]=0;
	CLRF        main_pinky_L0+4 
;MyProject.c,85 :: 		if(imp == 24){
	MOVLW       0
	XORWF       main_imp_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main243
	MOVLW       24
	XORWF       main_imp_L0+0, 0 
L__main243:
	BTFSS       STATUS+0, 2 
	GOTO        L_main5
;MyProject.c,89 :: 		UART1_Write_Text(thumb);
	MOVLW       main_thumb_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_thumb_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,90 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,91 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,94 :: 		UART1_Write_Text(index);
	MOVLW       main_index_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_index_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,95 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,96 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,99 :: 		UART1_Write_Text(tall);
	MOVLW       main_tall_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_tall_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,100 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,101 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,104 :: 		UART1_Write_Text(ring);
	MOVLW       main_ring_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_ring_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,105 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,106 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,109 :: 		UART1_Write_Text(pinky);
	MOVLW       main_pinky_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(main_pinky_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,110 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,111 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,112 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,113 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;MyProject.c,115 :: 		if (tmb>=1.80 && tmb<=1.90){
	MOVLW       102
	MOVWF       R4 
	MOVLW       102
	MOVWF       R5 
	MOVLW       102
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main8
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       51
	MOVWF       R0 
	MOVLW       51
	MOVWF       R1 
	MOVLW       115
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main8
L__main240:
;MyProject.c,116 :: 		goto IND0;
	GOTO        ___main_IND0
;MyProject.c,117 :: 		}
L_main8:
;MyProject.c,118 :: 		else if (tmb>=1.91 && tmb<=1.99){
	MOVLW       225
	MOVWF       R4 
	MOVLW       122
	MOVWF       R5 
	MOVLW       116
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main12
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       82
	MOVWF       R0 
	MOVLW       184
	MOVWF       R1 
	MOVLW       126
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main12
L__main239:
;MyProject.c,119 :: 		goto IND1;
	GOTO        ___main_IND1
;MyProject.c,120 :: 		}
L_main12:
;MyProject.c,121 :: 		else if (tmb>=2.00 && tmb<=2.09){
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       143
	MOVWF       R0 
	MOVLW       194
	MOVWF       R1 
	MOVLW       5
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
L__main238:
;MyProject.c,122 :: 		goto IND2;
	GOTO        ___main_IND2
;MyProject.c,123 :: 		}
L_main16:
;MyProject.c,124 :: 		else if (tmb>=2.10 && tmb<=2.19){
	MOVLW       102
	MOVWF       R4 
	MOVLW       102
	MOVWF       R5 
	MOVLW       6
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main20
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       246
	MOVWF       R0 
	MOVLW       40
	MOVWF       R1 
	MOVLW       12
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main20
L__main237:
;MyProject.c,125 :: 		goto IND3;
	GOTO        ___main_IND3
;MyProject.c,126 :: 		}
L_main20:
;MyProject.c,127 :: 		else if (tmb>=2.20 && tmb<=2.29){
	MOVLW       205
	MOVWF       R4 
	MOVLW       204
	MOVWF       R5 
	MOVLW       12
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main24
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       92
	MOVWF       R0 
	MOVLW       143
	MOVWF       R1 
	MOVLW       18
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main24
L__main236:
;MyProject.c,128 :: 		goto IND4;
	GOTO        ___main_IND4
;MyProject.c,129 :: 		}
L_main24:
;MyProject.c,130 :: 		else if (tmb>=2.30 && tmb<=2.39){
	MOVLW       51
	MOVWF       R4 
	MOVLW       51
	MOVWF       R5 
	MOVLW       19
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main28
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       195
	MOVWF       R0 
	MOVLW       245
	MOVWF       R1 
	MOVLW       24
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main28
L__main235:
;MyProject.c,131 :: 		goto IND5;
	GOTO        ___main_IND5
;MyProject.c,132 :: 		}
L_main28:
;MyProject.c,133 :: 		else if (tmb>=2.40 && tmb<=2.45){
	MOVLW       154
	MOVWF       R4 
	MOVLW       153
	MOVWF       R5 
	MOVLW       25
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main32
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       205
	MOVWF       R0 
	MOVLW       204
	MOVWF       R1 
	MOVLW       28
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main32
L__main234:
;MyProject.c,134 :: 		UART1_Write_Text("X");
	MOVLW       ?lstr1_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr1_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,135 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,136 :: 		}
L_main32:
;MyProject.c,137 :: 		else if (tmb>=2.47 && tmb<=2.52){
	MOVLW       123
	MOVWF       R4 
	MOVLW       20
	MOVWF       R5 
	MOVLW       30
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main36
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       174
	MOVWF       R0 
	MOVLW       71
	MOVWF       R1 
	MOVLW       33
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main36
L__main233:
;MyProject.c,138 :: 		UART1_Write_Text("S");
	MOVLW       ?lstr2_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr2_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,139 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,140 :: 		}
L_main36:
;MyProject.c,141 :: 		else if (tmb>=2.58 && tmb<=2.61){
	MOVLW       184
	MOVWF       R4 
	MOVLW       30
	MOVWF       R5 
	MOVLW       37
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main40
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       61
	MOVWF       R0 
	MOVLW       10
	MOVWF       R1 
	MOVLW       39
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main40
L__main232:
;MyProject.c,142 :: 		UART1_Write_Text("M");
	MOVLW       ?lstr3_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr3_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,143 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,144 :: 		}
L_main40:
;MyProject.c,145 :: 		else if (tmb>=2.64 && tmb<=2.68){
	MOVLW       195
	MOVWF       R4 
	MOVLW       245
	MOVWF       R5 
	MOVLW       40
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main44
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       31
	MOVWF       R0 
	MOVLW       133
	MOVWF       R1 
	MOVLW       43
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main44
L__main231:
;MyProject.c,146 :: 		UART1_Write_Text("E");
	MOVLW       ?lstr4_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr4_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,147 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,148 :: 		}
L_main44:
;MyProject.c,149 :: 		else if (tmb>=2.76 && tmb<=2.81){
	MOVLW       215
	MOVWF       R4 
	MOVLW       163
	MOVWF       R5 
	MOVLW       48
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R0 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R1 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R2 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main48
	MOVF        main_tmb_L0+0, 0 
	MOVWF       R4 
	MOVF        main_tmb_L0+1, 0 
	MOVWF       R5 
	MOVF        main_tmb_L0+2, 0 
	MOVWF       R6 
	MOVF        main_tmb_L0+3, 0 
	MOVWF       R7 
	MOVLW       10
	MOVWF       R0 
	MOVLW       215
	MOVWF       R1 
	MOVLW       51
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main48
L__main230:
;MyProject.c,150 :: 		UART1_Write_Text("Z");
	MOVLW       ?lstr5_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr5_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,151 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,152 :: 		}
L_main48:
;MyProject.c,154 :: 		UART1_Write_Text("null TMB");
	MOVLW       ?lstr6_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr6_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,155 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,158 :: 		IND0:    //LY
___main_IND0:
;MyProject.c,159 :: 		if(ind>=2.18 && ind<=2.23){
	MOVLW       31
	MOVWF       R4 
	MOVLW       133
	MOVWF       R5 
	MOVLW       11
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main52
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       82
	MOVWF       R0 
	MOVLW       184
	MOVWF       R1 
	MOVLW       14
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main52
L__main229:
;MyProject.c,160 :: 		UART1_Write_Text("L");
	MOVLW       ?lstr7_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr7_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,161 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,162 :: 		}
L_main52:
;MyProject.c,163 :: 		else if(ind>=2.85 && ind<=2.90){
	MOVLW       102
	MOVWF       R4 
	MOVLW       102
	MOVWF       R5 
	MOVLW       54
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main56
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       154
	MOVWF       R0 
	MOVLW       153
	MOVWF       R1 
	MOVLW       57
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main56
L__main228:
;MyProject.c,164 :: 		UART1_Write_Text("Y");
	MOVLW       ?lstr8_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr8_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,165 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,166 :: 		}
L_main56:
;MyProject.c,168 :: 		UART1_Write_Text("null IND0");
	MOVLW       ?lstr9_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr9_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,169 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,172 :: 		IND1: //  DKQTF
___main_IND1:
;MyProject.c,173 :: 		if(ind>=1.90 && ind<=1.94){
	MOVLW       51
	MOVWF       R4 
	MOVLW       51
	MOVWF       R5 
	MOVLW       115
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main60
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       236
	MOVWF       R0 
	MOVLW       81
	MOVWF       R1 
	MOVLW       120
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main60
L__main227:
;MyProject.c,174 :: 		UART1_Write_Text("F");
	MOVLW       ?lstr10_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr10_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,175 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,176 :: 		}
L_main60:
;MyProject.c,177 :: 		else if(ind>=2.32 && ind<=2.35){
	MOVLW       225
	MOVWF       R4 
	MOVLW       122
	MOVWF       R5 
	MOVLW       20
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main64
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       102
	MOVWF       R0 
	MOVLW       102
	MOVWF       R1 
	MOVLW       22
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main64
L__main226:
;MyProject.c,178 :: 		UART1_Write_Text("D");
	MOVLW       ?lstr11_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr11_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,179 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,180 :: 		}
L_main64:
;MyProject.c,181 :: 		else if(ind>=2.64 && ind<=2.67){
	MOVLW       195
	MOVWF       R4 
	MOVLW       245
	MOVWF       R5 
	MOVLW       40
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main68
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       72
	MOVWF       R0 
	MOVLW       225
	MOVWF       R1 
	MOVLW       42
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main68
L__main225:
;MyProject.c,182 :: 		UART1_Write_Text("T");
	MOVLW       ?lstr12_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr12_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,183 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,184 :: 		}
L_main68:
;MyProject.c,185 :: 		else if(ind>=2.22 && ind<=2.28){
	MOVLW       123
	MOVWF       R4 
	MOVLW       20
	MOVWF       R5 
	MOVLW       14
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main72
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       133
	MOVWF       R0 
	MOVLW       235
	MOVWF       R1 
	MOVLW       17
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main72
L__main224:
;MyProject.c,186 :: 		goto MID0;
	GOTO        ___main_MID0
;MyProject.c,187 :: 		}
L_main72:
;MyProject.c,189 :: 		UART1_Write_Text("null IND1");
	MOVLW       ?lstr13_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr13_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,190 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,193 :: 		IND2:  // QTFVUWH
___main_IND2:
;MyProject.c,194 :: 		if(ind>=1.90 && ind<=1.94){
	MOVLW       51
	MOVWF       R4 
	MOVLW       51
	MOVWF       R5 
	MOVLW       115
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main76
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       236
	MOVWF       R0 
	MOVLW       81
	MOVWF       R1 
	MOVLW       120
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main76
L__main223:
;MyProject.c,195 :: 		UART1_Write_Text("F");
	MOVLW       ?lstr14_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr14_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,196 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,197 :: 		}
L_main76:
;MyProject.c,198 :: 		else if(ind>=2.64 && ind<=2.67){
	MOVLW       195
	MOVWF       R4 
	MOVLW       245
	MOVWF       R5 
	MOVLW       40
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main80
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       72
	MOVWF       R0 
	MOVLW       225
	MOVWF       R1 
	MOVLW       42
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main80
L__main222:
;MyProject.c,199 :: 		UART1_Write_Text("T");
	MOVLW       ?lstr15_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr15_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,200 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,201 :: 		}
L_main80:
;MyProject.c,202 :: 		else if(ind>=2.11 && ind<=2.18){
	MOVLW       61
	MOVWF       R4 
	MOVLW       10
	MOVWF       R5 
	MOVLW       7
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main84
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       31
	MOVWF       R0 
	MOVLW       133
	MOVWF       R1 
	MOVLW       11
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main84
L__main221:
;MyProject.c,203 :: 		goto MID1;
	GOTO        ___main_MID1
;MyProject.c,204 :: 		}
L_main84:
;MyProject.c,205 :: 		else if(ind>=2.22 && ind<=2.26){
	MOVLW       123
	MOVWF       R4 
	MOVLW       20
	MOVWF       R5 
	MOVLW       14
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main88
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       215
	MOVWF       R0 
	MOVLW       163
	MOVWF       R1 
	MOVLW       16
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main88
L__main220:
;MyProject.c,206 :: 		goto MID2;
	GOTO        ___main_MID2
;MyProject.c,207 :: 		}
L_main88:
;MyProject.c,209 :: 		UART1_Write_Text("null IND2");
	MOVLW       ?lstr16_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr16_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,210 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,213 :: 		IND3: //HPGRIB
___main_IND3:
;MyProject.c,214 :: 		if(ind>=2.93 && ind<=2.96){
	MOVLW       31
	MOVWF       R4 
	MOVLW       133
	MOVWF       R5 
	MOVLW       59
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main92
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       164
	MOVWF       R0 
	MOVLW       112
	MOVWF       R1 
	MOVLW       61
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main92
L__main219:
;MyProject.c,215 :: 		goto CON0;
	GOTO        ___main_CON0
;MyProject.c,216 :: 		}
L_main92:
;MyProject.c,217 :: 		else if(ind>=2.19 && ind<=2.26){
	MOVLW       246
	MOVWF       R4 
	MOVLW       40
	MOVWF       R5 
	MOVLW       12
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main96
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       215
	MOVWF       R0 
	MOVLW       163
	MOVWF       R1 
	MOVLW       16
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main96
L__main218:
;MyProject.c,218 :: 		goto MID3;
	GOTO        ___main_MID3
;MyProject.c,219 :: 		}
L_main96:
;MyProject.c,221 :: 		UART1_Write_Text("null IND3");
	MOVLW       ?lstr17_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr17_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,222 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,225 :: 		IND4: //BAONC
___main_IND4:
;MyProject.c,226 :: 		if(ind>=2.19 && ind<=2.22){
	MOVLW       246
	MOVWF       R4 
	MOVLW       40
	MOVWF       R5 
	MOVLW       12
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main100
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       123
	MOVWF       R0 
	MOVLW       20
	MOVWF       R1 
	MOVLW       14
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main100
L__main217:
;MyProject.c,227 :: 		UART1_Write_Text("B");
	MOVLW       ?lstr18_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr18_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,228 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,229 :: 		}
L_main100:
;MyProject.c,230 :: 		else if(ind>=2.71 && ind<=2.74){
	MOVLW       164
	MOVWF       R4 
	MOVLW       112
	MOVWF       R5 
	MOVLW       45
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main104
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       41
	MOVWF       R0 
	MOVLW       92
	MOVWF       R1 
	MOVLW       47
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main104
L__main216:
;MyProject.c,231 :: 		UART1_Write_Text("C");
	MOVLW       ?lstr19_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr19_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,232 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,233 :: 		}
L_main104:
;MyProject.c,234 :: 		else if(ind>=2.76 && ind<=2.81){
	MOVLW       215
	MOVWF       R4 
	MOVLW       163
	MOVWF       R5 
	MOVLW       48
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main108
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       10
	MOVWF       R0 
	MOVLW       215
	MOVWF       R1 
	MOVLW       51
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main108
L__main215:
;MyProject.c,235 :: 		UART1_Write_Text("O");
	MOVLW       ?lstr20_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr20_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,236 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,237 :: 		}
L_main108:
;MyProject.c,238 :: 		else if(ind>=2.95 && ind<=2.99){
	MOVLW       205
	MOVWF       R4 
	MOVLW       204
	MOVWF       R5 
	MOVLW       60
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main112
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       41
	MOVWF       R0 
	MOVLW       92
	MOVWF       R1 
	MOVLW       63
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main112
L__main214:
;MyProject.c,239 :: 		UART1_Write_Text("N");
	MOVLW       ?lstr21_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr21_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,240 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,241 :: 		}
L_main112:
;MyProject.c,242 :: 		else if(ind>=3.12 && ind<=3.15){
	MOVLW       20
	MOVWF       R4 
	MOVLW       174
	MOVWF       R5 
	MOVLW       71
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main116
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       154
	MOVWF       R0 
	MOVLW       153
	MOVWF       R1 
	MOVLW       73
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main116
L__main213:
;MyProject.c,243 :: 		UART1_Write_Text("A");
	MOVLW       ?lstr22_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr22_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,244 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,245 :: 		}
L_main116:
;MyProject.c,247 :: 		UART1_Write_Text("null IND4");
	MOVLW       ?lstr23_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr23_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,248 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,251 :: 		IND5://AONCX
___main_IND5:
;MyProject.c,252 :: 		if(ind>=2.76 && ind<=2.81){
	MOVLW       215
	MOVWF       R4 
	MOVLW       163
	MOVWF       R5 
	MOVLW       48
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main120
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       10
	MOVWF       R0 
	MOVLW       215
	MOVWF       R1 
	MOVLW       51
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main120
L__main212:
;MyProject.c,253 :: 		UART1_Write_Text("O");
	MOVLW       ?lstr24_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr24_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,254 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,255 :: 		}
L_main120:
;MyProject.c,256 :: 		else if(ind>=2.95 && ind<=2.99){
	MOVLW       205
	MOVWF       R4 
	MOVLW       204
	MOVWF       R5 
	MOVLW       60
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main124
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       41
	MOVWF       R0 
	MOVLW       92
	MOVWF       R1 
	MOVLW       63
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main124
L__main211:
;MyProject.c,257 :: 		UART1_Write_Text("N");
	MOVLW       ?lstr25_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr25_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,258 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,259 :: 		}
L_main124:
;MyProject.c,260 :: 		if(ind>=3.12 && ind<=3.15){
	MOVLW       20
	MOVWF       R4 
	MOVLW       174
	MOVWF       R5 
	MOVLW       71
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main127
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       154
	MOVWF       R0 
	MOVLW       153
	MOVWF       R1 
	MOVLW       73
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main127
L__main210:
;MyProject.c,261 :: 		UART1_Write_Text("A");
	MOVLW       ?lstr26_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr26_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,262 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,263 :: 		}
L_main127:
;MyProject.c,264 :: 		if(ind>=2.70 && ind<=2.75){
	MOVLW       205
	MOVWF       R4 
	MOVLW       204
	MOVWF       R5 
	MOVLW       44
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_ind_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R1 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R2 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main130
	MOVF        main_ind_L0+0, 0 
	MOVWF       R4 
	MOVF        main_ind_L0+1, 0 
	MOVWF       R5 
	MOVF        main_ind_L0+2, 0 
	MOVWF       R6 
	MOVF        main_ind_L0+3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       48
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main130
L__main209:
;MyProject.c,265 :: 		goto MID4;
	GOTO        ___main_MID4
;MyProject.c,266 :: 		}
L_main130:
;MyProject.c,268 :: 		UART1_Write_Text("null IND5");
	MOVLW       ?lstr27_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr27_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,269 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,272 :: 		MID0: //KQ
___main_MID0:
;MyProject.c,273 :: 		if(mid>=2.14 && mid<=2.18){
	MOVLW       195
	MOVWF       R4 
	MOVLW       245
	MOVWF       R5 
	MOVLW       8
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main134
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       31
	MOVWF       R0 
	MOVLW       133
	MOVWF       R1 
	MOVLW       11
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main134
L__main208:
;MyProject.c,274 :: 		UART1_Write_Text("K");
	MOVLW       ?lstr28_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr28_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,275 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,276 :: 		}
L_main134:
;MyProject.c,277 :: 		else if(mid>=2.70 && mid<=2.80){
	MOVLW       205
	MOVWF       R4 
	MOVLW       204
	MOVWF       R5 
	MOVLW       44
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main138
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       51
	MOVWF       R0 
	MOVLW       51
	MOVWF       R1 
	MOVLW       51
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main138
L__main207:
;MyProject.c,278 :: 		UART1_Write_Text("Q");
	MOVLW       ?lstr29_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr29_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,279 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,280 :: 		}
L_main138:
;MyProject.c,282 :: 		UART1_Write_Text("null MID0");
	MOVLW       ?lstr30_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr30_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,283 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,286 :: 		MID1: // UWV
___main_MID1:
;MyProject.c,287 :: 		if(mid>=2.09 && mid<=2.13){
	MOVLW       143
	MOVWF       R4 
	MOVLW       194
	MOVWF       R5 
	MOVLW       5
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main142
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       236
	MOVWF       R0 
	MOVLW       81
	MOVWF       R1 
	MOVLW       8
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main142
L__main206:
;MyProject.c,288 :: 		UART1_Write_Text("U");
	MOVLW       ?lstr31_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr31_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,289 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,290 :: 		}
L_main142:
;MyProject.c,291 :: 		else if(mid>=1.95 && mid<=2.00){
	MOVLW       154
	MOVWF       R4 
	MOVLW       153
	MOVWF       R5 
	MOVLW       121
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main146
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main146
L__main205:
;MyProject.c,292 :: 		goto RIN0;
	GOTO        ___main_RIN0
;MyProject.c,293 :: 		}
L_main146:
;MyProject.c,295 :: 		UART1_Write_Text("null MID1");
	MOVLW       ?lstr32_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr32_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,296 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,299 :: 		MID2://HQ
___main_MID2:
;MyProject.c,300 :: 		if(mid>=2.07 && mid<=2.11){
	MOVLW       225
	MOVWF       R4 
	MOVLW       122
	MOVWF       R5 
	MOVLW       4
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main150
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       61
	MOVWF       R0 
	MOVLW       10
	MOVWF       R1 
	MOVLW       7
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main150
L__main204:
;MyProject.c,301 :: 		UART1_Write_Text("H");
	MOVLW       ?lstr33_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr33_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,302 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,303 :: 		}
L_main150:
;MyProject.c,304 :: 		if(mid>=2.77 && mid<=2.80){
	MOVLW       174
	MOVWF       R4 
	MOVLW       71
	MOVWF       R5 
	MOVLW       49
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main153
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       51
	MOVWF       R0 
	MOVLW       51
	MOVWF       R1 
	MOVLW       51
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main153
L__main203:
;MyProject.c,305 :: 		UART1_Write_Text("Q");
	MOVLW       ?lstr34_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr34_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,306 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,307 :: 		}
L_main153:
;MyProject.c,309 :: 		UART1_Write_Text("null MID2");
	MOVLW       ?lstr35_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr35_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,310 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,313 :: 		MID3: //HPGRB
___main_MID3:
;MyProject.c,314 :: 		if(mid>=1.91 && mid<=1.96){
	MOVLW       225
	MOVWF       R4 
	MOVLW       122
	MOVWF       R5 
	MOVLW       116
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main157
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       72
	MOVWF       R0 
	MOVLW       225
	MOVWF       R1 
	MOVLW       122
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main157
L__main202:
;MyProject.c,315 :: 		UART1_Write_Text("B");
	MOVLW       ?lstr36_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr36_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,316 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,317 :: 		}
L_main157:
;MyProject.c,318 :: 		else if(mid>=2.07 && mid<=2.11){
	MOVLW       225
	MOVWF       R4 
	MOVLW       122
	MOVWF       R5 
	MOVLW       4
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main161
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       61
	MOVWF       R0 
	MOVLW       10
	MOVWF       R1 
	MOVLW       7
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main161
L__main201:
;MyProject.c,319 :: 		UART1_Write_Text("H");
	MOVLW       ?lstr37_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr37_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,320 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,321 :: 		}
L_main161:
;MyProject.c,322 :: 		else if(mid>=2.46 && mid<=2.53){
	MOVLW       164
	MOVWF       R4 
	MOVLW       112
	MOVWF       R5 
	MOVLW       29
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main165
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       133
	MOVWF       R0 
	MOVLW       235
	MOVWF       R1 
	MOVLW       33
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main165
L__main200:
;MyProject.c,323 :: 		UART1_Write_Text("R");
	MOVLW       ?lstr38_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr38_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,324 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,325 :: 		}
L_main165:
;MyProject.c,326 :: 		else if(mid>=2.55 && mid<=2.59){
	MOVLW       51
	MOVWF       R4 
	MOVLW       51
	MOVWF       R5 
	MOVLW       35
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main169
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       143
	MOVWF       R0 
	MOVLW       194
	MOVWF       R1 
	MOVLW       37
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main169
L__main199:
;MyProject.c,327 :: 		UART1_Write_Text("P");
	MOVLW       ?lstr39_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr39_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,328 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,329 :: 		}
L_main169:
;MyProject.c,330 :: 		else if(mid>=2.93 && mid<=2.96){
	MOVLW       31
	MOVWF       R4 
	MOVLW       133
	MOVWF       R5 
	MOVLW       59
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main173
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       164
	MOVWF       R0 
	MOVLW       112
	MOVWF       R1 
	MOVLW       61
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main173
L__main198:
;MyProject.c,331 :: 		UART1_Write_Text("G");
	MOVLW       ?lstr40_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr40_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,332 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,333 :: 		}
L_main173:
;MyProject.c,335 :: 		UART1_Write_Text("null MID3");
	MOVLW       ?lstr41_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr41_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,336 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,339 :: 		MID4: //CX
___main_MID4:
;MyProject.c,340 :: 		if(mid>=2.65 && mid<=2.69){
	MOVLW       154
	MOVWF       R4 
	MOVLW       153
	MOVWF       R5 
	MOVLW       41
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main177
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       246
	MOVWF       R0 
	MOVLW       40
	MOVWF       R1 
	MOVLW       44
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main177
L__main197:
;MyProject.c,341 :: 		UART1_Write_Text("C");
	MOVLW       ?lstr42_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr42_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,342 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,343 :: 		}
L_main177:
;MyProject.c,344 :: 		else if(mid>=2.92 && mid<=2.97){
	MOVLW       72
	MOVWF       R4 
	MOVLW       225
	MOVWF       R5 
	MOVLW       58
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_mid_L0+0, 0 
	MOVWF       R0 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R1 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R2 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main181
	MOVF        main_mid_L0+0, 0 
	MOVWF       R4 
	MOVF        main_mid_L0+1, 0 
	MOVWF       R5 
	MOVF        main_mid_L0+2, 0 
	MOVWF       R6 
	MOVF        main_mid_L0+3, 0 
	MOVWF       R7 
	MOVLW       123
	MOVWF       R0 
	MOVLW       20
	MOVWF       R1 
	MOVLW       62
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main181
L__main196:
;MyProject.c,345 :: 		UART1_Write_Text("X");
	MOVLW       ?lstr43_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr43_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,346 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,347 :: 		}
L_main181:
;MyProject.c,349 :: 		UART1_Write_Text("null MID4");
	MOVLW       ?lstr44_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr44_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,350 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,354 :: 		RIN0: //VW
___main_RIN0:
;MyProject.c,355 :: 		if(rin>=1.94 && rin<=1.97){
	MOVLW       236
	MOVWF       R4 
	MOVLW       81
	MOVWF       R5 
	MOVLW       120
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        main_rin_L0+0, 0 
	MOVWF       R0 
	MOVF        main_rin_L0+1, 0 
	MOVWF       R1 
	MOVF        main_rin_L0+2, 0 
	MOVWF       R2 
	MOVF        main_rin_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main185
	MOVF        main_rin_L0+0, 0 
	MOVWF       R4 
	MOVF        main_rin_L0+1, 0 
	MOVWF       R5 
	MOVF        main_rin_L0+2, 0 
	MOVWF       R6 
	MOVF        main_rin_L0+3, 0 
	MOVWF       R7 
	MOVLW       246
	MOVWF       R0 
	MOVLW       40
	MOVWF       R1 
	MOVLW       124
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main185
L__main195:
;MyProject.c,356 :: 		UART1_Write_Text("W");
	MOVLW       ?lstr45_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr45_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,357 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,358 :: 		}
L_main185:
;MyProject.c,359 :: 		else if(rin>=2.65 && rin<=2.68){
	MOVLW       154
	MOVWF       R4 
	MOVLW       153
	MOVWF       R5 
	MOVLW       41
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	MOVF        main_rin_L0+0, 0 
	MOVWF       R0 
	MOVF        main_rin_L0+1, 0 
	MOVWF       R1 
	MOVF        main_rin_L0+2, 0 
	MOVWF       R2 
	MOVF        main_rin_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main189
	MOVF        main_rin_L0+0, 0 
	MOVWF       R4 
	MOVF        main_rin_L0+1, 0 
	MOVWF       R5 
	MOVF        main_rin_L0+2, 0 
	MOVWF       R6 
	MOVF        main_rin_L0+3, 0 
	MOVWF       R7 
	MOVLW       31
	MOVWF       R0 
	MOVLW       133
	MOVWF       R1 
	MOVLW       43
	MOVWF       R2 
	MOVLW       128
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main189
L__main194:
;MyProject.c,360 :: 		UART1_Write_Text("V");
	MOVLW       ?lstr46_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr46_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,361 :: 		goto REQ;
	GOTO        ___main_REQ
;MyProject.c,362 :: 		}
L_main189:
;MyProject.c,364 :: 		UART1_Write_Text("null RIN0");
	MOVLW       ?lstr47_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr47_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,367 :: 		CON0:
___main_CON0:
;MyProject.c,368 :: 		if(cont1 ==0){
	MOVLW       0
	XORWF       main_cont1_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main244
	MOVLW       0
	XORWF       main_cont1_L0+0, 0 
L__main244:
	BTFSS       STATUS+0, 2 
	GOTO        L_main191
;MyProject.c,369 :: 		UART1_Write_Text("I");
	MOVLW       ?lstr48_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr48_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,370 :: 		}
	GOTO        L_main192
L_main191:
;MyProject.c,372 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main193:
	DECFSZ      R13, 1, 1
	BRA         L_main193
	DECFSZ      R12, 1, 1
	BRA         L_main193
	DECFSZ      R11, 1, 1
	BRA         L_main193
	NOP
	NOP
;MyProject.c,373 :: 		UART1_Write_Text("J");
	MOVLW       ?lstr49_MyProject+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr49_MyProject+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;MyProject.c,374 :: 		}
L_main192:
;MyProject.c,378 :: 		}
L_main5:
;MyProject.c,379 :: 		}
	GOTO        L_main0
;MyProject.c,380 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
