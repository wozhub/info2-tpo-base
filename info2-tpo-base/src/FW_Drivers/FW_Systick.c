#include "Aplicacion.h"
extern volatile uint8_t t;
extern volatile uint8_t flagtiempo;

extern volatile uint8_t estado_m;

void SysTick_Handler (void)
{

	static uint16_t decimas=400,medioseg=60;
	TecladoSW();
	BarridoDisplay7Seg();

	if(decimas)
		{
			decimas--;
			if(!decimas)
			{
				decimas = 400;
				if(estado_m==MANTENER_MOV)
				{
					t--;
					if(!t) flagtiempo=1;
				}
				//AnalizarTimer();
			}
		}
	if(medioseg)
	{
		medioseg--;
		if(!medioseg)
		{
			medioseg=60;
			Enviar_Trama();

		}
	}
}
