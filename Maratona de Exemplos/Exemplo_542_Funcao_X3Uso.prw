/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/17/transformando-um-no-de-xml-em-array-com-xmlnode2arr-maratona-advpl-e-tl-543/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe542
Valida se um campo esta marcado com a op��o Usado
@type Function
@author Atilio
@since 07/04/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815021
@obs 

    Fun��o X3Uso
    Par�metros
        + cUsado    , Caractere  , Conte�do do campo X3_USADO
        + nModulo   , Num�rico   , Define o m�dulo que ser� usado para validar o uso do campo (se n�o for informado busca do m�dulo logado atualmente)
    Retorno
        + lRet      , L�gico     , Retorna .T. se o campo estiver marcado como Usado ou .T. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe542()
    Local aArea      := FWGetArea()
    Local cCampo     := ""
    Local cUsado     := ""

    //Define o campo e busca a informa��o de usado
    cCampo := "B1_GRUPO"
    cUsado := GetSX3Cache(cCampo, "X3_USADO")
    
    //Valida se o campo ta sendo usado nas telas do sistema
    If X3Uso(cUsado)
        FWAlertSuccess("O campo esta marcado como Usado", "Teste X3Uso")
    Else
        FWAlertError("Campo n�o sendo Usado", "Teste X3Uso")
    EndIf

    FWRestArea(aArea)
Return
