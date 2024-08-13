/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/15/funcao-array-para-criar-um-array-com-tamanho-pre-determinado-maratona-advpl-e-tl-038/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe038
Exemplo de fun��o que cria um array com as posi��es fixas (n�o pode usar aAdd depois que � criado, somente aIns com aSize)
@type Function
@author Atilio
@since 28/11/2022
@see https://tdn.totvs.com/display/tec/Array
@obs 
    Fun��o Array
    Par�metros
        + nElementos1  , Num�rico  , N�mero de elementos do Array
        + nElementos2  , Num�rico  , N�mero de sub-elementos do Array 1 
        + nElementos3  , Num�rico  , N�mero de sub-elementos do Array 2 
        + nElementos4  , Num�rico  , N�mero de sub-elementos do Array 3 
        + nElementos5  , Num�rico  , N�mero de sub-elementos do Array 4 
        + nElementos6  , Num�rico  , N�mero de sub-elementos do Array 5 
        + nElementos7  , Num�rico  , N�mero de sub-elementos do Array 6 
        + nElementos8  , Num�rico  , N�mero de sub-elementos do Array 7 
        + nElementos9  , Num�rico  , N�mero de sub-elementos do Array 8 
        + nElementos10 , Num�rico  , N�mero de sub-elementos do Array 9 
        + nElementos11 , Num�rico  , N�mero de sub-elementos do Array 10
        + nElementos12 , Num�rico  , N�mero de sub-elementos do Array 11
        + nElementos13 , Num�rico  , N�mero de sub-elementos do Array 12
        + nElementos14 , Num�rico  , N�mero de sub-elementos do Array 13
        + nElementos15 , Num�rico  , N�mero de sub-elementos do Array 14
        + nElementos16 , Num�rico  , N�mero de sub-elementos do Array 15
    Retorno
        + aRet         , Array     , Retorna o Array criado conforme as dimen�es passadas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe038()
    Local aArea     := FWGetArea()
    Local aDados
    Local aDados2

    //Cria um Array com 3 posi��es
    // Exemplo: [x][x][x]
    aDados := Array(3)
    aDados[1] := "Daniel Atilio"
    aDados[2] := "Terminal de Informa��o"
    aDados[3] := "Atilio Sistemas"

    //Cria um Array com 3 linhas, cada uma com 2 colunas
    // Exemplo:
    //  1: [x, y]
    //  2: [x, y]
    //  3: [x, y]
    aDados2 := Array(3, 2)
    aDados2[1][1] := "Daniel Atilio"
    aDados2[2][1] := "Terminal de Informa��o"
    aDados2[3][1] := "Atilio Sistemas"

    aDados2[1][2] := "https://www.linkedin.com/in/daniel-atilio/"
    aDados2[2][2] := "https://terminaldeinformacao.com/"
    aDados2[3][2] := "https://atiliosistemas.com/"

    //Mostra uma mensagem
    FWAlertInfo("aDados tem " + cValToChar(Len(aDados)) + " elementos, e aDados2 tem " + cValToChar(Len(aDados2)) + " linhas", "Exemplo de Array")

    FWRestArea(aArea)
Return
