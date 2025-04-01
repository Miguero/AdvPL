/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte11
Exemplo de como utilizar os operadores de compara��o (==) e o por que de evitarmos o de atribui��o (=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte11()
    Local aArea   := FWGetArea()
    Local cVar    := "Atilio"
    
    //Demonstrando que o = � para atribui��o
    cVar = "Daniel"
    FWAlertInfo("cVar �: " + cVar, "= � Atribui��o!")

    //Logo ao usar em compara��o, erros estranhos podem ocasionar, como:
    If "ZZZZ" = "ZZZ"
        FWAlertInfo("Caiu dentro desse IF por causa de utilizar um �nico igual!", "'ZZZZ' � igual 'ZZZ' ???")
    EndIf

    //Portanto, o correto � como boa pr�tica usar := para atribui��es e o == para compara��es
    cVar := "Dan"
    If Upper(cVar) == "DAN"
        FWAlertInfo("Caiu no If do Exatamente Igual", "Agora sim")
    EndIf

    FWRestArea(aArea)
Return
