/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/03/abrindo-a-tela-de-consulta-generica-com-a-funcao-edapp-maratona-advpl-e-tl-150/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe150
Abre a tela de Consulta Gen�rica de Tabelas - antiga fun��o Lerda()
@type Function
@author Atilio
@since 16/12/2022
@obs 
    Fun��o EDaPP
    N�o tem par�metros nem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe150()
    Local aArea       := FWGetArea()

    If FWAlertYesNo("Deseja continuar e abrir a tela de Consulta Gen�rica de tabelas?", "Abrir Consulta Gen�rica?")
        EDaPP()
    EndIf

    FWRestArea(aArea)
Return
