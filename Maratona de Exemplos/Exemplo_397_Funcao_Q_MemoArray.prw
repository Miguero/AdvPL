/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/05/quebrando-uma-string-em-um-array-com-a-q_memoarray-maratona-advpl-e-tl-397/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe397
Quebra uma string em um array com tamanho fixo de caracteres por linha
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o Q_MemoArray
    Par�metros
        Frase que ser� verificada
        Array caso queira passar por refer�ncia para ser incrementado
        Tamanho de caracteres por linha do array
    Retorno
        O array formatado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe397()
    Local aArea     := FWGetArea()
    Local cFrase    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    Local nTamanho  := 20
    Local aDados    := {}
    
    //Quebra a frase em um array com tamanho delimitado
    Q_MemoArray(cFrase, @aDados, nTamanho)
    FWAlertInfo("A frase deu " + cValToChar(Len(aDados)) + " linhas", "Teste Q_MemoArray")

    FWRestArea(aArea)
Return
