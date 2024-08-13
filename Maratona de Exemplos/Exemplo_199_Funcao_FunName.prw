/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/27/buscando-o-nome-da-funcao-atraves-da-funname-maratona-advpl-e-tl-199/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe199
Fun��o que retorna o nome da fun��o aberta no menu
@type Function
@author Atilio
@since 11/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814875
@obs 
    Fun��o FunName
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + cRetorno    , Caractere        , Texto com o nome da fun��o do menu

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe199()
    Local aArea     := FWGetArea()
    Local cNomeFunc := ""

    //Busca a descri��o e mostra
    cNomeFunc := FunName()
    FWAlertInfo(cNomeFunc, "Teste FunName")

    FWRestArea(aArea)
Return
