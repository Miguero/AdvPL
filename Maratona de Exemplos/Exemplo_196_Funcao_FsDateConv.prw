/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/26/buscando-o-tipo-do-cliente-ou-fornecedor-com-a-ftippessoa-maratona-advpl-e-tl-197/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe196
Fun��o que formata uma data
@type Function
@author Atilio
@since 11/02/2023
@obs 
    Fun��o FsDateConv
    Par�metros
        + Data a ser formatada
        + M�scara que ser� utilizada na formata��o
    Retorno
        + Retorna a data formatada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe196()
    Local aArea     := FWGetArea()
    Local dDataRef  := Date()
    Local cMensagem := ""

    //Montando uma mensagem com v�rias possibilidades de formatar uma data
    cMensagem += FsDateConv(dDataRef, "DDMMYYYY") + CRLF
    cMensagem += FsDateConv(dDataRef, "MMDDYYYY") + CRLF
    cMensagem += FsDateConv(dDataRef, "YYYYMMDD") + CRLF
    FWAlertInfo(cMensagem, "Teste FsDateConv")

    FWRestArea(aArea)
Return
