/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte08
Exemplo de como utilizar o operador $ (cifr�o), para ver se um conte�do texto est� contido em outro
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte08()
    Local aArea  := FWGetArea()
    Local cLetra := "a"
    Local cNome  := "ATILIO"

    //Se a letra estiver "contida" na vari�vel do nome
    If cLetra $ cNome
        FWAlertInfo("A letra esta contida no Nome", "Teste 1")
    EndIf

    //Se a letra (tudo mai�scula) estiver "contida" na vari�vel do nome (tudo mai�scula)
    If Upper(cLetra) $ (cNome)
        FWAlertInfo("A letra esta contida no Nome (vari�veis tudo mai�sculas)", "Teste 2")
    EndIf

    FWRestArea(aArea)
Return
