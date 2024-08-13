/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/08/abrindo-uma-tela-para-digitacao-com-fwinputbox-maratona-advpl-e-tl-222/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe222
Abre uma tela com um campo digit�vel
@type Function
@author Atilio
@since 20/02/2023
@obs 

    Fun��o FWInputBox
    Par�metros
        + Mensagem que ser� exibida em cima do campo de digita��o
        + Conte�do que j� vir� preenchido no campo
    Retorno
        Retorna o conte�do digitado pelo usu�rio

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe222()
    Local aArea     := FWGetArea()
    Local cConteudo := "Daniel"
    Local cDigitado := ""

    //Abre a janela para o usu�rio inserir as informa��es
    cDigitado := FWInputBox("Insira o seu o nome no campo abaixo:", cConteudo)

    //Exibe uma mensagem
    FWAlertInfo("O conte�do default � '" + cConteudo + "' e o usu�rio digitou '" + cDigitado + "'", "Teste com FWInputBox")

    FWRestArea(aArea)
Return
