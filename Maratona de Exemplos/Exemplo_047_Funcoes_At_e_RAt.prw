/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/24/buscando-a-primeira-ou-ultima-expressao-caractere-com-at-e-rat-maratona-advpl-e-tl-047/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe047
Exemplo de fun��o que retorna a primeira ou a �ltima posi��o de um texto conforme uma busca
@type Function
@author Atilio
@since 30/11/2022
@see https://tdn.totvs.com/display/tec/At e https://tdn.totvs.com/display/tec/RAt
@obs 
    Fun��o At
    Par�metros
        + cPesquisa , Caractere  , Indica a String que ser� buscada
        + cDestino  , Caractere  , Indica a String onde ser� efetuada a busca
        + nStart    , Num�rico   , Indica a partir de qual posi��o deve iniciar a busca
    Retorno
        + nRet      , Num�rico   , Retorna a posi��o encontrada

    Fun��o RAt
    Par�metros
        + cSearch   , Caractere  , Indica a String que ser� buscada
        + cSource   , Caractere  , Indica a String onde ser� efetuada a busca
    Retorno
        + nRet      , Num�rico   , Retorna a posi��o encontrada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe047()
    Local aArea      := FWGetArea()
    Local cNome      := "DANIEL DANIEL ATILIO ATILIO"
    Local cBusca1    := "IEL"
    Local cBusca2    := "ATILIO"
    Local nPosEnc    := 0

    //Busca pelo texto "IEL" dentro da string, a primeira posi��o que encontrar ser� mostrada
    nPosEnc := At(cBusca1, cNome)
    If nPosEnc != 0
        FWAlertInfo("Foi encontrado a busca a partir da posi��o: " + cValToChar(nPosEnc), "Exemplo At")
    EndIf

    //Busca pelo texto "ATILIO" dentro da string, a �ltima posi��o que encontrar ser� mostrada
    nPosEnc := RAt(cBusca2, cNome)
    If nPosEnc != 0
        FWAlertInfo("Foi encontrado a busca a partir da posi��o: " + cValToChar(nPosEnc), "Exemplo RAt")
    EndIf

    FWRestArea(aArea)
Return
