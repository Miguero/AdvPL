/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/06/executando-uma-funcao-se-estiver-compilada-com-execblock-e-existblock-maratona-advpl-e-tl-156/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe156
Valida se uma fun��o existe e com a possibilidade de executar
@type Function
@author Atilio
@since 18/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814883 e https://tdn.totvs.com/display/public/framework/ExistBlock+-+Verifica+ponto+de+entrada+existente
@obs 
    Fun��o ExecBlock
    Par�metros
        + cNomePE      , Caractere   , Nome da User Function / ponto de entrada
        + lVarEnv      , L�gico      , Indica se as vari�veis private e public ser�o restauradas
        + lSet         , L�gico      , Indica se os Sets do sistema ser�o restaurados
        + uParam       , Indefinido  , Define as vari�veis que v�o ficar dispon�veis na fun��o executada atrav�s do PARAMIXB
    Retorno
        + uRetorno     , Indefinido  , Assume o retorno da User Function executada

    Fun��o ExistBlock
    Par�metros
        + cNomePE      , Caractere   , Nome da User Function / ponto de entrada
        + lLocaliz     , L�gico      , Indica se � espec�fico para o mercado internacional (.T.) ou para qualquer ambiente inclusive o Brasil (.F.)
        + lForced      , L�gico      , Indica se ser� executado (.T.) mesmo em S�rie 3, Pyme ou Start ou se n�o ser� (.F.) nesses ambientes
    Retorno
        + lExiste      , L�gico      , .T. se encontrou ou .F. se n�o encontrou

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe156()
    Local aArea     := FWGetArea()
    Local xRetorno  := ""
    
    //Se a fun��o estiver compilada no ambiente
    If ExistBlock("zExe084")
        xRetorno := ExecBlock("zExe084", /*lVarEnv*/, /*lSet*/, {"Daniel", 29, Date()})

        FWAlertInfo("O retorno �: " + cValToChar(xRetorno), "Teste com ExistBlock e ExecBlock")
    EndIf

    FWRestArea(aArea)
Return
