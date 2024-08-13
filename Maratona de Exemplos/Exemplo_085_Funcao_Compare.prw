/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/01/comparacao-de-duas-variaveis-inclusive-objeto-usando-compare-maratona-advpl-e-tl-085/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe085
Exemplo de como comparar duas vari�veis (inclusive objetos, arrays e blocos de c�digo)
@type Function
@author Atilio
@since 09/12/2022
@obs 
    Fun��o Compare
    Par�metros
        + Informa a vari�vel que ir� comparar (array, objeto, bloco de c�digo, num�rico, caractere, l�gico e data)
        + Informa a vari�vel que ser� comparada (array, objeto, bloco de c�digo, num�rico, caractere, l�gico e data)
        + Caso seja um array e voc� quiser ver qual a posi��o que esta diferente passe esse atributo com o @
    Retorno
        + Retorna .F. se houver diferen�a e .T. se estiver igual

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe085()
    Local aArea     := FWGetArea()
    Local oFont1
    Local oFont2
    Local aArray1   := {}
    Local aArray2   := {}
    Local nPosDif   := 0

    //Instancia a classe TFont em dois objetos
    oFont1 := TFont():New("Tahoma", , -12)
    oFont2 := TFont():New("Tahoma", , -12)

    //Compara os dois objetos
    If Compare(oFont1, oFont2)
        FWAlertSuccess("Os dois objetos s�o iguais", "Teste Compare com Objetos")
    Else
        FWAlertError("Os dois objetos s�o diferentes", "Teste Compare com Objetos")
    EndIf



    //Monta os dois arrays
    aAdd(aArray1, "Daniel")
    aAdd(aArray1, "Jo�o")
    aAdd(aArray1, "Maria")
    
    aAdd(aArray2, "Daniel")
    aAdd(aArray2, "Jos�")
    aAdd(aArray2, "Maria")
    
    //Compara os dois arrays
    If Compare(aArray1, aArray2, @nPosDif)
        FWAlertSuccess("Os dois arrays s�o iguais", "Teste Compare com Arrays")
    Else
        FWAlertError("Os dois arrays s�o diferentes, primeira diferen�a encontrada em " + cValToChar(nPosDif), "Teste Compare com Arrays")
    EndIf

    FWRestArea(aArea)
Return
