/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/12/replicando-uma-string-atraves-da-replicate-maratona-advpl-e-tl-411/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe411
Replica uma string com um n�mero de vezes informado
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347047
@obs 

    Fun��o Replicate
    Par�metros
        Express�o caractere que ser� replicada
        N�mero de vezes para replicar
    Retorno
        String j� replicada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe411()
    Local aArea     := FWGetArea()
    Local cTeste    := ""

    //Replica "0" conforme tamanho do campo
    cTeste := Replicate("0", TamSX3("B1_COD")[1])
    FWAlertInfo("O resultado �: " + cTeste, "Teste 1 - Replicate")

    //Replica uma string 10 vezes
    cTeste := Replicate("*=-=", 10)
    FWAlertInfo("O resultado �: " + cTeste, "Teste 2 - Replicate")

    FWRestArea(aArea)
Return
