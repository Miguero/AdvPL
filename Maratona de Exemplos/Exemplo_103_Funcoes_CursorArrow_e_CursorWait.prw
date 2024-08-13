/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/19/mudando-o-cursor-do-mouse-com-as-funcoes-cursorarrow-e-cursorwait-maratona-advpl-e-tl-103/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe103
Exemplo de como mudar o cursor do mouse enquanto uma rotina entra em "loading"
@type Function
@author Atilio
@since 12/12/2022
@see https://tdn.totvs.com/display/tec/CursorArrow e https://tdn.totvs.com/display/tec/CursorWait
@obs 
    Fun��o CursorArrow
        N�o tem par�metros nem retorno

    Fun��o CursorWait
        N�o tem par�metros nem retorno

    Nas vers�es mais recentes do Windows, esses comandos n�o surtem efeito

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe103()
    Local aArea     := FWGetArea()
    Local nTotal    := 0
    Local aDados    := Array(1000000)
    
    //Muda o cursor para carregamento
    CursorWait()

    //Mostra qualquer mensagem
    MsgRun("Lendo informa��es...", "Teste", {|| aEval(aDados, {|x| nTotal++}) })

    //Volta o cursor para flecha
    CursorArrow()

    FWRestArea(aArea)
Return
