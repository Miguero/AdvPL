/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/04/exibindo-mensagens-com-a-funcao-aviso-maratona-advpl-e-tl-057/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe057
Exemplo de fun��o que mostra uma mensagem de aviso na tela
@type Function
@author Atilio
@since 05/12/2022
@see https://tdn.totvs.com/display/public/framework/Aviso
@obs 
    Fun��o Aviso
    Par�metros
        + cTitulo         , Caracter   , Mensagem no T�tulo
        + cMsg            , Caracter   , Mensagem que ser� exibida na tela
        + aBotoes         , Array      , Array com as op��es dos bot�es
        + nSize           , Num�rico   , Tamanho da janela (podendo ser 1, 2 ou 3)
        + cText           , Caracter   , T�tulo da Descri��o (dentro da janela)
        + nRotAutDefault  , Num�rico   , Op��o padr�o em caso de rotina autom�tica
        + cBitmap         , Caracter   , Nome da imagem BITMAP dentro do Reposit�rio (descontinuado a partir do Protheus 12)
        + lEdit           , L�gico     , Se .T. permitir editar a mensagem sen�o se for .F. n�o permite
        + nTimer          , Num�rico   , Tempo para exibir a mensagem em milissegundos
        + nOpcPadrao      , Num�rico   , N�mero da op��o padr�o do array
    Retorno
        + nOpcAviso       , Num�rico   , Retorna a op��o clicada pelo usu�rio

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe057()
    Local aArea   := FWGetArea()
    Local cMsg    := "Terminal de Informa��o"
    Local nOpc    := 0
    Local cMsgRet := cMsg

    //Mensagem pequena normal
    Aviso("T�tulo Exemplo 1", cMsg, {"OK"}, 1, "Sub T�tulo")

    //Mensagem m�dia com bot�es
    nOpc := Aviso("T�tulo Exemplo 2 (Bot�es)", cMsg, {"Sim", "N�o", "Talvez"}, 2, "Sub T�tulo")
    If nOpc == 1
        FWAlertInfo("Clicou no Sim", "Aten��o")
    EndIf

    //Mensagem grande sendo poss�vel editar
    Aviso("T�tulo Exemplo 3 (Edit�vel)", @cMsgRet, {"OK"}, 3, "Sub T�tulo", , , .T.)
    FWAlertInfo(cMsgRet, "Conte�do digitado")

    //Mensagem que fecha sozinha depois de 5 segundos
    cMsg += " (tela ser� fechada em 5 segundos)"
    Aviso("T�tulo Exemplo 4 (Timer)", cMsg, {"OK"}, 2, "Sub T�tulo", , , , 5000)

    FWRestArea(aArea)
Return
