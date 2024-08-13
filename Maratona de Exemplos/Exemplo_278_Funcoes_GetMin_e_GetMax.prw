/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/07/buscando-conteudos-de-parametros-com-getmv-e-supergetmv-maratona-advpl-e-tl-279/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe278
Retorna o primeiro ou o �ltimo elemento de um array (ordenando ele de forma crescente)
@type  Function
@author Atilio
@since 21/02/2023
@obs 

    Fun��o GetMin
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna o primeiro elemento encontrado no Array

    Fun��o GetMax
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna o �ltimo elemento encontrado no Array
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe278()
    Local aArea     := FWGetArea()
    Local aNomes    := {}
    Local cPrimeiro := ""
    Local cUltimo   := ""

    //Adiciona elementos no Array
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Jos�")

    //Busca o primeiro
    cPrimeiro := GetMin(aNomes)

    //Busca o �ltimo
    cUltimo := GetMax(aNomes)

    //Exibe uma mensagem
    FWAlertInfo("O primeiro nome � '" + cPrimeiro + "', e o �ltimo nome � '" + cUltimo + "'", "Teste GetMin e GetMax")

    FWRestArea(aArea)
Return
