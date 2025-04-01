/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte33
Exemplo de como acionar o Exit ou Loop em um la�o
@type Function
@author Atilio
@since 07/04/2023
/*/


User Function zFonte33()
	Local aArea   := FWGetArea()
	Local aAreaSA2 := SA2->(FWGetArea())
	Local cMsg    := ""
	Local nAtual  := 0
	
	//Enquanto for verdadeiro
	While .T.
		
		//Se a pergunta for confirmada, volta o la�o
		If MsgYesNo("Deseja continuar o la�o?", "Aten��o")
			Loop
		Else
			Exit
		EndIf
		
	EndDo
	
	FWRestArea(aAreaSA2)
	FWRestArea(aArea)
Return
