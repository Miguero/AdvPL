/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/06/validando-se-um-registro-ja-existe-na-mesma-tabela-com-existchav-maratona-advpl-e-tl-157/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe157
Verifica se a chave j� existe na mesma tabela
@type Function
@author Atilio
@since 18/12/2022
@see https://tdn.engpro.totvs.com.br/pages/releaseview.action?pageId=24346638
@obs 
    Fun��o ExistChav
    Par�metros
        + Alias        , Caractere   , Nome da tabela a ser verificada
        + Expressao    , Caractere   , Conte�do dos campos a ser verificado
        + Indice       , Num�rico    , N�mero do �ndice a ser verificado
        + Help         , L�gico      , Se .T. ir� exibir o help caso j� encontrar o registro
    Retorno
        Retorna .F. se o registro n�o existir ou .T. se j� existir

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe157()
    Local aArea     := FWGetArea()
    Local cCodigo   := "C00001"
    Local cLoja     := "01"

    //Verifica se j� existe na tabela essa informa��o
    If ExistChav("SA1", cCodigo + cLoja, 1)
        FWAlertSuccess("Cliente n�o existe!", "Teste ExistChav")

    Else
        FWAlertError("Cliente j� existe!", "Teste ExistChav")
    EndIf

    FWRestArea(aArea)
Return
