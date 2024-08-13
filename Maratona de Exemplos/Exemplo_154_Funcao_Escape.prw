/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/05/montando-a-estrutura-de-um-produto-com-as-funcoes-estrut2-e-fimestrut2-maratona-advpl-e-tl-155/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe154
Fun��o que retira caracteres especiais de um conte�do web (como URL)
@type Function
@author Atilio
@since 18/12/2022
@obs 
    Fun��o Escape
    Par�metros
        Recebe a string que ter� os caracteres transformados
    Retorno
        Retorna a string com os caracteres j� transformados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe154()
    Local aArea     := FWGetArea()
    Local cOriginal := ""
    Local cConverti := ""

    //Convertendo uma URL que possua espa�os
    cOriginal := "terminal de informa��o"
    cConverti := Escape(cOriginal)
    FWAlertInfo("A convers�o de '" + cOriginal + "' deu '" + cConverti + "' ", "Exemplo Escape")

    FWRestArea(aArea)
Return
