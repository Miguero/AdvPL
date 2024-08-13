/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/17/exibindo-tela-com-temporizador-e-as-opcoes-sim-e-nao-com-msgyesnotimer-maratona-advpl-e-tl-361/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe361
Abre uma tela com as op��es sim e n�o, com um temporizador
@type Function
@author Atilio
@since 27/03/2023
@obs 
    Fun��o MsgYesNoTimer
    Par�metros
        + Mensagem a ser exibida
        + T�tulo da janela
        + Tempo em milissegundos
        + Op��o padr�o de retorno (1=Sim; 2=N�o) em caso da tela fechar sozinha
    Retorno
        + Retorna .T. se foi Sim ou .F. se N�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe361()
    Local aArea         := FWGetArea()
    
    //Se a pergunta for confirmada, ou passar o tempo (ultimo parametro igual a 1)
    If MsgYesNoTimer("Voc� deseja continuar? (tela ir� fechar em 5 segundos)", "Aten��o!", 5000, 1)
        FWAlertSuccess("Foi clicado no sim ou acabou o tempo!", "Teste")
    EndIf

    FWRestArea(aArea)
Return
