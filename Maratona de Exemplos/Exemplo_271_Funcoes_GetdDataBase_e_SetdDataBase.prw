/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/03/manipulando-a-data-logada-com-getddatabase-e-setddatabase-maratona-advpl-e-tl-271/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe271
Fun��es que manipulam a vari�vel de data de login (dDatabase) do sistema
@type  Function
@author Atilio
@since 21/02/2023
@obs 

    Fun��o GetdDataBase
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna a data que o usu�rio fez login no sistema

    Fun��o SetdDataBase
    Par�metros
        Informa a nova data de login do sistema
    Retorno
        N�o tem retorno
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe271()
    Local aArea      := FWGetArea()
    Local dOntem     := DaySub(Date(), 1)

    //Altera a data de login para a data de ontem
    SetdDataBase(dOntem)

    //Busca a informa��o e exibe
    cMensagem := "A nova data de login �: " + dToC( GetdDataBase() )
    FWAlertInfo(cMensagem, "Teste GetdDataBase e SetdDataBase")

    FWRestArea(aArea)
Return
