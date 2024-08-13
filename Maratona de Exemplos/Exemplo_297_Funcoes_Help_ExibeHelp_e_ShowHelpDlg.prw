/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/16/mostrando-avisos-com-help-exibehelp-e-showhelpdlg-maratona-advpl-e-tl-297/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe297
Exibe uma mensagem com problema e solu��o (ideal para utilizar em ExecAuto e valida��es MVC)
@type  Function
@author Atilio
@since 22/02/2023
@see https://tdn.totvs.com/display/tec/ShowHelpDlg
@obs 
    
    Fun��o Help
    Par�metros
        Nome da Fun��o
        Indica qual linha come�ar� a leitura do help
        T�tulo que ser� exibido do Help
        Busca pelo help gravado pelo nome do help
        Mensagem do Problema
        N�mero de Linhas do Problema
        Indica qual coluna come�ar� a leitura do help
        Compatibilidade
        Define se ir� mostrar em alguma dialog
        Altura da janela de help
        Largura da janela de help
        Define se ir� gravar um log (ideal para usar na MostraErro)
        Array com as linhas da solu��o do Problema
    Retorno
        N�o tem retorno

    Fun��o ExibeHelp
    Par�metros
        T�tulo que ser� exibido do Help
        Mensagem do Problema
        Mensagem da Solu��o
    Retorno
        N�o tem retorno

    Fun��o ShowHelpDlg
    Par�metros
        + cCabec     , Caractere     , T�tulo que ser� exibido do Help
        + aProbl     , Array         , Array com a mensagem de problema
        + nLinProbl  , Num�rico      , N�mero m�ximo de linhas que ser�o exibidas do problema
        + aSolucao   , Array         , Array com a mensagem de solu��o
        + nLinSoluc  , Num�rico      , N�mero m�ximo de linhas que ser�o exibidas da solu��o
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe297()
    Local aArea      := FWGetArea()
    Local cMensagem  := "N�o foi encontrado parametriza��o para executar a rotina"
    Local cSolucao   := "Cadastre o par�metro MV_X_PARAM"
    
    //Exibindo a mensagem com Help
    Help(, , "Help", , cMensagem, 1, 0, , , , , , {cSolucao})

    //Exibindo a mensagem com ExibeHelp
    ExibeHelp("Help", cMensagem, cSolucao)

    //Exibindo a mensagem com ShowHelpDlg
    ShowHelpDlg("Help", {cMensagem}, , {cSolucao})

    FWRestArea(aArea)
Return
