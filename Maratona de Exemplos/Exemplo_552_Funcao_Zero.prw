/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/22/funcao-que-retorna-sempre-0-atraves-da-zero-maratona-advpl-e-tl-552/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe552
Fun��o sempre retorna 0 (foi colocado na maratona para ter um com a letra Z)
@type Function
@author Atilio
@since 07/04/2023
@obs 
    Fun��o Zero
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Retorna sempre 0

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe552()
    Local aArea      := FWGetArea()
    Local nZero      := 0

    //Busca o valor de zero
    nZero := Zero()

    //Exibe uma mensagem
    FWAlertInfo("Ahooooo, esse � o �ltimo v�deo da Maratona, e o valor de nZero � " + cValToChar(nZero), "Teste Zero")

    FWRestArea(aArea)
Return
