/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/04/criando-dialogs-com-a-fwdialogmodal-maratona-advpl-e-tl-215/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe215
Exemplo de fun��o que cria uma dialog
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FwDialogModal
@obs 

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe215()
    Local aArea := FWGetArea()
    Local oDlgAux
    Local nJanAltu   := 100
    Local nJanLarg   := 200
    Local bBlocoTst  := {|| FWAlertInfo("Clicou no bot�o escrito 'Teste'", "Bot�o Teste")}
    Local cJanTitulo := "Tela usando FWDialogModal"

    //Instancia a classe, criando uma janela
    oDlgAux := FWDialogModal():New()
    oDlgAux:SetTitle(cJanTitulo)
    oDlgAux:SetSize(nJanAltu, nJanLarg)
    oDlgAux:EnableFormBar(.T.)
    oDlgAux:CreateDialog()
    oDlgAux:CreateFormBar()
    oDlgAux:AddButton("Teste", bBlocoTst, "Teste", , .T., .F., .T., )

    //Aqui antes de abrir a tela, caso voc� queira usar essa classe, pode usar o m�todo oDlgAux:GetPanelMain()
    //   e instanciar os objetos apontando para esse painel
    
    oDlgAux:Activate()

    FWRestArea(aArea)
Return
