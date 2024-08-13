/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/07/validando-se-um-registro-existe-em-outra-tabela-com-existcpo-maratona-advpl-e-tl-158/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe158
Verifica se a chave dos campos existe em outra tabela
@type Function
@author Atilio
@since 18/12/2022
@see https://tdn.totvs.com/pages/viewpage.action?pageId=24346640
@obs 
    Fun��o ExistCpo
    Par�metros
        + Alias        , Caractere   , Nome da tabela a ser verificada
        + Expressao    , Caractere   , Conte�do dos campos a ser verificado
        + Indice       , Num�rico    , N�mero do �ndice a ser verificado
    Retorno
        Retorna .T. se j� existir ou .F. se o registro n�o existir

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe158()
    Local aArea     := FWGetArea()
    Local cCodigo   := "C00001"
    Local cLoja     := "01"

    //Verifica se j� existe na tabela essa informa��o
    If ExistCpo("SA1", cCodigo + cLoja, 1)
        FWAlertSuccess("Cliente verificado com sucesso!", "Teste ExistCpo")

    Else
        FWAlertError("Cliente n�o encontrado!", "Teste ExistCpo")
    EndIf

    FWRestArea(aArea)
Return
