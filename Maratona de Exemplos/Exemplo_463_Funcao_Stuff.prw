/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/07/removendo-parte-de-um-texto-com-a-stuff-maratona-advpl-e-tl-463/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe463
Remove parte do texto com a possiblidade de substitui��o
@type Function
@author Atilio
@since 02/04/2023
@see https://tdn.totvs.com/display/tec/Stuff
@obs 
    Fun��o Stuff
    Par�metros
        + cString       , Caractere    , Valor a ser analisado
        + nInicio       , Num�rico     , Posi��o inicial que ser� verificada
        + nElimina      , Num�rico     , Quantidade de caracteres que ser�o removidos a partir da posi��o inicial
        + cInsere       , Num�rico     , Texto que ser� inserido no trecho removido
    Retorno
        + cRet          , Caractere    , Retorna a string conforme os par�metros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe463()
    Local aArea     := FWGetArea()
    Local cTexto    := "Gostava de jogar Sonic e Street Fighter."
    Local cNovo     := ""

    //Faz remo��o de parte do texto e mostra o resultado
    cNovo := Stuff(cTexto, 18, 8, "")
    FWAlertInfo(cNovo, "Teste 1 de Stuff")

    //Faz a substitui��o de parte do texto por outro texto e mostra o resultado
    cNovo := Stuff(cTexto, 18, 5, "Mortal Kombat")
    FWAlertInfo(cNovo, "Teste 2 de Stuff")

    FWRestArea(aArea)
Return
