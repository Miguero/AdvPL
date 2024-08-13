/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/17/buscando-todas-as-posicoes-encontradas-em-um-texto-com-a-funcao-cscan-maratona-advpl-e-tl-101/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe101
Retorna um array com todas as posi��es encontradas de um texto
@type Function
@author Atilio
@since 12/12/2022
@obs 
    Fun��o cScan
    Par�metros
        + Texto da string
        + Caractere a ser procurado
    Retorno
        + Array com as posi��es do caractere encontrado na string

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe101()
    Local aArea     := FWGetArea()
    Local cFrase    := "O rato roeu a roupa do Rei de roma, a rainha com raiva resolveu remendar. Num ninho de mafagafos, cinco mafagafinhos h�! Quem os desmafagafiz�-los, um bom desmafagafizador ser�."
    Local cBusca    := "a"
    Local aDados    := {}

    //Busca todas as repeti��es
    aDados := cScan(cFrase, cBusca)
    FWAlertInfo("N�mero de vezes que a busca se repete: " + cValToChar(Len(aDados)), "Teste cScan")

    FWRestArea(aArea)
Return
