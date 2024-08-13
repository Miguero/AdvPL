/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/19/pegando-o-fim-de-uma-string-atraves-da-funcao-right-maratona-advpl-e-tl-425/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe425
Pega o fim de um texto at� determinada posi��o
@type Function
@author Atilio
@since 11/03/2023
@see https://tdn.totvs.com/display/tec/Right
@obs 
    Fun��o Right
    Par�metros
        + cText        , Caractere , Texto que ser� analisado
        + nCount       , Num�rico  , Indica o n�mero de caracteres
    Retorno
        + cRet         , Caractere , Retorna o texto at� aquela determinada posi��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe425()
    Local aArea     := FWGetArea()
    Local cNome     := "Daniel"
    Local cAbreviad := ""

    //Pega s� os 3 �ltimos caracteres do texto
    cAbreviad := Right(cNome, 3)

    //Mostra o resultado
    FWAlertInfo("O nome '" + cNome + "', somente os 3 �ltimos caracteres fica como '" + cAbreviad + "'", "Teste Right")

    FWRestArea(aArea)
Return
