/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/10/buscando-o-tamanho-de-um-parametro-atraves-da-tamsx1-maratona-advpl-e-tl-468/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe469
Busca o tamanho e os decimais de um campo na SX3
@type Function
@author Atilio
@since 02/04/2023
@obs 
    TamSX3
    Par�metros
        Nome do Campo (X3_CAMPO)
    Retorno
        Retorna um array com 2 posi��es sendo [1] o Tamanho (X3_TAMANHO) e [2] o tamanho de decimais (X3_DECIMAL)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe469()
    Local aArea       := FWGetArea()
    Local aTamanho    := {}

    //Busca o tamanho de um par�metro
    aTamanho := TamSX3("B1_COD")
    FWAlertInfo("O tamanho � '" + cValToChar(aTamanho[1]) + "', e o tamanho de decimais � '" + cValToChar(aTamanho[2]) + "'", "Teste 1 - TamSX3")

    //Busca o tamanho de um par�metro que tenha decimais
    aTamanho := TamSX3("B2_QPEDVEN")
    FWAlertInfo("O tamanho � '" + cValToChar(aTamanho[1]) + "', e o tamanho de decimais � '" + cValToChar(aTamanho[2]) + "'", "Teste 2 - TamSX3")

    FWRestArea(aArea)
Return
