/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/28/comparando-se-dois-arrays-tem-diferencas-com-diffarray-e-admdiffarray-maratona-advpl-e-tl-142/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe142
Retorna se h� diferen�as entre dois arrays
@type Function
@author Atilio
@since 16/12/2022
@obs 
    Fun��o DiffArray
    Par�metros
        + Array a ser comparado (monodimensional)
        + Array de compara��o (monodimensional)
    Retorno
        + Retorna .F. se s�o iguais ou .T. se houver diferen�as

    Fun��o AdmDiffArray
    Par�metros
        + Array a ser comparado (mono ou multidimensional)
        + Array de compara��o (mono ou multidimensional)
    Retorno
        + .F. se s�o iguais ou .T. se houver diferen�as

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe142()
    Local aArea       := FWGetArea()
    Local aPessoas1   := {}
    Local aPessoas2   := {}

    //Adiciona dados em ambos os arrays (monodimensional)
    aAdd(aPessoas1, "Daniel")
    aAdd(aPessoas1, "Jo�o")
    aAdd(aPessoas1, "Maria")

    aAdd(aPessoas2, "Daniel")
    aAdd(aPessoas2, "Maria")
    aAdd(aPessoas2, "Jos�")

    //Faz a compara��o de arrays monodimensionais
    If DiffArray(aPessoas1, aPessoas2)
        FWAlertError("H� diferen�as entre os dois arrays", "Teste com DiffArray")
    Else
        FWAlertSuccess("N�o h� diferen�as entre os dois arrays", "Teste com DiffArray")
    EndIf
    



    //Adiciona dados em ambos os arrays (multidimensional)
    aPessoas1 := {}
    aAdd(aPessoas1, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aPessoas1, {"Joao",   sToD("19910131"), "Agudos"})
    aAdd(aPessoas1, {"Maria",  sToD("19921231"), "Piratininga"})

    aPessoas2 := {}
    aAdd(aPessoas2, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aPessoas2, {"Joao",   sToD("19910131"), "Agudos"})
    aAdd(aPessoas2, {"Maria",  sToD("19921231"), "Piratininga"})

    //Faz a compara��o de arrays multidimensionais
    If AdmDiffArray(aPessoas1, aPessoas2)
        FWAlertError("H� diferen�as entre os dois arrays", "Teste com AdmDiffArray")
    Else
        FWAlertSuccess("N�o h� diferen�as entre os dois arrays", "Teste com AdmDiffArray")
    EndIf

    FWRestArea(aArea)
Return
