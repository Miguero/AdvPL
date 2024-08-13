/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/14/buscando-os-feriados-atraves-da-retferiados-maratona-advpl-e-tl-414/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe415
Busca o c�digo da entidade no TSS (se estiver configurado) conforme empresa e filial logadas
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o RetIdEnti
    Par�metros
        Recebe se usa o TOTVS Colabora��o (.T. ou .F.)
    Retorno
        Retorna o c�digo da entidade caso o TSS esteja configurado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe415()
    Local aArea     := FWGetArea()
    Local cIdent    := ""

    //Busca o c�digo da entidade (no TSS) e exibe
    cIdent := RetIdEnti()
    FWAlertInfo("O c�digo da Entidade �: " + cIdent, "Teste RetIdEnti")

    FWRestArea(aArea)
Return
