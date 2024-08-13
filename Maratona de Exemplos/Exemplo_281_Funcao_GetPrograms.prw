/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/08/buscando-o-proximo-alias-disponivel-com-a-getnextalias-maratona-advpl-e-tl-280/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe281
Retorna as fun��es abertas em mem�ria
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetPrograms
@obs 
    
    Fun��o GetPrograms
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + aRet      , Array      , Array com os programas em AdvPL abertos na mem�ria

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe281()
    Local aArea      := FWGetArea()
    Local aProgramas := {}
    Local cMensagem  := ""
    Local cPrograma  := ""
    
    //Busca os programas carregados e joga em um array
    aProgramas := GetPrograms()

    //Percorre os programas incrementando a mensagem
    aEval(aProgramas, {|cPrograma| (cMensagem += cPrograma + CRLF) } )

    //Exibe uma mensagem com os programas
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
