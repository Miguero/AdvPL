/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/14/buscando-o-primeiro-e-ultimo-dia-do-ano-com-begofyea-e-endofyea-maratona-advpl-e-tl-067/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe067
Busca o primeiro e �ltimo dia do ano
@type Function
@author Atilio
@since 06/12/2022
@obs 

    Fun��o BegOfYea
    Par�metros
        + Data de Refer�ncia
    Retorno
        + Data com o primeiro dia do ano

    Fun��o EndOfYea
    Par�metros
        + Data de Refer�ncia
    Retorno
        + Data com o �ltimo dia do ano

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe067()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local dPriDiaAno
    Local dUltDiaAno

    //Pegando o primeiro dia do ano
    dPriDiaAno := BegOfYea(dDataRef)

    //Pegando o �ltimo dia do ano
    dUltDiaAno := EndOfYea(dDataRef)

    //Exibindo as datas
    FWAlertInfo(;
        "Data de Refer�ncia: " + dToC(dDataRef) + CRLF + ;
        "Primeiro dia do Ano: " + dToC(dPriDiaAno) + CRLF + ;
        "�ltimo dia do Ano: " + dToC(dUltDiaAno);
    , "Exemplo de BegOfYea e EndOfYea")

    FWRestArea(aArea)
Return
