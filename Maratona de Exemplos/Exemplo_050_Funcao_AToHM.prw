/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/27/conversao-de-array-para-hashmap-com-a-funcao-atohm-maratona-advpl-e-tl-050/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe050
Exemplo de fun��o que converte um Array para um objeto HashMap
@type Function
@author Atilio
@since 01/12/2022
@see https://tdn.totvs.com/display/tec/AToHM
@obs 
    Fun��o AToHM
    Par�metros
        + aMatriz   , Array      , Indica o nome do array que ser� transformado em objeto
        + nColuna_1 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_1   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_2 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_2   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_3 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_3   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_4 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_4   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_5 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_5   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_6 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_6   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_7 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_7   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
        + nColuna_8 , Num�rico   , Indica o n�mero da coluna que ser� a chave da pesquisa
        + nTrim_8   , Num�rico   , Indica o tipo de trim que ser� aplicado em dados caractere (0 = mant�m; 1 = tira espa�os a esquerda; 2 = tira espa�os a direita; 3 = tira espa�os de ambos os lados)
    Retorno
        + oHash     , Objeto     , Objeto instanciado da classe THashMap

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe050()
    Local aArea      := FWGetArea()
    Local aDadosMult := {}
    Local oHashTst
    Local cBusca     := ""
    Local lEncontrou := .F.
    Local aLinha     := {}

    //Adicionando elementos no Array (c�digo, nome e idade)
    aAdd(aDadosMult, {"0001", "Daniel",   23})
    aAdd(aDadosMult, {"0002", "Atilio",   33})
    aAdd(aDadosMult, {"0003", "Jo�o",     43})
    aAdd(aDadosMult, {"0004", "Maria",    53})
    aAdd(aDadosMult, {"0005", "Jos�",     63})

    //Converte o Array para um THashMap, colocando como chave a coluna 1 e sem tirar espa�os do conte�do caractere
    oHashTst := AToHM(aDadosMult, 1, 0)

    //Efetua a busca do c�digo via HMGet, se encontrou vai colocar na vari�vel aLinha
    cBusca := "0003"
    lEncontrou := HMGet(oHashTst, cBusca, aLinha)

    //Se encontrou, iremos verificar o conte�do do aLinha
    If lEncontrou
        ShowLog( ;
            VarInfo("aLinha", aLinha, , .F.) ;
        )
    EndIf

    //Limpa o Hash da mem�ria e libera o objeto
    HMClean(oHashTst)
    FreeObj(oHashTst)

    FWRestArea(aArea)
Return
