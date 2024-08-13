/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/10/funcoes-alltrim-rtrim-e-ltrim-para-remover-espacos-de-uma-expressao-maratona-advpl-e-tl-033/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe033
Exemplo de fun��o para tirar espa�os de uma vari�vel caractere com AllTrim, RTrim e LTrim
@type Function
@author Atilio
@since 28/11/2022
@see https://tdn.totvs.com/display/tec/AllTrim , https://tdn.totvs.com/display/tec/RTrim e https://tdn.totvs.com/display/tec/LTrim
@obs 
    Fun��o AllTrim
    Par�metros
        + cText  , Caractere, Texto que ter� os espa�os a esquerda e direita removidos
    Retorno
        + cRet   , Caractere, Texto com os espa�os removidos

    Fun��o RTrim
    Par�metros
        + cText  , Caractere, Texto que ter� os espa�os a direita removidos
    Retorno
        + cRet   , Caractere, Texto com os espa�os removidos

    Fun��o LTrim
    Par�metros
        + cText  , Caractere, Texto que ter� os espa�os a esquerda removidos
    Retorno
        + cRet   , Caractere, Texto com os espa�os removidos

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe033()
    Local aArea     := FWGetArea()
    Local cNome     := Space(10) + "Daniel Atilio" + Space(10)
    Local cResult   := ""

    //Demonstrando o conte�do original
    cResult += "Original: '" + cNome + "'"                     + CRLF

    //Retirando espa�os da direita e esquerda
    cResult += "AllTrim:  '" + AllTrim(cNome) + "'"            + CRLF

    //Retirando apenas os espa�os da direita
    cResult += "RTrim:    '"   + RTrim(cNome)   + "'"          + CRLF

    //Retirando apenas os espa�os da esquerda
    cResult += "LTrim:    '"   + LTrim(cNome)   + "'"          + CRLF

    //Mostra o resultado das convers�es
    ShowLog(cResult)

    FWRestArea(aArea)
Return
