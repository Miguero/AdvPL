/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/06/exibindo-mensagens-no-console-log-com-a-qout-maratona-advpl-e-tl-399/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe398
Quebra uma string em um array at� encontrar o caractere, ou at� dar o tamanho estipulado
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o QbTexto
    Par�metros
        Frase que ser� verificada
        Tamanho de caracteres por linha do array
        Caractere que ser� considerado para a quebra
    Retorno
        O array formatado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe398()
    Local aArea     := FWGetArea()
    Local cFrase    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    Local nTamanho  := 30
    Local aDados    := {}
    
    //Quebra a frase em um array com tamanho delimitado
    aDados := QbTexto(cFrase, nTamanho, ".")
    FWAlertInfo("A frase deu " + cValToChar(Len(aDados)) + " linhas", "Teste QbTexto")

    FWRestArea(aArea)
Return
