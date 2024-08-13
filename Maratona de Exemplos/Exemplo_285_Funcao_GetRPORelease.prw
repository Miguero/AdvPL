/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/10/buscando-informacoes-de-onde-esta-rodando-o-smartclient-com-getrmtinfo-maratona-advpl-e-tl-284/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe285
Retorna a vers�o do Reposit�rio de Objetos
@type  Function
@author Atilio
@since 21/02/2023
@obs 

    Fun��o GetRPORelease
    Par�metros
        N�o possui par�metros
    Retorno
        Retorna a vers�o
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe285()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Busca a informa��o e exibe
    cMensagem := "A vers�o do RPO �: " + GetRPORelease()
    FWAlertInfo(cMensagem, "Teste GetRPORelease")

    FWRestArea(aArea)
Return
