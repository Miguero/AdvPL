/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/03/criando-travas-de-execucao-com-lockbyname-e-unlockbyname-maratona-advpl-e-tl-333/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe333
Trava a execu��o de uma rotina caso outro usu�rio j� tenha come�ado
@type Function
@author Atilio
@since 12/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814894 e https://tdn.totvs.com/pages/releaseview.action?pageId=6814897
@obs 

    Fun��o LockByName
    Par�metros
        + cName    , Caractere , Define o nome do sem�foro que ser� validado ou criado
        + lEmpresa , L�gico    , Define se o controle ser� por empresa
        + lFilial  , L�gico    , Define se o controle ser� por filial
    Retorno
        + lCreated , L�gico    , .T. se criou o sem�foro com sucesso ou .F. se j� existia o sem�foro

    Fun��o UnlockByName
    Par�metros
        + cName    , Caractere , Define o nome do sem�foro que ser� validado ou criado
        + lEmpresa , L�gico    , Define se o controle ser� por empresa
        + lFilial  , L�gico    , Define se o controle ser� por filial
    Retorno
        Fun��o na� tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe333()
    Local aArea     := FWGetArea()

    //Se n�o conseguir travar, quer dizer que algum usu�rio j� esta executando
    If ! LockByName("zExe333_lock", .T., .F.)
        FWAlertError("Aten��o, outro usu�rio j� est� executando essa rotina!", "Falha no Lock")

    //Sen�o, aciona o processamento das rotinas
    Else
        Processa({|| fSuaRotina() }, "Exportando...")

        //Aciona o destravamento do lock
        UnLockByName("zExe333_lock", .T., .F.)
    EndIf


    FWRestArea(aArea)
Return

Static Function fSuaRotina()
    FWAlertInfo("Em constru��o", "Teste")
Return
