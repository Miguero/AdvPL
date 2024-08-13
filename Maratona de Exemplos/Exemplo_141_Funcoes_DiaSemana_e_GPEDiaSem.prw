/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/27/buscando-o-nome-do-dia-com-as-funcoes-diasemana-e-gpediasem-maratona-advpl-e-tl-141/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe141
Fun��es que retornam o nome do dia (segunda, ter�a, quarta, etc)
@type Function
@author Atilio
@since 16/12/2022
@obs 
    Fun��o DiaSemana
    Par�metros
        + Data a ser verificada
        + Tamanho do texto (por exemplo se for 3 caracteres e for segunda feira ser� SEG)
        + Caso n�o seja informado o dData informa o n�mero do dia que quer retornar o nome (de 1 a 7)
    Retorno
        + Nome do Dia (Domingo, Segunda, Ter�a, Quarta, Quinta, Sexta ou Sabado)

    Fun��o GPEDiaSem
    Par�metros
        + Data a ser verificada
    Retorno
        + Retorna o nome do dia completo (Domingo, Segunda-Feira, Ter�a-Feira, Quarta-Feira, Quinta-Feira, Sexta-Feira ou Sabado)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe141()
    Local aArea       := FWGetArea()
    Local dDtHoje     := Date()
    Local cDiaAtu1    := ""
    Local cDiaAbrev   := ""
    Local cSabado     := ""
    Local cDiaAtu2    := ""

    //Fazendo as buscas do nome do dia
    cDiaAtu1    := DiaSemana(dDtHoje,  , )
    cDiaAbrev   := DiaSemana(dDtHoje, 3, )
    cSabado     := DiaSemana( , , 7)
    cDiaAtu2    := GPEDiaSem(dDtHoje)

    //Monta a mensagem com o resulta e mostra
    cMensagem := "Data atual: "            + dToC(dDtHoje) + CRLF + CRLF
    cMensagem += "Dia atual: "             + cDiaAtu1  + CRLF
    cMensagem += "Dia Abreviado: "         + cDiaAbrev + CRLF
    cMensagem += "S�timo dia: "            + cSabado   + CRLF + CRLF
    cMensagem += "Dia atual (GPEDiaSem): " + cDiaAtu2 
    FWAlertInfo(cMensagem, "Teste DiaSemana e GPEDiaSem")

    FWRestArea(aArea)
Return
