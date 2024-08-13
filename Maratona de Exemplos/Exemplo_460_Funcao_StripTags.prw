/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/06/buscando-conteudos-de-tags-atraves-da-striptags-maratona-advpl-e-tl-460/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe460
Realiza a busca de valores dentro de uma tag (XML)
@type Function
@author Atilio
@since 31/03/2023
@obs 
    Fun��o StripTags
    Par�metros
        Valor a ser Analisado
        Define se ir� limpar valores antes de retornar
    Retorno
        Retorna a string encontrada dentro das tags

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe460()
    Local aArea     := FWGetArea()
    Local cOriginal := ""
    Local cNovo     := ""

    //Monta uma string com tags e depois remove e exibe
    cOriginal := "<nome>daniel atilio</nome>"
    cNovo     := StripTags(cOriginal, .F.)
    FWAlertInfo("O resultado �: " + cNovo, "Teste StripTags")

    FWRestArea(aArea)
Return
