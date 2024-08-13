/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/08/usando-a-funcao-md5-para-transformar-uma-string-maratona-advpl-e-tl-342/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe343
Retorna uma linha de uma string ou campo memo conforme parametriza��es passadas
@type Function
@author Atilio
@since 22/03/2023
@see https://tdn.totvs.com/display/tec/MemoLine
@obs 

    Fun��o MemoLine
    Par�metros
        + cText       , Caractere     , Texto que ser� analisado
        + nLineLength , Num�rico      , Tamanho m�ximo de caracteres por linha
        + nLineNumber , Num�rico      , N�mero da linha buscada
        + nTabSize    , Num�rico      , Tamanho da tabula��o usada
        + lWrapWord   , L�gico        , Indica se palavras inteiras ser�o consideradas
    Retorno
        + cText      , Caractere     , Retorna a linha conforme os par�metros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe343()
	Local aArea     := FWGetArea()
    Local cFrase    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    Local nTamanho  := 20
    Local nLinha    := 0
    Local cAtual    := "." //Inicia com ponto s� pra come�ar no While
    Local cMensagem := ""

    //Enquanto houver linhas a serem lidas
    While ! Empty(cAtual)
        //Incrementa a linha
        nLinha++

        //Busca a linha atual conforme o tamanho de caracteres definido
        cAtual := MemoLine(cFrase, nTamanho, nLinha)

        //Adiciona na mensagem
        If ! Empty(cAtual)
            cMensagem += "Linha " + cValToChar(nLinha) + ": " + cAtual + CRLF
        EndIf
    EndDo

    //Mostra a mensagem
    FWAlertInfo(cMensagem, "Teste MemoLine")

	FWRestArea(aArea)
Return
