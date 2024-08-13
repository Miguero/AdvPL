/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/24/integracao-com-o-word-atraves-das-funcoes-ole_-maratona-advpl-e-tl-374/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe375
Abre uma tela que ser� fechada conforme um tempo informado
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o OmsMsgTime
    Par�metros
        Recebe uma string com a mensagem que ser� exibida
        Recebe o n�mero em segundos que a tela permanecer� aberta
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe375()
    Local aArea     := FWGetArea()
    Local cMensagem := ""
    Local nTempo    := 5

    //Monta uma mensagem e exibe na tela
    cMensagem := "Ol�. Lembre-se de gravar todas as altera��es necess�rias! (essa tela ser� fechada em 5 segundos)"
    OmsMsgTime(cMensagem, nTempo)
 
    FWRestArea(aArea)
Return
