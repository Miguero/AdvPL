/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte09
Exemplo de como utilizar o operador & (E Comercial), para fazer uma macro execu��o / substitui��o
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/pages/viewpage.action?pageId=6063087
/*/

User Function zFonte09()
    Local aArea  := FWGetArea()
    Local nVar   := 10
    Local cTeste := "'Aaaa' + 'Bbbb'"
    Local cProgr := "FWAlertInfo"
    
    //Mostrando o conte�do da vari�vel com macro execu��o
    FWAlertInfo(&cTeste, "& Apenas vari�vel")

    //Executando uma fun��o
    &cProgr.("Atilio Sistemas", "& Apenas programa")

    //Executando uma express�o inteira
    &("FWAlertInfo('Mensagem de Teste', '& Express�o inteira')")

    FWRestArea(aArea)
Return
