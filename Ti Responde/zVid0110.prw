/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/12/24/como-atualizar-o-mv_spedurl-da-base-de-teste-automaticamente-via-codigo-fonte-ti-responde-0110/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function AfterLogin
P.E. Acionado logo ap�s fazer login no sistema
@type  Function
@author Atilio
@since 02/02/2024
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815186
/*/

User Function AfterLogin()
    Local aArea := FWGetArea()

    //Aciona a verifica��o da URL do TSS
    u_zVid0110()

    FWRestArea(aArea)
Return

/*/{Protheus.doc} zVid0110
Atualiza o par�metro MV_SPEDURL se estiver na base de testes
@type user function
@author Atilio
@since 02/02/2024
/*/

User Function zVid0110()
    Local aArea      := FWGetArea()
    Local cIniFile   := GetAdv97()
    Local cStrError  := "ERROR"
    Local cNomeBase  := ""
    Local cSpedURL   := ""
    Local cParametro := "MV_SPEDURL"
    Local cConteudo  := ""

    //Busca o nome da base na se��o "DbAccess"
    cNomeBase := GetPvProfString("DbAccess", "Alias", cStrError, cIniFile)

    //Se n�o encontrou ou deu erro, ai vamos buscar novamente mas agora ao inv�s de "DbAccess" vamos usar a se��o "TopConnect"
    If Empty(cNomeBase) .Or. cNomeBase == cStrError
        cNomeBase := GetPvProfString("TopConnect", "Alias", cStrError, cIniFile)
        cPasso    := "2"
    EndIf

    //Se n�o encontrou ou deu erro, ai vamos buscar novamente mas agora ao inv�s de "TopConnect" vamos usar a se��o "TotvsDBAccess"
    If Empty(cNomeBase) .Or. cNomeBase == cStrError
        cNomeBase := GetPvProfString("TotvsDBAccess", "Alias", cStrError, cIniFile)
        cPasso    := "3"
    EndIf

    //Se mesmo assim n�o encontrou, vamos buscar direto do ambiente
    If Empty(cNomeBase) .Or. cNomeBase == cStrError
        cNomeBase := GetSrvProfString("DBAlias", cStrError)
        cPasso    := "4"
    EndIf

    //Se for a base de Homologa��o / Testes
    If cNomeBase == "BASE_TST"
        //Define qual � a URL do TSS de Testes
        cSpedURL := "http://192.168.x.x:8280"

        //Busca a URL atual
        cConteudo := GetMV(cParametro)

        //Se o conte�do do par�metro for diferente do esperado
        If ! cConteudo == cSpedUrl
            PutMV(cParametro, cSpedUrl)
            FWAlertInfo("Par�metro <strong>" + cParametro + "</strong>, teve o conte�do atualizado para <strong>" + cSpedURL + "</strong>", "Base " + cNomeBase)
        EndIf
    EndIf

    FWRestArea(aArea)
Return
