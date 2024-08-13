/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/24/operadores-e-para-comparacao-e-atribuicao-respectivamente-maratona-advpl-e-tl-016/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe016
Exemplo de como utilizar os operadores de compara��o (==) e o por que de evitarmos o de atribui��o (=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs Nesse artigo � explorado um pouco sobre esse conte�do https://terminaldeinformacao.com/2020/05/01/voce-sabia-que-tem-diferenca-entre-e-em-advpl/

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe016()
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
