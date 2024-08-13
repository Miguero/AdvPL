/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/20/fazendo-um-teste-condicional-com-iif-maratona-advpl-e-tl-304/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe304
Exemplo de estrutura de condicao com Iif
@type  Function
@author Atilio
@since 22/02/2023
@see https://tdn.totvs.com/display/tec/iif
@obs 

    Fun��o Iif
    Par�metros
        Express�o que ser� testada (tem que dar .T. ou .F.)
        Valor que ser� retornado se a express�o der .T.
        Valor que ser� retornado se a express�o der .F.
    Retorno
        Valor que ser� retornado depende da express�o passada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe304()
	Local aArea    := FWGetArea()
    Local nMesAtu  := Month(Date())
    Local nMesAniv := 7
    Local cMsg     := ""

    cMsg := Iif(nMesAtu == nMesAniv, "ANIVERSARIANTE", "AINDA NAO")
    FWAlertInfo(cMsg, "Teste de Iif")

    /*
    If nMesAtu == nMesAniv
        cMsg := "ANIVERSARIANTE"
    Else
        cMsg := "AINDA NAO"
    EndIf
    */

    /*
    nValor := Iif(A == B, Iif(B == C, 7, Iif(C == D, 4, 9)), 3)
    If A == B
        If B == C
            nValor := 7
        Else
            If C == D
                nValor := 4
            Else
                nValor := 9
            EndIf
        EndIf
    Else
        nValor := 3
    EndIf
    */  

    FWRestArea(aArea)
Return
