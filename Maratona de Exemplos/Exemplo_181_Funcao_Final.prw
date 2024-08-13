/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/18/encerrando-uma-thread-com-a-funcao-final-maratona-advpl-e-tl-181/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe181
Finaliza a thread em execu��o
@type Function
@author Atilio
@since 21/12/2022
@obs 
    Fun��o Final
    Par�metros
        + Mensagem a ser exibida ao usu�rio
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe181()
    Local aArea     := FWGetArea()

    //Finaliza o protheus fechando o sistema ou a aba
    Final("Essa thread foi encerrada")

    FWRestArea(aArea)
Return
