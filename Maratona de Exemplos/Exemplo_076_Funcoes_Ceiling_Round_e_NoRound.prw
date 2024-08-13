/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/23/arredondando-valores-com-as-funcoes-ceiling-round-e-noround-maratona-advpl-e-tl-076/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe076
Exemplo de arredondamentos de valores
@type Function
@author Atilio
@since 07/12/2022
@see https://tdn.totvs.com/display/tec/Ceiling , https://tdn.totvs.com/display/tec/Round e https://tdn.totvs.com/pages/releaseview.action?pageId=24347013
@obs 
    Fun��o Ceiling
    Par�metros
        + nValor       , Num�rico     , Indica o valor que ser� arredondado para cima
    Retorno
        + nRet         , Num�rico     , Retorna um n�mero inteiro conforme o nValor passado

    Fun��o Round
    Par�metros
        + nValue       , Num�rico     , Indica o valor que ser� analisado
        + nPoint       , Num�rico     , Indica o n�mero de casas decimais para arredondar
    Retorno
        + nRet         , Num�rico     , Retorna o valor arredondado

    Fun��o NoRound
    Par�metros
        + nValue       , Num�rico     , Indica o valor que ser� analisado
        + nPoint       , Num�rico     , Indica o n�mero de casas decimais a considerar
    Retorno
        + nRet         , Num�rico     , Retorna o valor sem arredondamento

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe076()
    Local aArea     := FWGetArea()
    Local cMensagem := ""
    Local nValBase  := 5.1785329
    Local nForcCima := 0
    Local nSemArred := 0
    Local nComArred := 0

    //Faz os arredondamentos
    nForcCima := Ceiling(nValBase)
    nSemArred := NoRound(nValBase, 2)
    nComArred := Round(nValBase, 2)

    //Monta a mensagem
    cMensagem += "Valor original: " + cValToChar(nValBase) + CRLF
    cMensagem += "For�ando para cima (Ceiling): " + cValToChar(nForcCima) + CRLF
    cMensagem += "Sem Arredondar (NoRound): " + cValToChar(nSemArred) + CRLF
    cMensagem += "Arredondando (Round): " + cValToChar(nComArred)
    FWAlertInfo(cMensagem, "Teste com Ceiling, Round e NoRound")

    FWRestArea(aArea)
Return
