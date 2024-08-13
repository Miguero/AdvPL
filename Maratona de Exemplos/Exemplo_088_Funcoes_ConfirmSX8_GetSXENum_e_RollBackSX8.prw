/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/04/controle-de-numeracoes-usando-confirmsx8-getsxenum-e-rollbacksx8-maratona-advpl-e-tl-088/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe088
Exemplo de como buscar um c�digo sequencial de uma tabela, confirmar no banco ou estornar
@type Function
@author Atilio
@since 09/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889183 , https://tdn.totvs.com/pages/releaseview.action?pageId=24346933 e https://tdn.totvs.com/pages/releaseview.action?pageId=24347062
@obs 
    Fun��o GetSXENum
    Par�metros
        + cAlias        , Caractere    , Informa o alias da tabela
        + cCpoSx8       , Caractere    , Informa o nome do campo que ir� buscar o sequencial
        + cAliasSX8     , Caractere    , Informa o alias caso n�o seja utilizado o nome padr�o da tabela no sequenciamento (opcional)
        + nOrdem        , Num�rico     , Informa o n�mero do �ndice que ser� utilizado para verificar o sequenciamento da tabela (opcional)
    Retorno
        + cRet          , Caractere    , Retorna o conte�do sequencial encontrado

    Fun��o ConfirmSX8
    Par�metros
        + lPosConf      , L�gico       , Se passado .T. ser� validado se j� existe o c�digo gravado na tabela do Protheus
    Retorno
        N�o possui

    Fun��o RollBackSX8
    Par�metros
        N�o possui
    Retorno
        N�o possui



    Atualmente as numera��es ficam no License Server, antigamente eram as tabelas SXE e SXF (e mais antigamente a SX8)

    Outro ponto importante, em documenta��es citam a ConfirmSXE e RollBackSXE, por�m at� o momento da montagem desse exemplo
    essas das fun��es n�o veem nativas no RPO (se voc� der um inspetor de fun��es, ambas n�o ser�o encontradas), por esse motivo
    utilizamos a ConfirmSX8 e RollBackSX8

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe088()
    Local aArea     := FWGetArea()
    Local cCodigo   := ''

    //Iniciando o controle de transa��es    
    Begin Transaction

        //Pegando o �ltimo pedido de venda dispon�vel conforme a numera��o autom�tica
        cCodigo := GetSXENum('SC5', 'C5_NUM')
        
        //Perguntando se deseja confirmar esse c�digo, para confirmar e atualizar as tabelas de numera��o autom�tica
        If FWAlertYesNo("Deseja confirmar o c�digo " + cCodigo + "?", "Confirma?")
            ConfirmSX8()
        
        //Sen�o, volta a numera��o onde estava    
        Else
            RollBackSX8()
        EndIf
    End Transaction

    FWRestArea(aArea)
Return
