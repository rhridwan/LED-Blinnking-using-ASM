void main()
{
   TRISB.F0 = 0; //Makes RB0 Output PIN

   while(1) //Infinite Loop
   {
      PORTB.F0 = 1; //LED ON
      Delay_ms(5000); //5 Second Delay
      PORTB.F0 = 0; //LED OFF
      Delay_ms(1000); //1 Second Delay
   }
}