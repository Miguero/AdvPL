/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/26/criando-tabelas-com-a-funcao-checkfile-maratona-advpl-e-tl-079/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe079
Exemplo de como criar uma tabela que ainda n�o existe no banco de dados (tamb�m pode ser usado a ChkFile)
@type Function
@author Atilio
@since 08/12/2022
@obs 
    Fun��o CheckFile
    Par�metros
        + Alias da tabela
        + Nome real da tabela que ficar� no banco de dados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe079()
    Local aArea     := FWGetArea()
    Local cAlias    := ""
    Local cArquivo  := ""

    //Aciona a verifica��o se a tabela (padr�o) n�o existir, ser� criada
    cAlias    := "SCA"
    cArquivo  := "SCA990"
    CheckFile(cAlias, cArquivo)

    //Aciona a verifica��o se a tabela customizada a partir de um alias padr�o n�o existir, ser� criada
    cAlias    := "SB1"
    cArquivo  := "SB1TESTE"
    CheckFile(cAlias, cArquivo)

    FWRestArea(aArea)
Return
