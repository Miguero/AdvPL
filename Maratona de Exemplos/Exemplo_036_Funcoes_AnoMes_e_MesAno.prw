/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/13/funcoes-anomes-e-mesano-para-buscar-o-yyyymm-de-uma-data-maratona-advpl-e-tl-036/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe036
Exemplo de fun��o que retorna o ano e m�s conforme uma data (YYYYMM)
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o AnoMes
    Par�metros
        + Data que ser� efetuado a tratativa para buscar o ano e m�s
    Retorno
        + Texto no formato YYYYMM conforme a data passada

    Fun��o MesAno
    Par�metros
        + Data que ser� efetuado a tratativa para buscar o ano e m�s
    Retorno
        + Texto no formato YYYYMM conforme a data passada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe036()
    Local aArea   := FWGetArea()
    Local dData   := sToD("")
    Local cResult := ""

    //Pegando o Ano e M�s da data atual conforme o servidor
    dData   := Date()
    cResult := AnoMes(dData)
    FWAlertInfo("O per�odo �: " + cResult, "Resultado do AnoMes")

    //Pegando o Ano e M�s de 1 m�s atr�s conforme o servidor
    dData   := MonthSub(Date(), 1)
    cResult := MesAno(dData)
    FWAlertInfo("O per�odo �: " + cResult, "Resultado do MesAno")

    //Pegando o resultado e colocando em uma m�scara, por exemplo YYYY-MM
    dData   := Date()
    cResult := AnoMes(dData)
    cResult := Transform(cResult, "@R 9999-99")
    FWAlertInfo("O per�odo �: " + cResult, "Resultado do AnoMes com M�scara")

    FWRestArea(aArea)
Return
