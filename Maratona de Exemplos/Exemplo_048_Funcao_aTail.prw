/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/25/buscando-o-ultimo-elemento-de-um-array-com-a-funcao-atail-maratona-advpl-e-tl-048/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe048
Exemplo de fun��o que retorna o �ltimo elemento de um array
@type Function
@author Atilio
@since 30/11/2022
@see https://tdn.totvs.com/display/tec/ATail
@obs 
    Fun��o aTail
    Par�metros
        + aArray    , Array        , Indica o Array que ser� avaliado
    Retorno
        + xRet      , Indefinido   , Retorna o �ltimo elemento encontrado do Array

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe048()
    Local aArea      := FWGetArea()
    Local aNomes     := {}
    Local cUltimo    := ""

    //Adiciona alguns elementos no Array
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Atilio")
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    aAdd(aNomes, "Jos�")

    //Busca o �ltimo nome do array
    cUltimo := aTail(aNomes)
    FWAlertInfo("O �ltimo elemento do array � " + cUltimo, "Exemplo aTail")

    FWRestArea(aArea)
Return
