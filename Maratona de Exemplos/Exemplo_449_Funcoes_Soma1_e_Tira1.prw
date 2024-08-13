/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/31/manipulando-numeros-sequencias-de-string-com-soma1-e-tira1-maratona-advpl-e-tl-449/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe449
Incrementa um conte�do caractere e quando chega em 9 ele come�a a usar letras, por exemplo "99"
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814919
@obs 

    Fun��o Soma1
    Par�metros
        + cSoma        , Caractere   , String que ser� analisada
        + nPos         , Num�rico    , Posi��o ser movimentada
        + lSomaLow     , L�gico      , Se deve usar caracteres min�sculos
        + lCompleteSUM , L�gico      , Define se ir� usar todos os caracteres dispon�veis antes de usar letras
    Retorno
        + cRet       , Caractere     , Retorna a string com +1 no conte�do (conforme o tamanho do cSoma)


    Fun��o Tira1
        + Recebe a string no formato do Soma1
    Retorno
        + Retorna a string diminuindo -1 no conte�do

    Obs.: Se o par�metro MV_SOMAOLD estiver como .T. do "99" ele ir� virar "9A"; se tiver .F. ai do "99" ele ir� virar "A0"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe449()
    Local aArea        := FWGetArea()
    Local cValor       := "00"
    Local nAtual       := 0

    //Percorre valor de 1 a 150 e depois v� quanto que ficou o Soma1
    For nAtual := 1 To 150
        cValor := Soma1(cValor)
    Next
    FWAlertInfo("O resultado �: " + cValor, "Teste Soma1")

    //Utiliza o Tira1 para ver quanto que ficou o resultado
    cValor := Tira1(cValor)
    FWAlertInfo("O resultado �: " + cValor, "Teste Tira1")

    FWRestArea(aArea)
Return
