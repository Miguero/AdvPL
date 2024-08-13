/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/02/validando-valores-com-a-funcao-positivo-maratona-advpl-e-tl-391/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe391
Verifica se um valor � positivo
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347027
@obs 

    Fun��o Positivo
    Par�metros
        Valor que ser� validado (se n�o for informado pega o conte�do do campo digitado em mem�ria)
    Retorno
        Retorna .T. se � positivo ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe391()
    Local aArea    := FWGetArea()
    Local nValor   := 0
 
    //Faz a valida��o de um valor negativo
    nValor := -5
    If Positivo(nValor)
        FWAlertSuccess("O valor � positivo!", "Teste 1 Positivo")
    EndIf

    //Faz a valida��o de um valor positivo
    nValor := 60
    If Positivo(nValor)
        FWAlertSuccess("O valor � positivo!", "Teste 2 Positivo")
    EndIf
 
    FWRestArea(aArea)
Return
