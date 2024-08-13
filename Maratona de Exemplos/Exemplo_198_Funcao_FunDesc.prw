/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/27/buscando-a-descricao-da-funcao-aberta-atraves-da-fundesc-maratona-advpl-e-tl-198/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe198
Fun��o que retorna a descri��o da rotina aberta no menu
@type Function
@author Atilio
@since 11/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814874
@obs 
    Fun��o FunDesc
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + cDesc       , Caractere        , Texto com o nome da descri��o da rotina no menu

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe198()
    Local aArea     := FWGetArea()
    Local cDescri   := ""

    //Busca a descri��o e mostra
    cDescri := FunDesc()
    FWAlertInfo(cDescri, "Teste FunDesc")

    FWRestArea(aArea)
Return
