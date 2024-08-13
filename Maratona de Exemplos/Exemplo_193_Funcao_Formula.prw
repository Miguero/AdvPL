/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/24/executando-uma-formula-cadastrada-no-sistema-com-a-formula-maratona-advpl-e-tl-193/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe193
Executa uma f�rmula cadastrada na SM4
@type Function
@author Atilio
@since 11/02/2023
@obs 
    Fun��o Formula
    Par�metros
        + C�digo da f�rmula a ser executada
    Retorno
        + Retorna o valor conforme a f�rmnula executada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe193()
    Local aArea     := FWGetArea()
    Local cFormCod  := "F01"
    Local dResult   := Nil

    //Executa a f�rmula e mostra o resultado
    dResult := Formula(cFormCod)
    FWAlertInfo("O resultado � " + dToC(dResult), "Formula - Teste 1")

    FWRestArea(aArea)
Return
