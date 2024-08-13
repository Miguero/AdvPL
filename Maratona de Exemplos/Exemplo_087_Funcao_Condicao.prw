/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/03/buscando-valores-de-parcelas-com-condicao-de-pagamento-usando-condicao-maratona-advpl-e-tl-087/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe087
Exemplo de como fun��o que monta as parcelas que ser�o geradas conforme a condi��o de pagamento informada
@type Function
@author Atilio
@since 09/12/2022
@see https://tdn.totvs.com.br/pages/releaseview.action?pageId=6070765
@obs 
    Fun��o Condicao
    Par�metros
        + nValTot    , Num�rico        , Valor total que ir� gerar as parcelas
        + cCond      , Caractere       , C�digo da condi��o de pagamento
        + nValIpi    , Num�rico        , Valor do IPI destacado
        + dData0     , Data            , Data inicial a considerar o desdobramento
        + nValSolid  , Num�rico        , Valor do ICMS solid�rio
        + aImpVar    , Array           , Array com a sigla e valor dos impostos para outros pa�ses
        + aE4        , Array           , Array com dados similares a SE4
        + nAcrescimo , Num�rico        , Valor do acr�scimo
        + nInicio3   , Num�rico        , Intervalo entre duplicatas (SIGALOJA)
        + aDias3     , Array           , Dias para vencimento das duplicatas (SIGALOJA)
    Retorno
        + aVenc         , Array        , Array com os valores e vencimentos das parcelas (posi��o [1] ser� o valor e posi��o [2] ser� a data de vencimento)

    Para ver os tipos de condi��es de pagamento, veja em: https://centraldeatendimento.totvs.com/hc/pt-br/articles/360017468312-MP-FAT-Condi%C3%A7%C3%B5es-de-Pagamento

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe087()
    Local aArea     := FWGetArea()
    Local nValor    := 1000
    Local cCondPag  := "C02"
    Local dDataIni  := Date()
    Local aDupl     := {}
    
    //Aciona a fun��o condi��o, para buscar as duplicatas com os vencimentos e valores
    aDupl := Condicao(nValor, cCondPag, , dDataIni, )
    FWAlertInfo("Existe(m) " + cValToChar(Len(aDupl)) + " parcela(s)", "Teste Condicao")

    FWRestArea(aArea)
Return
