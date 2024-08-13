/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/11/operador-para-acessar-atributos-e-metodos-de-um-objeto-classe-maratona-advpl-e-tl-003/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe003
Exemplo de como utilizar o operador : (Dois Pontos), para acessar um atributo ou m�todo de uma classe
@type Function
@author Atilio
@since 26/11/2022
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe003()
    Local aArea  := FWGetArea()
    Local oFont
    
    //Instancia uma classe na vari�vel oFont atrav�s do m�todo New
    oFont := TFont():New('Arial', , -16)

    //Acessando e modificando um atributo
    FWAlertInfo("Conte�do do atributo Negrito: " + cValToChar(oFont:Bold), "Antes")
    oFont:Bold := .T.
    FWAlertInfo("Conte�do do atributo Negrito: " + cValToChar(oFont:Bold), "Depois")

    FWRestArea(aArea)
Return
