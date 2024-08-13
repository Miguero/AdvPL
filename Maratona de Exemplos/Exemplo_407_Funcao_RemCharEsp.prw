/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/10/removendo-pontuacoes-com-a-remcharesp-maratona-advpl-e-tl-407/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe407
Remove pontua��es de uma string, por exemplo: ., []()-
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o RemCharEsp
    Par�metros
        Recebe a string a ser verificado
    Retorno
        A string sem pontua��es

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe407()
    Local aArea     := FWGetArea()
    Local cFrase    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    Local cFraseNov := ""
    
    //Remove as pontuacoes e exibe: ., []()-
    cFraseNov := RemCharEsp(cFrase)
    FWAlertInfo("A frase ficou " + cFraseNov, "Teste RemCharEsp")

    FWRestArea(aArea)
Return
