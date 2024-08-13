/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/10/buscando-informacoes-das-empresas-com-a-fwloadsm0-maratona-advpl-e-tl-227/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe226
Abre uma tela para sele��o de filial
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FwListBranches
@obs 

    Fun��o FWListBranches
    Par�metros
        + lCheckUser    , L�gico      , Indica se ir� exibir apenas as filiais que o usu�rio tem acesso
        + lAllEmp       , L�gico      , Indica se ir� exibir todas as empresas do grupo ou apenas da empresa logada
        + lOnlySelect   , L�gico      , Indica se ir� considerar todos os registros apresentados ou apenas o selecionado
        + aRetInfo      , Array       , Indica os campos que ser�o retornados como SM0_CODFIL; SM0_NOMRED e SM0_CGC (para a lista completa consulte o link acima do TDN)
    Retorno
        + aInfoRet      , Array       , Informa��es da filial escolhida conforme aRetInfo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe226()
    Local aArea := FWGetArea()
    Local aSelec := {}

    //Chama a tela para selecionar filial
    aSelec := FWListBranches(, , .T., {"FLAG", "SM0_CODFIL", "SM0_NOMRED", "SM0_CGC"})

    //Se foi selecionado
    If Len(aSelec) > 0
        FWAlertInfo("Filial selecionada: " + aSelec[1][2], "Teste FWListBranches")
    EndIf
    
    FWRestArea(aArea)
Return
