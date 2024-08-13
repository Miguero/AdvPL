/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/22/verificando-se-e-um-dia-util-com-a-funcao-datavalida-maratona-advpl-e-tl-106/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe106
Retorna a pr�xima data v�lida (sem ser fim de semana ou feriado)
@type Function
@author Atilio
@since 12/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815098
@obs 
    Fun��o DataValida
    Par�metros
        + dData         , Data         , Data a ser validada
        + lTipo         , L�gico       , .T. se posterga para a pr�xima data v�lida ou .F. se retrocede para data v�lida anterior
    Retorno
        + dData         , Data         , Data v�lida do sistema

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe106()
    Local aArea     := FWGetArea()
    Local dData     := sToD("20221210")
    Local dDataVld

    //Busca a data v�lida
    dDataVld := DataValida(dData)

    //Se for diferente, exibe a mensagem dizendo que era feriado ou fim de semana
    If dData != dDataVld
        FWAlertInfo("Fim de semana ou feriado!" + CRLF + "dData: " + DToC(dData) + CRLF + "dDataVld: " + DToC(dDataVld), "Teste DataValida")
    Else
        FWAlertInfo("Datas iguais", "Teste DataValida")
    EndIf

    FWRestArea(aArea)
Return
