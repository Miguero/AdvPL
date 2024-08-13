/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/18/buscando-um-array-com-as-opcoes-de-um-combobox-atraves-da-retx3box-maratona-advpl-e-tl-423/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe423
Retorna um array com as op��es de um ComboBox conforme a SX3
@type Function
@author Atilio
@since 29/03/2023
@obs 
    Fun��o RetX3Box
    Par�metros
        Recebe o nome do campo
    Retorno
        Retorna um Array com as op��es do combo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe423()
    Local aArea      := FWGetArea()
    Local cCampo     := ""
    Local aOpcoes    := {}

    //Exemplo 1, combo box com op��es comuns
    cCampo     := "A1_TIPO"
    aOpcoes    := RetX3Box(cCampo)
    FWAlertInfo("O conte�do do combo tem " + cValToChar(Len(aOpcoes)) + " op��es", "Teste 1 RetX3Box")

    //Exemplo 2, combo box que tenha # no conte�do
    cCampo     := "F4_CREDACU"
    aOpcoes    := RetX3Box(cCampo)
    FWAlertInfo("O conte�do do combo tem " + cValToChar(Len(aOpcoes)) + " op��es", "Teste 2 RetX3Box")

    FWRestArea(aArea)
Return
