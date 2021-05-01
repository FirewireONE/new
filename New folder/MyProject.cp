#line 1 "C:/Users/Federico Fam/Desktop/FINAL/Codes/New folder/MyProject.c"
void main() {
 unsigned int cont1,div,imp,con1,adc_result0,adc_result1,adc_result2,adc_result3,adc_result4,x;

float volts_thumb[15], volts_index[15], volts_tall[15], volts_ring[15], volts_pinky[15],
sum_thumb=0, sum_index=0, sum_tall=0, sum_ring=0, sum_pinky=0,
tmb=0, ind=0, mid=0, rin=0, pin=0;

char thumb[15], index[15], tall[15], ring[15], pinky[15],
 contact_1[5] = "1.00", contact_2[5] = "2.00", contact_3[5] = "3.00",
 contact_4[5] = "4.00", contact_5[5] = "5.00", contact_6[5] = "6.00";



ADCON1= 0x0A;
TRISA= 0xFF;
TRISB= 0x08;
PORTB= 0x00;
TRISC= 0xFF;
PORTC= 0x00;
TRISD= 0xFF;
PORTD= 0x00;
UART1_Init(9600);
REQ:
while(1)
{
 div = 15;
 cont1=RB0;
 imp = 0;
 imp = UART1_Read();
 adc_result0=ADC_Read(0);
 adc_result1=ADC_Read(1);
 adc_result2=ADC_Read(2);
 adc_result3=ADC_Read(3);
 adc_result4=ADC_Read(4);

 sum_thumb=0;
 sum_index=0;
 sum_tall=0;
 sum_ring=0;
 sum_pinky=0;

 tmb=0;
 ind=0;
 mid=0;
 rin=0;
 pin=0;



for(x=0;x<div;x++){
 volts_thumb[x]=(adc_result0*5.00)/1024;
 volts_index[x]=(adc_result1*5.00)/1024;
 volts_tall[x]=(adc_result2*5.00)/1024;
 volts_ring[x]=(adc_result3*5.00)/1024;
 volts_pinky[x]=(adc_result4*5.00)/1024;

 sum_thumb = sum_thumb + volts_thumb[x];
 sum_index = sum_index + volts_index[x];
 sum_tall = sum_tall + volts_tall[x];
 sum_ring = sum_ring + volts_ring[x];
 sum_pinky = sum_pinky + volts_pinky[x];

}

 ind = sum_thumb/div;
 tmb = sum_index/div;
 mid = sum_tall/div;
 rin = sum_ring/div;
 pin = sum_pinky/div;


 FloatToStr(tmb,thumb);
 FloatToStr(ind,index);
 FloatToStr(mid,tall);
 FloatToStr(rin,ring);
 FloatToStr(pin,pinky);

 thumb[4]=0;
 index[4]=0;
 tall[4]=0;
 ring[4]=0;
 pinky[4]=0;


 if(imp == 24){
 con1 = RD0 ;


 UART1_Write_Text(thumb);
 UART1_Write(10);
 UART1_Write(13);


 UART1_Write_Text(index);
 UART1_Write(10);
 UART1_Write(13);


 UART1_Write_Text(tall);
 UART1_Write(10);
 UART1_Write(13);


 UART1_Write_Text(ring);
 UART1_Write(10);
 UART1_Write(13);


 UART1_Write_Text(pinky);
 UART1_Write(10);
 UART1_Write(13);
 UART1_Write(10);
 UART1_Write(13);

 if (tmb>=1.80 && tmb<=1.90){
 goto IND0;
 }
 else if (tmb>=1.91 && tmb<=1.99){
 goto IND1;
 }
 else if (tmb>=2.00 && tmb<=2.09){
 goto IND2;
 }
 else if (tmb>=2.10 && tmb<=2.19){
 goto IND3;
 }
 else if (tmb>=2.20 && tmb<=2.29){
 goto IND4;
 }
 else if (tmb>=2.30 && tmb<=2.39){
 goto IND5;
 }
 else if (tmb>=2.40 && tmb<=2.45){
 UART1_Write_Text("X");
 goto REQ;
 }
 else if (tmb>=2.47 && tmb<=2.52){
 UART1_Write_Text("S");
 goto REQ;
 }
 else if (tmb>=2.58 && tmb<=2.61){
 UART1_Write_Text("M");
 goto REQ;
 }
 else if (tmb>=2.64 && tmb<=2.68){
 UART1_Write_Text("E");
 goto REQ;
 }
 else if (tmb>=2.76 && tmb<=2.81){
 UART1_Write_Text("Z");
 goto REQ;
 }
 else{
 UART1_Write_Text("null TMB");
 goto REQ;
 }

IND0:
 if(ind>=2.18 && ind<=2.23){
 UART1_Write_Text("L");
 goto REQ;
 }
 else if(ind>=2.85 && ind<=2.90){
 UART1_Write_Text("Y");
 goto REQ;
 }
 else{
 UART1_Write_Text("null IND0");
 goto REQ;
 }

IND1:
 if(ind>=1.90 && ind<=1.94){
 UART1_Write_Text("F");
 goto REQ;
 }
 else if(ind>=2.32 && ind<=2.35){
 UART1_Write_Text("D");
 goto REQ;
 }
 else if(ind>=2.64 && ind<=2.67){
 UART1_Write_Text("T");
 goto REQ;
 }
 else if(ind>=2.22 && ind<=2.28){
 goto MID0;
 }
 else{
 UART1_Write_Text("null IND1");
 goto REQ;
 }

IND2:
 if(ind>=1.90 && ind<=1.94){
 UART1_Write_Text("F");
 goto REQ;
 }
 else if(ind>=2.64 && ind<=2.67){
 UART1_Write_Text("T");
 goto REQ;
 }
 else if(ind>=2.11 && ind<=2.18){
 goto MID1;
 }
 else if(ind>=2.22 && ind<=2.26){
 goto MID2;
 }
 else{
 UART1_Write_Text("null IND2");
 goto REQ;
 }

IND3:
 if(ind>=2.93 && ind<=2.96){
 goto CON0;
 }
 else if(ind>=2.19 && ind<=2.26){
 goto MID3;
 }
 else{
 UART1_Write_Text("null IND3");
 goto REQ;
 }

IND4:
 if(ind>=2.19 && ind<=2.22){
 UART1_Write_Text("B");
 goto REQ;
 }
 else if(ind>=2.71 && ind<=2.74){
 UART1_Write_Text("C");
 goto REQ;
 }
 else if(ind>=2.76 && ind<=2.81){
 UART1_Write_Text("O");
 goto REQ;
 }
 else if(ind>=2.95 && ind<=2.99){
 UART1_Write_Text("N");
 goto REQ;
 }
 else if(ind>=3.12 && ind<=3.15){
 UART1_Write_Text("A");
 goto REQ;
 }
 else{
 UART1_Write_Text("null IND4");
 goto REQ;
 }

IND5:
 if(ind>=2.76 && ind<=2.81){
 UART1_Write_Text("O");
 goto REQ;
 }
 else if(ind>=2.95 && ind<=2.99){
 UART1_Write_Text("N");
 goto REQ;
 }
 if(ind>=3.12 && ind<=3.15){
 UART1_Write_Text("A");
 goto REQ;
 }
 if(ind>=2.70 && ind<=2.75){
 goto MID4;
 }
 else {
 UART1_Write_Text("null IND5");
 goto REQ;
 }

MID0:
 if(mid>=2.14 && mid<=2.18){
 UART1_Write_Text("K");
 goto REQ;
 }
 else if(mid>=2.70 && mid<=2.80){
 UART1_Write_Text("Q");
 goto REQ;
 }
 else{
 UART1_Write_Text("null MID0");
 goto REQ;
 }

MID1:
 if(mid>=2.09 && mid<=2.13){
 UART1_Write_Text("U");
 goto REQ;
 }
 else if(mid>=1.95 && mid<=2.00){
 goto RIN0;
 }
 else {
 UART1_Write_Text("null MID1");
 goto REQ;
 }

MID2:
 if(mid>=2.07 && mid<=2.11){
 UART1_Write_Text("H");
 goto REQ;
 }
 if(mid>=2.77 && mid<=2.80){
 UART1_Write_Text("Q");
 goto REQ;
 }
 else {
 UART1_Write_Text("null MID2");
 goto REQ;
 }

MID3:
 if(mid>=1.91 && mid<=1.96){
 UART1_Write_Text("B");
 goto REQ;
 }
 else if(mid>=2.07 && mid<=2.11){
 UART1_Write_Text("H");
 goto REQ;
 }
 else if(mid>=2.46 && mid<=2.53){
 UART1_Write_Text("R");
 goto REQ;
 }
 else if(mid>=2.55 && mid<=2.59){
 UART1_Write_Text("P");
 goto REQ;
 }
 else if(mid>=2.93 && mid<=2.96){
 UART1_Write_Text("G");
 goto REQ;
 }
 else {
 UART1_Write_Text("null MID3");
 goto REQ;
 }

MID4:
 if(mid>=2.65 && mid<=2.69){
 UART1_Write_Text("C");
 goto REQ;
 }
 else if(mid>=2.92 && mid<=2.97){
 UART1_Write_Text("X");
 goto REQ;
 }
 else{
 UART1_Write_Text("null MID4");
 goto REQ;
 }


RIN0:
 if(rin>=1.94 && rin<=1.97){
 UART1_Write_Text("W");
 goto REQ;
 }
 else if(rin>=2.65 && rin<=2.68){
 UART1_Write_Text("V");
 goto REQ;
 }
 else{
 UART1_Write_Text("null RIN0");
 }

CON0:
 if(cont1 ==0){
 UART1_Write_Text("I");
 }
 else{
 delay_ms(500);
 UART1_Write_Text("J");
 }



 }
 }
}
