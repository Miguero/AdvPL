/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/22/validando-o-nivel-de-um-usuario-com-a-niveluser-maratona-advpl-e-tl-370/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe371
Retorna o nome da tabela do dicion�rio de dados
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o NomeTab
    Par�metros
        Recebe o Alias da Tabela
    Retorno
        Retorna o Nome da Tabela

    Fun��o Sx2Name
    Par�metros
        Recebe o Alias da Tabela
    Retorno
        Retorna o Nome da Tabela

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe371()
    Local aArea     := FWGetArea()
    Local cTabela   := ""
    Local cNome     := ""

    //Define a tabela e busca o nome dela
    cTabela := "SA1"
    cNome   := NomeTab(cTabela)
    FWAlertInfo("O nome da tabela '" + cTabela + "' � '" + cNome + "'", "Teste NomeTab")

    //Define a tabela e busca o nome dela
    cTabela := "SA2"
    cNome   := Sx2Name(cTabela)
    FWAlertInfo("O nome da tabela '" + cTabela + "' � '" + cNome + "'", "Teste Sx2Name")
 
    FWRestArea(aArea)
Return
