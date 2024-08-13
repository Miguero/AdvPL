/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/09/extraindo-informacoes-de-uma-variavel-atraves-da-varinfo-maratona-advpl-e-tl-526/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe526
Fun��o que pega dados de uma vari�vel e transforma de forma leg�vel em caractere
@type Function
@author Atilio
@since 06/04/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814752
@obs 

    Fun��o VarInfo
    Par�metros
        Recebe o nome da express�o que ir� ser usada
        Recebe a vari�vel que ser� extra�da as informa��es
        Recebe qual o espa�amento deve ser adicionado a cada -tab-
        Recebe se ser� em HTML (.T.) ou TXT (.F.)
        Recebe se deve exibir uma mensagem no console.log com o conte�do extra�do
    Retorno
        Retorna a informa��o extra�da da vari�vel (ideal para arrays ou objetos)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe526()
    Local aArea      := FWGetArea()
    Local aPessoa    := {}

    //Adiciona um array com v�rios elementos
    aAdd(aPessoa, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aPessoa, {"Joao",   sToD("19910131"), "Agudos"})
    aAdd(aPessoa, {"Maria",  sToD("19921231"), "Piratininga"})

    //Cria um arquivo HTML com os dados do Array
    MemoWrite("C:\spool\seu_arquivo.html", VarInfo("aPessoa", aPessoa))

    //Cria um arquivo TXT com os dados do Array
    MemoWrite("C:\spool\seu_arquivo.txt", VarInfo("aPessoa", aPessoa, , .F.))

    FWRestArea(aArea)
Return
