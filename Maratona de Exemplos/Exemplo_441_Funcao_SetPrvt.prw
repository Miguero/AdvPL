/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/27/definindo-o-valor-de-um-parametro-de-pergunta-com-a-setmvvalue-maratona-advpl-e-tl-440/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe441
Cria vari�veis do escopo private atrav�s de uma fun��o
@type Function
@author Atilio
@since 31/03/2023
@obs 
    Fun��o SetPrvt
    Par�metros
        Recebe o nome das vari�veis separadas por v�rgula
    Retorno
        Retorna .T. se conseguiu criar as vari�veis ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe441()
    Local aArea    := FWGetArea()
    
    //Cria as vari�veis private
    SetPrvt("cBeluga,cOrca,cJubarte")

    //Aciona uma fun��o de exemplo que vai ter acesso a essas vari�veis
    fExemplo()

	FWRestArea(aArea)
Return

Static Function fExemplo()
    FWAlertInfo("Teste de cria��o de vari�veis com SetPrvt", "Teste SetPrvt")
Return
