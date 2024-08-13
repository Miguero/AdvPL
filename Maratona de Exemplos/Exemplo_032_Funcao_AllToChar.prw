/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/09/funcao-alltochar-para-converter-numeros-data-e-logico-para-caractere-maratona-advpl-e-tl-032/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe032
Exemplo de fun��o para converter dados para Caractere usando AllToChar com possibilidade de passar uma m�scara
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o AllToChar
    Par�metros
        + Conte�do a ser convertido que pode ser dos tipos Num�rico; L�gico; Data;
        + M�scara de formata��o no caso de tipo Num�rico
        + Define se a data deve vir no formato YYYYMMDD (.T.) ou DD/MM/YYYY (.F.)
    Retorno
        + Conte�do convertido

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe032()
    Local aArea     := FWGetArea()
    Local lGostaLer := .T.
    Local dDtNascim := sToD("19930712")
    Local nAltura   := 1.73
    Local cResult   := ""

    //Converte do tipo L�gico para Caractere
    cResult += "lGostaLer: "              + AllToChar(lGostaLer)            + CRLF

    //Converte do tipo Data para Caractere
    cResult += "dDtNascim (YYYYMMDD): "   + AllToChar(dDtNascim, , .T.)     + CRLF
    cResult += "dDtNascim (DD/MM/YYYY): " + AllToChar(dDtNascim, , .F.)     + CRLF

    //Converte do tipo Num�rico para Caractere (e passando m�scara)
    cResult += "nAltura: "                + AllToChar(nAltura)              + CRLF
    cResult += "nAltura (com m�scara): "  + AllToChar(nAltura, "@E 999.99") + CRLF

    //Mostra o resultado das convers�es
    FWAlertInfo(cResult, "Testes com AllToChar")

    FWRestArea(aArea)
Return
