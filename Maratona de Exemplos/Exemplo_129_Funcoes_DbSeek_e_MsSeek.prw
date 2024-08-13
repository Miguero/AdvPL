/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/15/posicionando-em-um-registro-com-uma-expressao-atraves-de-dbseek-e-msseek-maratona-advpl-e-tl-129/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe129
Posiciona em um registro conforme uma chave passada para pesquisar no �ndice
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBSeek e https://tdn.totvs.com/pages/releaseview.action?pageId=24347003
@obs 
    Fun��o DbSeek
    Par�metros
        + xExp         , Caractere    , Express�o que ser� usada para encontrar o registro na tabela
        + lSoftSeek    , L�gico       , .T. se deve posicionar no pr�ximo registro depois do encontrado ou .F. se posiciona exatamente no encontrado
        + lLast        , L�gico       , Compatibilidade
    Retorno
        + lRet         , L�gico       , .T. se encontrou o registro ou .F. se n�o encontrou

    Fun��o MsSeek
    Par�metros
        + xExp         , Caractere    , Express�o que ser� usada para encontrar o registro na tabela
        + lSoftSeek    , L�gico       , .T. se deve posicionar no pr�ximo registro depois do encontrado ou .F. se posiciona exatamente no encontrado
        + lLast        , L�gico       , Compatibilidade
    Retorno
        + lRet         , L�gico       , .T. se encontrou o registro ou .F. se n�o encontrou

    O indicado � tentar usar o MsSeek por ser mais perform�tico, conforme os artigos:
    + https://terminaldeinformacao.com/2020/07/23/voce-sabia-que-o-msseek-e-mais-performatico-que-o-dbseek-em-advpl/
    + https://tdn.totvs.com/display/framework/Desempenho+DbSeek+x+MsSeek

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe129()
    Local aArea      := FWGetArea()
    Local cBusca     := ""
    
    //Abre o cadastro de produtos
    DbSelectArea('SB1')
    SB1->(DbSetOrder(3)) //B1_FILIAL + B1_DESC + B1_COD



    //Pede pro usu�rio inserir uma descri��o e faz a busca com DbSeek
    cBusca := FWInputBox("Insira a descri��o do produto para o DbSeek:")
    If SB1->(DbSeek(FWxFilial("SB1") + AvKey(cBusca, "B1_DESC")))
        FWAlertSuccess("Produto encontrado, c�digo " + SB1->B1_COD, "Sucesso DbSeek")
    Else
        FWAlertError("Produto n�o encontrado", "Falha DbSeek")
    EndIf



    //Pede pro usu�rio inserir uma descri��o e faz a busca com MsSeek
    cBusca := FWInputBox("Insira a descri��o do produto para o MsSeek:")
    If SB1->(MsSeek(FWxFilial("SB1") + AvKey(cBusca, "B1_DESC")))
        FWAlertSuccess("Produto encontrado, c�digo " + SB1->B1_COD, "Sucesso MsSeek")
    Else
        FWAlertError("Produto n�o encontrado", "Falha MsSeek")
    EndIf

    FWRestArea(aArea)
Return
