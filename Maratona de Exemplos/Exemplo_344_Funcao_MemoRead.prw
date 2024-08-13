/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/09/criando-arquivos-com-a-memowrite-maratona-advpl-e-tl-345/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe344
Retorna o conte�do de um arquivo (todas as linhas), com a limita��o de 64 kb
@type Function
@author Atilio
@since 22/03/2023
@see https://tdn.totvs.com/display/tec/MemoRead
@obs 

    Fun��o MemoRead
    Par�metros
        + cFile       , Caractere     , Indica o nome do arquivo a ser lido
        + lChangeCase , L�gico        , Se verdadeiro o nome do arquivo ser� considerado tudo min�sculo
    Retorno
        + cRet        , Caractere     , Retorna o conte�do do arquivo (com a limita��o de 64 kb)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe344()
	Local aArea := FWGetArea()
    Local cArquivo := "C:\spool\exemplo_query.sql"
    Local cConteudo := ""

    //Se o arquivo existir
    If File(cArquivo)
        //Realiza a leitura do arquivo para uma vari�vel
        cConteudo := MemoRead(cArquivo)

        //Exibe o conte�do lido
        ShowLog(cConteudo)
    EndIf

    FWRestArea(aArea)
Return
