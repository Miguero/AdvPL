/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/27/criando-variaveis-private-atraves-da-setprvt-maratona-advpl-e-tl-441/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe440
Define o conte�do de um par�metro de uma pergunta
@type Function
@author Atilio
@since 30/03/2023
@see https://tdn.totvs.com/display/public/framework/SetMVValue
@obs 
    Fun��o SetMVValue
    Par�metros
        + cPergunta     , Caractere     , C�digo do grupo de perguntas
        + cMVVar        , Caractere     , MV_PAR que ser� atualizado
        + xValue        , Indefinido    , Conte�do que ser� atribu�do ao par�metro
    Retorno
        + lRet          , L�gico        , .T. se conseguiu atribuir ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe440()
    Local aArea    := FWGetArea()
    Local cPerg    := "MATR802"
    Local dDataHj  := Date()
    Local dDataDe  := DaySub(dDataHj, 7)
    Local dDataAte := DaySum(dDataHj, 7)

    //Define os par�metros antes de abrir a tela
    SetMVValue(cPerg, "MV_PAR03", dDataDe)
    SetMVValue(cPerg, "MV_PAR04", dDataAte)

    //Aciona a tela para exibir a pergunta
    If Pergunte(cPerg, .T.)
        // ...
    EndIf

	FWRestArea(aArea)
Return
