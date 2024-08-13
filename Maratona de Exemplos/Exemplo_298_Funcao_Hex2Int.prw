/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/17/convertendo-hexa-para-decimal-com-a-hex2int-maratona-advpl-e-tl-298/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe298
Faz a convers�o de uma string com um valor hexadecimal para um valor num�rico
@type  Function
@author Atilio
@since 22/02/2023
@obs 

    Fun��o Hex2Int
    Par�metros
        Recebe a string com o valor hexadecimal
    Retorno
        Retorna o valor num�rico decimal

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe298()
    Local aArea      := FWGetArea()
    Local cHexa      := "4174696C696F"
    Local nValor     := 0
    
    //Convertendo e mostrando o resultado (de hexa para num�rico)
    nValor := Hex2Int(cHexa)
    FWAlertInfo("A convers�o de '" + cHexa + "' deu o valor '" + cValToChar(nValor) + "' ", "Exemplo Hex2Int")

    FWRestArea(aArea)
Return
