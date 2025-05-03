/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/04/10/como-usar-as-funcoes-putglbvalue-e-getglbvalue-ti-responde-0141/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVid141P
Exemplo de cria��o de vari�vel p�blica
@type  Function
@author Atilio
@since 01/04/2024
/*/

User Function zVid141P()
    Local aArea := FWGetArea()

    //Cria uma vari�vel p�blica na mem�ria
    PutGlbValue("cXNomSobr", "Daniel Atilio")

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function zVid141G
Exemplo de busca de vari�vel p�blica
@type  Function
@author Atilio
@since 01/04/2024
/*/

User Function zVid141G()
    Local aArea := FWGetArea()
    Local cNome := ""

    //Busca a vari�vel p�blica na mem�ria
    cNome := GetGlbValue("cXNomSobr")

    //Mostra uma mensagem
    FWAlertInfo("O nome � " + cNome, "Teste GetGlbValue")

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function zVid141G
Exemplo de busca de quantidade de segundos desde a �ltima atualiza��o da vari�vel p�blica
@type  Function
@author Atilio
@since 01/04/2024
/*/

User Function zVid141T()
    Local aArea     := FWGetArea()
    Local nSegundos := 0

    //Busca o tempo
    nSegundos := TimeGlbValue("cXNomSobr")

    //Mostra uma mensagem
    FWAlertInfo("A quantidade de segundos � " + cValToChar(nSegundos), "Teste TimeGlbValue")

    FWRestArea(aArea)
Return
