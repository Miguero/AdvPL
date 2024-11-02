/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/10/29/como-abrir-um-arquivo-ctree-via-advpl-ti-responde-0094/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} zVid0094
Exemplo de como abrir um arquivo dtc (ctree) via programa��o
@type user function
@author Atilio
@since 19/01/2024
/*/

User Function zVid0094()
    Local aArea     := FWGetArea()
    Local cRDD      := "CTREECDX"
    Local cAliasArq := GetNextAlias()
    Local cArquiAtu := "\x_temp\arquivo.dtc"
    Local cMensagem := ""

    //Somente se o arquivo existir
    If File(cArquiAtu)

        //Abre o arquivo CTREE
        DbUseArea(.T., cRDD, cArquiAtu, cAliasArq, .F., .F.)

        //Se tiver dados, exibe uma mensagem
        If ! (cAliasArq)->(EoF())
            cMensagem := "Arquivo " + cArquiAtu + " aberto com sucesso!" + CRLF + CRLF
            cMensagem += "Agora voc� pode fazer la�os de repeti��o e usar comandos como DbSkip." + CRLF + CRLF
            cMensagem += "Na primeira linha, tem essa informa��o: " + (cAliasArq)->X3_CAMPO + CRLF
            ShowLog(cMensagem)

        //Sen�o, avisa que n�o encontrou informa��es
        Else
            FWAlertInfo("N�o tem dados!", "Arquivo: " + cArquiAtu)
        EndIf
        (cAliasArq)->(DbCloseArea())
    EndIf

    FWRestArea(aArea)
Return
