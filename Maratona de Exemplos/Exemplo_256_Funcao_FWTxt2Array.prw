/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/25/ordenando-um-array-de-execauto-com-a-funcao-fwvetbydic-maratona-advpl-e-tl-257/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe256
Formata uma frase para um array (ideal para quebrar campos MEMO)
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/public/framework/FWTxt2Array
@obs 

    Fun��o FWTxt2Array
    Par�metros
        + cString        , Caractere       , Frase original que ser� quebrada
		+ nSize          , Num�rico        , Tamanho em caracteres de cada linha que quebrar� o texto
		+ lBreak         , L�gico          , Define se ir� respeitar a quebra de linha (CRLF) da frase original
    Retorno
        + aReturn        , Array           , Array com as linhas dos textos
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe256()
    Local aArea     := FWGetArea()
    Local cFrase    := "O rato roeu a roupa do Rei de roma, a rainha com raiva resolveu remendar. Num ninho de mafagafos, cinco mafagafinhos h�! Quem os desmafagafiz�-los, um bom desmafagafizador ser�."
    Local aTexto    := {}

    //Quebra o texto a cada 20 caracteres
    aTexto := FWTxt2Array(cFrase, 20)

    //Exibe a mensagem de quantas linhas deram
    FWAlertInfo("A frase deu um total de " + cValToChar(Len(aTexto)) + " linhas", "Teste FWTxt2Array")

    FWRestArea(aArea)
Return
