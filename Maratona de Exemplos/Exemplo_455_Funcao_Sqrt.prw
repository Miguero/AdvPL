/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/03/monta-um-order-by-conforme-indice-atraves-da-sqlorder-maratona-advpl-e-tl-454/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe455
Retorna o resultado de uma raiz quadrada
@type Function
@author Atilio
@since 31/03/2023
@see https://tdn.totvs.com/display/tec/Sqrt
@obs 

    Fun��o Sqrt
    Par�metros
        + nRadicand    , Num�rico     , Indica o valor que ser� analisado
    Retorno
        + nRet         , Num�rico     , Retorna o resultado da raiz quadrada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe455()
    Local aArea      := FWGetArea()
    Local nValor     := 0
    Local nResultado := 0

    //Monta as informa��es
    nValor     := 144
    nResultado := Sqrt(nValor)

    //Exibe o resultado
    FWAlertInfo("A raiz quadrada de '" + cValToChar(nValor) + "' � '" + cValToChar(nResultado) + "'!", "Teste Sqrt")

    FWRestArea(aArea)
Return
