/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/08/executando-um-bloco-de-codigo-em-um-alias-com-dbeval-maratona-advpl-e-tl-122/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe122
Executa um bloco de c�digo no alias
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBEVal
@obs 
    Fun��o DBEVal
    Par�metros
        + bBlock           , Bloco de C�digo  , Bloco de c�digo a ser executado
        + bFirstCondition  , Bloco de C�digo  , Bloco de c�digo com condi��o em caso de inser��o de registro
        + bSecondCondition , Bloco de C�digo  , Segundo bloco de c�digo com condi��o em caso de inser��o de registro
        + nCount           , Num�rico         , N�mero m�ximo de registros a serem processados
        + nRecno           , Num�rico         , RecNo do �nico registro a ser processado
        + lRest            , L�gico           , Indica que os demais registros ser�o processados
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe122()
    Local aArea      := FWGetArea()
    Local nTotal     := 0
    Local bBloco     := {|| }
    Local aProds     := {}

    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //B1_FILIAL + B1_COD

    //Define o bloco de c�digo
    bBloco := {|| Iif("A" $ Upper(SB1->B1_DESC), nTotal++, Nil)}

    //Executa o bloco de c�digo
    SB1->(DbGoTop())
    SB1->(DbEVal(bBloco))

    //Mostra o resultado
    FWAlertInfo("Existe(m) " + cValToChar(nTotal) + " produto(s) que  tem a letra 'A' na descri��o!", "Teste 1 DbEVal")


    

    //Define o bloco de c�digo
    bBloco := {|| ;
        aAdd(aProds, {SB1->B1_COD, SB1->B1_DESC, SB1->(RecNo())});
    }

    //Executa o bloco de c�digo
    SB1->(DbGoTop())
    SB1->(DbEVal(bBloco))

    //Mostra o resultado
    FWAlertInfo("Existe(m) " + cValToChar(Len(aProds)) + " produto(s) no Array!", "Teste 2 DbEVal")

    FWRestArea(aArea)
Return
