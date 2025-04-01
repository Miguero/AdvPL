/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte06
Exemplo de como utilizar o operador ; (Ponto e V�rgula), para continuar a execu��o na pr�xima linha
@type Function
@author Atilio
@since 26/11/2022
/*/

User Function zFonte06()
    Local aArea   := FWGetArea()
    Local cTexto  := ""
    Local aDados  := {}

    //Demonstra a continua��o da linha na pr�xima atrav�s do ponto e v�rgula
    cTexto := "O rato " + ;
        "roeu a roupa " + ;
        "do rei de Roma"
    FWAlertInfo(cTexto, "Conte�do da vari�vel cTexto")

    //Cria um array com v�rios elementos
    aDados := { ;
        "terminaldeinformacao.com", ;
        "autumncodemaker.com", ;
        "atiliosistemas.com" ;
    }
    FWAlertInfo("Tamanho do array: " + cValToChar(Len(aDados)), "Vari�vel aDados")

    FWRestArea(aArea)
Return
