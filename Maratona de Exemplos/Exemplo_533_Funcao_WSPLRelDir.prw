/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/12/fazendo-um-laco-de-repeticao-com-while-e-enddo-maratona-advpl-e-tl-532/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe533
Retorna a pasta padr�o de relat�rios conforme a chave WSPReldir no environment ou nas configura��es como MV_RELT
@type Function
@author Atilio
@since 07/04/2023
@see https://tdn.totvs.com/display/tec/WSPLReldir
@obs 

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/


User Function zExe533()
	Local aArea   := FWGetArea()
	Local cPasta  := ""

    //Busca a pasta e exibe
    cPasta := WSPLRelDir()
    FWAlertInfo("A pasta de relat�rios �: " + cPasta, "Teste WSPLRelDir")
	
	FWRestArea(aArea)
Return
