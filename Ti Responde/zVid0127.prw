/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/02/20/como-alterar-os-acessos-de-um-usuario-em-tempo-de-execucao-ti-responde-0127/ 
    
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function ChkExec
Ponto de Entrada acionado ao clicar em alguma op��o no menu
@type  Function
@author Atilio
@since 15/03/2024
@see https://tdn.totvs.com/display/public/framework/CHKEXEC+-+Dispara+ponto+de+entrada
/*/

User Function ChkExec()
    Local lContinua := .T.
	Local cCodUsr   := RetCodUsr()
    Local cFuncao   := Alltrim(Upper(PARAMIXB))

    //Faz as tratativas de acesso, conforme usu�rio e fun��o
    fTrataAcesso(cCodUsr, cFuncao)

Return lContinua

Static Function fTrataAcesso(cCodUsr, cFuncao)
    Local nPosicao := 2 //Vamos trocar o acesso n�mero 2, se pode alterar produtos - https://tdn.totvs.com/pages/releaseview.action?pageId=221546134
    Local cAntes   := ""
    Local cDepois  := ""

    //Se for o cadastro de produtos e o usu�rio for o Daniel Atilio
    If cFuncao == "MATA010()" .And. cCodUsr $ "000003;"
        //Pega Antes da segunda posi��o e depois
        cAntes  := Left(cAcesso, nPosicao - 1)
        cDepois := SubStr(cAcesso, nPosicao + 1)

        //Agora altera a vari�vel p�blica de acessos, definindo a posi��o como "N"
        cAcesso := cAntes + "N" + cDepois
    EndIf
Return
