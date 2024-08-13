/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/29/pegando-o-comeco-de-uma-string-com-a-funcao-left-maratona-advpl-e-tl-323/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe323
Pega o come�o de um texto at� determinada posi��o
@type Function
@author Atilio
@since 11/03/2023
@see https://tdn.totvs.com/display/tec/Left
@obs 
    Fun��o Left
    Par�metros
        + cText        , Caractere , Texto que ser� analisado
        + nCount       , Num�rico  , Indica o n�mero de caracteres
    Retorno
        + cRet         , Caractere , Retorna o texto at� aquela determinada posi��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe323()
    Local aArea     := FWGetArea()
    Local cNome     := "Daniel"
    Local cAbreviad := ""

    //Pega s� os 3 primeiros caracteres do texto
    cAbreviad := Left(cNome, 3)

    //Mostra o resultado
    FWAlertInfo("O nome '" + cNome + "', somente os 3 primeiros caracteres fica como '" + cAbreviad + "'", "Teste Left")

    FWRestArea(aArea)
Return
