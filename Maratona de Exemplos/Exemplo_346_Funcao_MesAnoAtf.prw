/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/10/buscando-o-periodo-no-formato-mmdd-com-a-mesdia-maratona-advpl-e-tl-347/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe346
Retorna o ano e o m�s no formato "YYYYMM"
@type Function
@author Atilio
@since 25/03/2023
@obs 

    Fun��o MesAnoAtf
    Par�metros
        Recebe a Data a ser verificada
    Retorno
        Retorna o Ano e o M�s em uma string no formato "YYYYMM"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe346()
	Local aArea    := FWGetArea()
    Local dDtHoje  := Date()
    Local cAnoMes

    //Pega o Ano e o M�s conforme a data passada e exibe uma mensagem
    cAnoMes := MesAnoAtf(dDtHoje)
    FWAlertInfo("O resultado � " + cAnoMes, "Teste - MesAnoAtf")

    FWRestArea(aArea)
Return
