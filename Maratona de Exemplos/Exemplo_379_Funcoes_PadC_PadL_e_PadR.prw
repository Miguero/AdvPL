/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/26/ordenando-uma-tabela-de-forma-decrescente-com-a-orddescend-maratona-advpl-e-tl-378/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe379
Adiciona caracteres no centro, a esquerda ou a direita de uma string
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/PadC e https://tdn.totvs.com/display/tec/PadL e https://tdn.totvs.com/display/tec/PadR
@obs 

    Fun��o PadC
    Par�metros
        + xExp           , Indefinido   , Indica o valor que ter� os caracteres adicionados
        + nLen           , Num�rico     , Define o tamanho que a string ficar�
        + cFill          , Caractere    , Indica o caractere que ser� usado para preenchimento (se n�o for informado ser� o espa�o)
    Retorno
        + cRet           , Caractere    , Retorna a string com o tamanho preenchido

    Fun��o PadL
    Par�metros
        + xExp           , Indefinido   , Indica o valor que ter� os caracteres adicionados
        + nLen           , Num�rico     , Define o tamanho que a string ficar�
        + cFill          , Caractere    , Indica o caractere que ser� usado para preenchimento (se n�o for informado ser� o espa�o)
    Retorno
        + cRet           , Caractere    , Retorna a string com o tamanho preenchido

    Fun��o PadR
    Par�metros
        + xExp           , Indefinido   , Indica o valor que ter� os caracteres adicionados
        + nLen           , Num�rico     , Define o tamanho que a string ficar�
        + cFill          , Caractere    , Indica o caractere que ser� usado para preenchimento (se n�o for informado ser� o espa�o)
    Retorno
        + cRet           , Caractere    , Retorna a string com o tamanho preenchido

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe379()
    Local aArea      := FWGetArea()
    Local cTexto     := ""
    Local cMensagem  := ""

    //Monta uma mensagem adicionando caracteres a direita e esquerda
    cTexto := "Daniel Atilio"
    cMensagem := "PadC: '" + PadC(cTexto, 25) + "'" + CRLF
    cMensagem += "PadL: '" + PadL(cTexto, 25) + "'" + CRLF
    cMensagem += "PadR: '" + PadR(cTexto, 25) + "'" + CRLF
    cMensagem += CRLF

    //Agora faz o exemplo, adicionando um 0 no lugar de espa�o vazio
    cTexto := "55"
    cMensagem += "PadC: '" + PadC(cTexto, 6, "0") + "'" + CRLF
    cMensagem += "PadL: '" + PadL(cTexto, 6, "0") + "'" + CRLF
    cMensagem += "PadR: '" + PadR(cTexto, 6, "0") + "'" + CRLF
    cMensagem += CRLF

    //Exibe a mensagem
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
