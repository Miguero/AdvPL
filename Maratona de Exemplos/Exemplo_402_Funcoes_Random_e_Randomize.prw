/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/08/gerando-valores-randomicos-com-random-e-randomize-maratona-advpl-e-tl-402/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe402
Gera valores randomicos entre um minimo e um m�ximo
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/Random e https://tdn.totvs.com/display/tec/Randomize
@obs 
    Fun��o Random
    Par�metros
        + nMinimo     , Num�rico     , Menor valor a se considerar
        + nMaximo     , Num�rico     , Maior valor a se considerar
    Retorno
        + nRet        , Num�rico     , Valor gerado entre o nMinimo e nMaximo
    
    Fun��o Randomize
    Par�metros
        + nMinimo     , Num�rico     , Menor valor a se considerar
        + nMaximo     , Num�rico     , Maior valor a se considerar
    Retorno
        + nRet        , Num�rico     , Valor gerado entre o nMinimo e nMaximo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe402()
    Local aArea     := FWGetArea()
    Local nValor1   := 0
    Local nValor2   := 0

    //Gera um valor randomico
    nValor1 := Random(0, 500)
    FWAlertInfo("Valor gerado �: " + cValToChar(nValor1), "Teste Random")

    //Gera um valor randomico
    nValor2 := Randomize(0, 500)
    FWAlertInfo("Valor gerado �: " + cValToChar(nValor2), "Teste Randomize")

    FWRestArea(aArea)
Return
