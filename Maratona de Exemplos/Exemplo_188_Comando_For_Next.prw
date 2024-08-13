/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/22/fazendo-um-laco-de-repeticao-com-for-next-maratona-advpl-e-tl-188/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe188
Faz um la�o de repeti��o de um valor at� outro
@type Function
@author Atilio
@since 21/12/2022
@see https://tdn.totvs.com/display/public/framework/FOR+...+NEXT
@obs 
    

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe188()
    Local aArea    := FWGetArea()
	Local nAtual   := 0
	Local aNomes   := {}
	Local cPares   := ""
	Local cMsg     := ""
	
	//Percorrendo de 1 a 10
	For nAtual := 1 To 10
		
		//Se o resto da divis�o por 2 der 0, ent�o � n�mero par
		If nAtual % 2 == 0
			cPares += cValToChar(nAtual) + ", "
		EndIf
		
	Next


    
	
	//Adicionando nomes no array
	aAdd(aNomes, "Daniel")
	aAdd(aNomes, "Atilio")
	aAdd(aNomes, "Terminal de Informa��o")
	
	//Percorrendo o array de nomes
	For nAtual := Len(aNomes) To 1 Step -1
		cMsg += "[" + cValToChar(nAtual) + "] - " + aNomes[nAtual] + CRLF
	Next
	
	FWAlertInfo("Pares: " + cPares + CRLF + "Nomes: " + cMsg, "Teste de For ... Next")
	
	FWRestArea(aArea)
Return
