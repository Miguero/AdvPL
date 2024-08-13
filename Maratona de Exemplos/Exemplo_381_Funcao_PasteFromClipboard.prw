/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/27/simulando-um-ctrlv-com-a-pastefromclipboard-maratona-advpl-e-tl-381/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe381
Busca um conte�do que esta na clipboard do S.O.
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/PasteFromClipboard
@obs 

    Fun��o PasteFromClipboard
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Retorna o conte�do que foi dado Ctrl+C em mem�ria

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe381()
    Local aArea     := FWGetArea()
    Local cTexto    := ""

    //Busca o valor e mostra
    cTexto := PasteFromClipboard()
    FWAlertInfo("O conte�do em mem�ria � '" + cTexto + "'", "Teste PasteFromClipboard")
 
    FWRestArea(aArea)
Return
