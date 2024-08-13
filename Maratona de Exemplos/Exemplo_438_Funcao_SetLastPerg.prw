/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/26/alterando-o-modulo-em-execucao-atraves-da-setmodulo-maratona-advpl-e-tl-439/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe438
Busca a �ltima pergunta que foi aberta em mem�ria
@type Function
@author Atilio
@since 30/03/2023
@obs 
    Fun��o SetLastPerg
    Par�metros
        Define ser ir� atualizar a pergunta com uma nova
    Retorno
        Retorna a �ltima pergunta acionada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe438()
    Local aArea    := FWGetArea()
    Local cPergBkp := ""

    //Faz um backup da �ltima pergunta
	cPergBkp := SetLastPerg()

    //Aciona outra pergunta
    If Pergunte("MTA440", .T.)
        // ...
    EndIf

    //Retorna o backup da pergunta
    Pergunte(cPergBkp, .F.)

	FWRestArea(aArea)
Return
