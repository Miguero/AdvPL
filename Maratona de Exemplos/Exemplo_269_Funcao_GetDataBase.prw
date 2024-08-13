/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/02/buscando-o-nome-da-banco-atraves-da-getdatabase-maratona-advpl-e-tl-269/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe269
Retorna o nome do tipo da conex�o com a base de dados usada no AppServer com o DbAccess
@type  Function
@author Atilio
@since 21/02/2023
@obs 

    Fun��o GetDataBase
    Par�metros
        N�o possui par�metros
    Retorno
        Retorna o tipo da base em caractere
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe269()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Busca a informa��o e exibe
    cMensagem := "O tipo da conex�o usada �: " + GetDataBase()
    FWAlertInfo(cMensagem, "Teste GetDataBase")

    FWRestArea(aArea)
Return
