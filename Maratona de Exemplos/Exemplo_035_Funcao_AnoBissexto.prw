/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/12/funcao-anobissexto-para-validar-se-um-ano-e-bissexto-maratona-advpl-e-tl-035/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe035
Exemplo de fun��o que verifica se o ano passado � bissexto (366 dias) ou � um ano comum (365 dias)
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o AnoBissexto
    Par�metros
        + N�mero do ano que deseja validar
    Retorno
        + Retorna .T. se � um ano bissexto ou .F. se n�o for

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe035()
    Local aArea     := FWGetArea()

    //Verifica se o ano de 2020 � bissexto
    If AnoBissexto(2020)
        FWAlertInfo("O ano de '2020' � bissexto, portanto tem 366 dias", "Teste 1")
    EndIf

    //Verifica se o ano de 2022 N�O � bissexto
    If ! AnoBissexto(2022)
        FWAlertInfo("O ano de '2022' n�o � bissexto, portanto tem 365 dias", "Teste 2")
    EndIf

    FWRestArea(aArea)
Return
