/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/16/buscando-a-descricao-de-uma-opcao-de-um-combo-com-x3combo-maratona-advpl-e-tl-541/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe540
Retorna o conte�do de um ComboBox conforme a SX3
@type Function
@author Atilio
@since 07/04/2023
@see https://tdn.totvs.com/display/public/framework/X3CBox+-++Campo+combo
@obs 
    Fun��o X3CboxToArray
    Par�metros
        Recebe o nome do campo
    Retorno
        Retorna um Array com as op��es do combo

    Fun��o TkSX3Box
    Par�metros
        Recebe o nome do campo
    Retorno
        Retorna um Array com as op��es do combo

    Fun��o X3Cbox
    Par�metros
        Recebe o nome do campo
    Retorno
        Retorna uma string com as op��es do combo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe540()
    Local aArea      := FWGetArea()
    Local cCampo     := ""
    Local aExeX3Arr  := {}
    Local cExeX3     := ""
    Local aExeX3Tk   := {}

    //Exemplo 1, combo box com op��es comuns
    cCampo     := PadR("A1_TIPO", 10)
    aExeX3Arr  := X3CboxToArray(cCampo)
    cExeX3     := X3CBox(cCampo)
    aExeX3Tk   := TkSX3Box(cCampo)
    FWAlertInfo("O conte�do do combo �: " + cExeX3, "Teste 1 X3CBox, TkSX3Box e X3CboxToArray")

    //Exemplo 2, combo box que tenha # no conte�do
    cCampo     := PadR("F4_CREDACU", 10)
    aExeX3Arr  := X3CboxToArray(cCampo)
    cExeX3     := X3CBox(cCampo)
    aExeX3Tk   := TkSX3Box(cCampo)
    FWAlertInfo("O conte�do do combo �: " + cExeX3, "Teste 2 X3CBox, TkSX3Box e X3CboxToArray")

    FWRestArea(aArea)
Return
