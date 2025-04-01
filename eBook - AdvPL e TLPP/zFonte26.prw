/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe043
Exemplo de fun��o que busca um elementro dentro de um Array
@type Function
@author Atilio
@since 29/11/2022
@see https://tdn.totvs.com/display/tec/AScan
/*/

User Function zExe043()
    Local aArea      := FWGetArea()
    Local aDadosMono  := {}
    Local aDadosMult  := {}
    Local nPos    := 0

    //Adicionando elementos no Array
    aAdd(aDadosMono, "Daniel")
    aAdd(aDadosMono, "Atilio")
    aAdd(aDadosMono, "Jos�")
    aAdd(aDadosMono, "Maria")
    aAdd(aDadosMono, "Jo�o")
    
    //Procurando pelo nome Atilio
    nPos := aScan(aDadosMono, {|x| AllTrim(Upper(x)) == "ATILIO"})
    If nPos > 0
        FWAlertInfo("Atilio encontrado, na posi��o " + cValToChar(nPos) + ".", "Teste 1")
    Else
        FWAlertInfo("Atilio n�o foi encontrado!", "Teste 1")
    EndIf

    //Adicionando elementos no Array (c�digo, nome e idade)
    aAdd(aDadosMult, {"0001", "Daniel",   23})
    aAdd(aDadosMult, {"0002", "Atilio",   33})
    aAdd(aDadosMult, {"0003", "Jos�",     43})
    aAdd(aDadosMult, {"0004", "Maria",    53})
    aAdd(aDadosMult, {"0005", "Jo�o",     63})

    //Procurando pelo nome Hudson
    nPos := aScan(aDadosMult, {|x| AllTrim(Upper(x[2])) == "MARIA"})
    If nPos > 0
        FWAlertInfo("Maria encontrada, na linha " + cValToChar(nPos) + ".", "Teste 2")
    Else
        FWAlertInfo("Maria n�o foi encontrado!", "Teste 2")
    EndIf

    FWRestArea(aArea)
Return
