/*****************************************************************************
* | File      	:   LCD_1in28_Touch_test.c
* | Author      :   Waveshare team
* | Function    :   1.3inch LCD  test demo
* | Info        :
*----------------
* |	This version:   V1.0
* | Date        :   2022-12-09
* | Info        :
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documnetation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to  whom the Software is
# furished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS OR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
******************************************************************************/
#include "LCD_Test.h"
#include "LCD_1in28.h"
#include "Touch_1in28.h"
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"

Touch_1IN28_XY XY;

UBYTE flag = 0,flgh = 0,l;
UWORD *BlackImage,x,y;
struct repeating_timer timer_Get_Point;

bool timer_screen_refresh_cb(struct repeating_timer *t)
{
    l++;//Determine continuous or single point 
    if (l == 253)
    {
        l = 252;
    }      
  return true;
}

int LCD_1in28_test(void)
{
    
    if (DEV_Module_Init() != 0)
    {
        return -1;
    }

    /* LCD Init */
    printf("1.28inch LCD demo...\r\n");
    LCD_1IN28_Init(HORIZONTAL);
    LCD_1IN28_Clear(WHITE);
    //backlight settings
    DEV_SET_PWM(100);
    //open interrupt
    DEV_IRQ_SET(DEV_I2C_INT, GPIO_IRQ_EDGE_RISE | GPIO_IRQ_EDGE_FALL, true, &Touch_INT_callback);
    //set buffer
    UDOUBLE Imagesize = LCD_1IN28_HEIGHT * LCD_1IN28_WIDTH * 2;
    if ((BlackImage = (UWORD *)malloc(Imagesize)) == NULL)
    {
        printf("Failed to apply for black memory...\r\n");
        exit(0);
    }
    // /*1.Create a new image cache named IMAGE_RGB and fill it with white*/
    Paint_NewImage((UBYTE *)BlackImage, LCD_1IN28.WIDTH, LCD_1IN28.HEIGHT, 0, WHITE);
    Paint_SetScale(65);
    Paint_Clear(WHITE);
    Paint_SetRotate(ROTATE_0);
    LCD_1IN28_Display(BlackImage); 
    // /* GUI */
    printf("drawing...\r\n");
    add_repeating_timer_us(1000, timer_screen_refresh_cb, NULL, &timer_Get_Point);
    // /*2.Drawing on the image*/
#if 1
    Paint_DrawPoint(50, 41, BLACK, DOT_PIXEL_1X1, DOT_FILL_RIGHTUP); // 240 240
    Paint_DrawPoint(50, 46, BLACK, DOT_PIXEL_2X2, DOT_FILL_RIGHTUP);
    Paint_DrawPoint(50, 51, BLACK, DOT_PIXEL_3X3, DOT_FILL_RIGHTUP);
    Paint_DrawPoint(50, 56, BLACK, DOT_PIXEL_4X4, DOT_FILL_RIGHTUP);
    Paint_DrawPoint(50, 61, BLACK, DOT_PIXEL_5X5, DOT_FILL_RIGHTUP);

    Paint_DrawLine(60, 40, 90, 70, MAGENTA, DOT_PIXEL_2X2, LINE_STYLE_SOLID);
    Paint_DrawLine(60, 70, 90, 40, MAGENTA, DOT_PIXEL_2X2, LINE_STYLE_SOLID);

    Paint_DrawRectangle(60, 40, 90, 70, RED, DOT_PIXEL_2X2, DRAW_FILL_EMPTY);
    Paint_DrawRectangle(100, 40, 130, 70, BLUE, DOT_PIXEL_2X2, DRAW_FILL_FULL);

    Paint_DrawLine(135, 55, 165, 55, CYAN, DOT_PIXEL_1X1, LINE_STYLE_DOTTED);
    Paint_DrawLine(150, 40, 150, 70, CYAN, DOT_PIXEL_1X1, LINE_STYLE_DOTTED);

    Paint_DrawCircle(150, 55, 15, GREEN, DOT_PIXEL_1X1, DRAW_FILL_EMPTY);
    Paint_DrawCircle(185, 55, 15, GREEN, DOT_PIXEL_1X1, DRAW_FILL_FULL);

    Paint_DrawNum(50, 80, 9.87654321, &Font20, 3, WHITE, BLACK);
    Paint_DrawString_EN(50, 100, "ABC", &Font20, 0x000f, 0xfff0);
    Paint_DrawString_CN(50, 120, "Î¢Ñ©µç×Ó", &Font24CN, WHITE, BLUE);
    Paint_DrawString_EN(50, 161, "WaveShare", &Font16, RED, WHITE);

    // /*3.Refresh the picture in RAM to LCD*/
    LCD_1IN28_Display(BlackImage);
    DEV_Delay_ms(1500);

    Paint_DrawImage(gImage_1inch28_1,0,0,240,240);
    LCD_1IN28_Display(BlackImage);
    DEV_Delay_ms(2000);



#endif
#if 1
    Touch_Gesture();
    Touch_HandWriting();
#endif
    /* Module Exit */
    free(BlackImage);
    BlackImage = NULL;

    DEV_Module_Exit();
    return 0;
}

void Touch_HandWriting()
{
    XY.mode = 1;
    XY.color = BLACK;
    flgh = TOUCH_INIT; //Initialize the flag
    flag == TOUCH_INIT;
    /* TP Init */
    if(Touch_1IN28_init(XY.mode) == true)
        printf("OK!\r\n");
    else
        printf("NO!\r\n");
    DEV_Delay_ms(10);
    Paint_Clear(WHITE);
    Paint_DrawRectangle(0, 0, 35, 208,RED,DOT_PIXEL_1X1,DRAW_FILL_FULL);
    Paint_DrawRectangle(0, 0, 208, 35,GREEN,DOT_PIXEL_1X1,DRAW_FILL_FULL);
    Paint_DrawRectangle(206, 0, 240, 240,BLUE,DOT_PIXEL_1X1,DRAW_FILL_FULL);
    Paint_DrawRectangle(0, 206, 240, 240,GRAY,DOT_PIXEL_1X1,DRAW_FILL_FULL); 
    LCD_1IN28_Display(BlackImage);

    while(1)
    {
        if(flgh == TOUCH_INIT && XY.x_point != TOUCH_INIT)
        {
            DEV_Delay_ms(10);
            flgh = 1; //flag position 1
            //Get the coordinates of the first point
            x = XY.x_point;
            y = XY.y_point;
        }   
        if (flag == TOUCH_IRQ)
        {
            DEV_Delay_ms(10);
            if ((XY.x_point > 35 && XY.x_point < 205) && (XY.y_point > 35 && XY.y_point < 208))
            {
                flgh = TOUCH_DRAW;//allowed to draw
            }
            else
            {
                if ((XY.x_point > 0 && XY.x_point < 33) && (XY.y_point > 0 && XY.y_point < 208))
                    {
                        XY.color = RED;
                    }
                if ((XY.x_point > 0 && XY.x_point < 208) && (XY.y_point > 0 && XY.y_point < 33))
                    {
                        XY.color = GREEN;
                    }
                if ((XY.x_point > 208 && XY.x_point < 240) && (XY.y_point > 0 && XY.y_point < 240))
                    {
                        XY.color = BLUE;
                    }
                if ((XY.x_point > 0 && XY.x_point < 240) && (XY.y_point > 208 && XY.y_point < 240))
                    {
                        Paint_ClearWindows(35,35,205,208,WHITE);
                        Paint_DrawRectangle(0, 206, 240, 240,GRAY,DOT_PIXEL_1X1,DRAW_FILL_FULL); 
                        LCD_1IN28_DisplayWindows(35,35,205,208,BlackImage);
                    }
                flgh = TOUCH_NO_DRAW; //Prohibition to draw
                flag = TOUCH_DRAW;
            }
            

            if (flgh == TOUCH_DRAW)
            {
                XY.x_point = (XY.x_point > 37)? XY.x_point : 37;
                XY.y_point = (XY.y_point > 37)? XY.y_point : 37;

                XY.x_point = (XY.x_point < 205)? XY.x_point : 205;
                XY.y_point = (XY.y_point < 203)? XY.y_point : 203;    
                
                if (l<16) //continuous drawing
                {
                    // printf("DrawLine\r\n");
                    flag = TOUCH_DRAW;
                    Paint_DrawLine(x,y,XY.x_point, XY.y_point, XY.color, DOT_PIXEL_2X2, LINE_STYLE_SOLID);
                    LCD_1IN28_DisplayWindows(x,y,XY.x_point, XY.y_point,BlackImage);
                    l=0;
                }
                else//draw dots
                {
                    // printf("DrawPoint\r\n");
                    flag = TOUCH_DRAW; 
                    // printf("%d %d\r\n",XY.x_point,XY.y_point);
                    Paint_DrawPoint(XY.x_point, XY.y_point, XY.color, DOT_PIXEL_2X2, DOT_FILL_AROUND);
                    LCD_1IN28_DisplayWindows(x,y,XY.x_point, XY.y_point,BlackImage);
                    l = 0; 
                }
                x = XY.x_point;
                y = XY.y_point;
            }
        }
    }
}

void Touch_Gesture()
{
    XY.mode = 0;
    /* TP Init */
    if(Touch_1IN28_init(XY.mode) == true)
        printf("OK!\r\n");
    else
        printf("NO!\r\n");
    Paint_Clear(WHITE);
    Paint_DrawString_EN(35, 90, "Gesture test", &Font20, BLACK, WHITE);
    Paint_DrawString_EN(10, 120, "Complete as prompted", &Font16, BLACK, WHITE);
    LCD_1IN28_Display(BlackImage);
    Paint_Clear(WHITE);
    DEV_Delay_ms(1500);
    Paint_DrawImage(gImage_up, 45, 30, 150, 150);
    Paint_DrawString_EN(105, 190, "Up", &Font24, 0X647C, WHITE);
    LCD_1IN28_Display(BlackImage);
    while(XY.Gesture != UP)
    {
        DEV_Delay_ms(50);
    }

    Paint_ClearWindows(105,190,145,215,WHITE);
    Paint_DrawImage(gImage_down, 45, 30, 150, 150);
    Paint_DrawString_EN(85, 190, "Down", &Font24, 0X647C, WHITE);
    LCD_1IN28_Display(BlackImage);
    while(XY.Gesture != Down)
    {
        DEV_Delay_ms(50);
    }
    
    Paint_ClearWindows(85,190,155,215,WHITE);
    Paint_DrawImage(gImage_left, 45, 30, 150, 150);
    Paint_DrawString_EN(85, 190, "Left", &Font24, 0X647C, WHITE);
    LCD_1IN28_Display(BlackImage);
    while(XY.Gesture != LEFT)
    {
        DEV_Delay_ms(50);
    }

    Paint_ClearWindows(85,190,155,215,WHITE);
    Paint_DrawImage(gImage_right, 45, 30, 150, 150);
    Paint_DrawString_EN(80, 190, "Right", &Font24, 0X647C, WHITE);
    LCD_1IN28_Display(BlackImage);
    while(XY.Gesture != RIGHT)
    {
        DEV_Delay_ms(50);
    }

    Paint_ClearWindows(80,190,170,215,WHITE);
    Paint_DrawImage(gImage_long_press, 45, 30, 150, 150);
    Paint_DrawString_EN(47, 190, "Long Press", &Font20, 0X647C, WHITE);
    LCD_1IN28_Display(BlackImage);
    while(XY.Gesture != LONG_PRESS)
    {
        DEV_Delay_ms(50);
    }

    Paint_ClearWindows(47,190,200,215,WHITE);
    Paint_DrawImage(gImage_double_click, 45, 30, 150, 150);
    Paint_DrawString_EN(35, 185, "Double Click", &Font20, 0X647C, WHITE);
    LCD_1IN28_Display(BlackImage);
    while(XY.Gesture != DOUBLE_CLICK)
    {
        DEV_Delay_ms(50);
    }

    flag = TOUCH_OUT_GESTURE; //exit gesture mode
}

void Touch_INT_callback(uint gpio, uint32_t events)
{
    if (XY.mode == 0)
    {
        XY.Gesture = DEV_I2C_Read_Byte(address,0x01);
        flag = TOUCH_IRQ;
    }
    else
    {
        flag = TOUCH_IRQ;
        XY = Touch_1IN28_Get_Point();  
    }
}