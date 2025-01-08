/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/12/19/como-fazer-2-validacoes-em-um-unico-ponto-de-entrada-ti-responde-0109/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function MT410TOK
Ponto de Entrada na valida��o ao clicar no bot�o Confirmar
@type  Function
@author Atilio
@since 11/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6784353
/*/

User Function MT410TOK()
    Local aArea     := FWGetArea()
    Local lContinua := .T.

    //Valida��o 1 - Pedido sem vendedor
    lContinua := fValidVend()

    //Se deu tudo certo na valida��o anterior, passa para a pr�xima
    If lContinua
        //Valida��o 2 - Pedido sem transportadora
        lContinua := fValidTranp()
    EndIf

    FWRestArea(aArea)
Return lContinua



//Valida��o 1 - Pedido sem vendedor
Static Function fValidVend()
    Local aArea      := FWGetArea()
    Local lValid1    := .T.
    Local cVendedor  := ""
    Local cTipoPed   := ""

    //Pega o campo de vendedor e de tipo de pedido
    cVendedor := M->C5_VEND1
    cTipoPed  := M->C5_TIPO

    //Se for um pedido normal (tipo N) e o n�o tiver vendedor preenchido
    If cTipoPed == "N" .And. Empty(cVendedor)
        ExibeHelp("Help_MT410TOK_A", "Para pedido do tipo Normal (N), � obrigat�rio preencher o campo de c�digo do vendedor!", "Preencha a informa��o no campo C5_VEND1")
        lValid1 := .F.
    EndIf

    FWRestArea(aArea)
Return lValid1



//Valida��o 2 - Pedido sem transportadora
Static Function fValidTranp()
    Local aArea      := FWGetArea()
    Local lValid2    := .T.
    Local cTranspor  := ""
    Local cTipoFret  := ""

    //Pega o campo de vendedor e de tipo de pedido
    cTranspor := M->C5_TRANSP
    cTipoFret := M->C5_TPFRETE

    //Se o tipo de frete for CIF (pago pela empresa) e o n�o tiver transportadora preenchida
    If cTipoFret == "C" .And. Empty(cTranspor)
        ExibeHelp("Help_MT410TOK_B", "Para tipo de frete CIF, � obrigat�rio preencher o campo de c�digo da transportadora!", "Preencha a informa��o no campo C5_TRANSP")
        lValid2 := .F.
    EndIf

    FWRestArea(aArea)
Return lValid2
