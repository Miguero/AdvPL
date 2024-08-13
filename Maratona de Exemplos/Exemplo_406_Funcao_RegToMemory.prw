/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/10/colocando-uma-tabela-em-memoria-com-a-regtomemory-maratona-advpl-e-tl-406/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe406
Deixa uma tabela em mem�ria para edi��o (M->)
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814879
@obs 
    Fun��o RegToMemory
    Par�metros
        + cAlias     , Caractere     , Alias da Tabela
        + lInc       , L�gico        , .T. se for inclus�o ou .F. se for altera��o
        + lDic       , L�gico        , .T. se ir� se basear no dicion�rio de dados da SX3
        + lInitPad   , L�gico        , .T. se ir� iniciliazar os campos em uma opera��o de inclus�o baseado no lDic
        + cStack     , Caractere     , Compatibilidade / Reservado
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe406()
    Local aArea     := FWGetArea()
    Local cCampo    := ""

    //Inicia o controle de transa��es
    Begin Transaction
        //Joga a tabela para a mem�ria (M->)
        RegToMemory(;
            "SA1",;   // cAlias - Alias da Tabela
            .T.,;     // lInc   - Define se � uma opera��o de inclus�o ou atualiza��o
            .F.;      // lDic   - Define se ir� inicilizar os campos conforme o dicion�rio
        )

        //Preenche o estado e o c�digo da cidade
        M->A1_EST     := "SP"
        M->A1_COD_MUN := "06003"

        //Chama gatilho caso exista
        cCampo := "A1_COD_MUN"
        If ExistTrigger(cCampo)
            RunTrigger( ;
                1,;           //nTipo (1=Enchoice; 2=GetDados; 3=F3)
                Nil,;         //Linha atual da Grid quando for tipo 2
                Nil,;         //N�o utilizado
                ,;            //Objeto quando for tipo 1
                cCampo;       //Campo que dispara o gatilho
            )
        EndIf

        //Mostra a cidade preenchida conforme gatilho disparado
        FWAlertInfo("Cidade: " + M->A1_MUN, "Teste de ExistTrigger e RunTrigger")

        //Cancela a transa��o para n�o incluir nenhum registro
        DisarmTransaction()
    End Transaction

    FWRestArea(aArea)
Return
