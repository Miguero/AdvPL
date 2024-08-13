/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/09/lendo-um-arquivo-com-a-funcao-memoread-maratona-advpl-e-tl-344/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe345
Cria um arquivo conforme conte�do passado
@type Function
@author Atilio
@since 22/03/2023
@see https://tdn.totvs.com/display/tec/MemoWrite
@obs 

    Fun��o MemoWrite
    Par�metros
        + cFile       , Caractere     , Indica o nome do arquivo a ser criado
        + cText       , Caractere     , Indica o texto que ser� inserido no arquivo
    Retorno
        + lRet        , L�gico        , Retorna .T. se conseguiu criar o arquivo ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe345()
	Local aArea    := FWGetArea()
    Local cFrase   := ""
    Local cQuery   := ""
    Local cNomeArq := ""
    Local aDados   := {}

    //Exemplo 1: gravando texto comum no arquivo

    //Monta a frase que ser� gravada
    cFrase := "O Terminal de Informa��o (Projeto 'Ti'), foi criado para compartilhar ideias e informa��es com outros usu�rios, tratando de diversos assuntos, como sistemas operacionais (OpenSUSE, Windows e outras distros Linux), projetos da Mozilla, Desenvolvimento (Java, C / C++ e AdvPL), tutoriais, an�lises e dicas de aplicativos e produtos, dentre outros assuntos. " + CRLF
    cFrase += " " + CRLF
    cFrase += "Tudo come�ou em 2012 (dia 08/08/2012 para ser mais preciso), e desde ent�o o projeto n�o parou mais de crescer, recebendo sempre feedbacks positivos de toda a comunidade. " + CRLF
    cFrase += " " + CRLF
    cFrase += "Em 2016 foi feita uma grande mudan�a para hospedagem pr�pria, muita coisa no Terminal mudou, e cada vez mais focando em artigos de qualidade para os usu�rios. " + CRLF
    cFrase += " " + CRLF
    cFrase += "S� tenho a agradecer aos amigos e aos internautas que sempre apoiam o projeto Ti. " + CRLF
    cFrase += " " + CRLF
    cFrase += "Espero que gostem. " + CRLF
    cFrase += " " + CRLF
    cFrase += "Sugest�es, Cr�ticas ou outras ideias, podem entrar em contato. " + CRLF

    //Define o nome do arquivo
    cNomeArq := "C:\spool\frase.txt"

    //Se o arquivo j� existir, far� a exclus�o
    If File(cNomeArq)
        FErase(cNomeArq)
    EndIf

    //Agora grava o conte�do da vari�vel em um arquivo
    MemoWrite(cNomeArq, cFrase)




    //Exemplo 2: gravando uma variavel array (ou objeto) dentro de um arquivo

    //Monta um Array
    aAdd(aDados, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aDados, {"Joao",   sToD("19910131"), "Agudos"})
    aAdd(aDados, {"Maria",  sToD("19921231"), "Piratininga"})

    //Define o nome do arquivo
    cNomeArq := "C:\spool\array.html"

    //Grava o conte�do da vari�vel no arquivo
    MemoWrite(cNomeArq, VarInfo("Array com nome de aDados", aDados))




    //Exemplo 3: gravando uma query dentro de um arquivo

    //Monta uma Query
    cQuery := " SELECT " + CRLF
    cQuery += "     B1_COD, " + CRLF
    cQuery += "     B1_DESC " + CRLF
    cQuery += " FROM " + CRLF
    cQuery += "     " + RetSQLName("SB1") + " SB1 " + CRLF
    cQuery += " WHERE " + CRLF
    cQuery += "     B1_FILIAL = '" + FWxFilial("SB1") + "' " + CRLF
    cQuery += "     AND B1_TIPO = 'PA' " + CRLF
    cQuery += "     AND SB1.D_E_L_E_T_ = ' ' " + CRLF
    cQuery += " ORDER BY " + CRLF
    cQuery += "     B1_COD ASC " + CRLF

    //Define o nome do arquivo
    cNomeArq := "C:\spool\exemplo_query.sql"

    //Grava o conte�do da vari�vel no arquivo
    MemoWrite(cNomeArq, cQuery)

    FWRestArea(aArea)
Return
