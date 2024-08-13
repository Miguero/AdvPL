/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/17/atualizando-informacoes-atraves-da-msexecauto-maratona-advpl-e-tl-360/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe360
Executa uma rotina de forma autom�tica
@type Function
@author Atilio
@since 26/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=566489232
@obs 
    Fun��o MsExecAuto
    Par�metros
        + Bloco de c�digo que ser� executado
        + Par�metros (1 a 15) que ser�o passados na rotina
    Retorno
        Fun��o n�o tem Retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe360()
    Local aArea         := FWGetArea()
    Local aDados        := {}
    Local lAutomatico   := IsBlind()
    Local cPastaErro := '\x_logs\'
	Local cNomeErro  := ''
	Local cTextoErro := ''
	Local aLogErro   := {}
	Local nLinhaErro := 0
    Private lMsErroAuto := .F.

    //Se for autom�tico sem tela, declara outras vari�veis para n�o exibir a tela
    If lAutomatico
        Private lMSHelpAuto     := .T.
        Private lAutoErrNoFile  := .T.
    EndIf

    //Adiciona os campos
    aAdd(aDados, {"B1_COD",    "F0001",   Nil})
    aAdd(aDados, {"B1_DESC",   "Teste",   Nil})
    aAdd(aDados, {"B1_TIPO",   "PA",      Nil})
    aAdd(aDados, {"B1_UM",     "KG",      Nil})
    aAdd(aDados, {"B1_LOCPAD", "01",      Nil})
    aAdd(aDados, {"B1_GRUPO",  "G001",    Nil})

    //Chama a inclus�o
    MsExecAuto({|x, y| MATA010(x, y)}, aDados, 3)

    //Se houve erro, mostra a mensagem
    If lMsErroAuto
        //Se for autom�tico, ir� gravar o log dentro da Protheus Data
        If lAutomatico
            cPastaErro := '\x_logs\'
            cNomeErro  := 'erro_sb1_' + dToS(Date()) + '_' + StrTran(Time(), ':', '-') + '.txt'

            //Se a pasta de erro n�o existir, cria ela
            If ! ExistDir(cPastaErro)
                MakeDir(cPastaErro)
            EndIf

            //Pegando log do ExecAuto, percorrendo e incrementando o texto
            aLogErro := GetAutoGRLog()
            For nLinhaErro := 1 To Len(aLogErro)
                cTextoErro += aLogErro[nLinhaErro] + CRLF
            Next

            //Criando o arquivo txt e incrementa o log
            MemoWrite(cPastaErro + cNomeErro, cTextoErro)

        //Sen�o, exibe a tela de erro
        Else
            MostraErro()
        EndIf

    Else
        FWAlertSuccess("Produto incluido com sucesso", "Sucesso no ExecAuto")
    EndIf

    FWRestArea(aArea)
Return
