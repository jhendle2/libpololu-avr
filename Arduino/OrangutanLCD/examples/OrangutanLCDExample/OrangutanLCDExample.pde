#include <OrangutanLCD.h>

/*
 * OrangutanLCDExample for the Orangutan LV-168
 *
 * This example program is indended for use on the Orangutan LV-168.
 * It uses the OrangutanLCD library to display things on the LCD.
 *
 * http://www.pololu.com/docs/0J17/5.c
 * http://www.pololu.com
 * http://forum.pololu.com
 */

OrangutanLCD lcd;


void setup()                    // run once, when the sketch starts
{

}

void loop()                     // run over and over again
{
  //int secs = millis() * 1000L;
  //lcd.print(secs);
  lcd.print("Hello");           // display "Hello" at (0, 0), a.k.a. upper-left
  delay(200);
  lcd.scroll(LCD_RIGHT, 3, 200);// shift the display right every 200ms three times
  lcd.clear();                  // clear the LCD
  lcd.gotoXY(3, 1);             // go to the fourth character of the second LCD line
  lcd.print("Hello");           // display "Hello" at (3, 1), a.k.a. lower-right
  delay(200);
  lcd.scroll(LCD_LEFT, 3, 200); // shift the display left every 200ms three times
  lcd.clear();                  // clear the LCD
}
