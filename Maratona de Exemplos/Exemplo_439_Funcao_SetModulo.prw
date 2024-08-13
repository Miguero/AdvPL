/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/26/buscando-a-ultima-pergunta-executada-com-a-setlastperg-maratona-advpl-e-tl-438/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe439
Altera o m�dulo em execu��o pela rotina
@type Function
@author Atilio
@since 30/03/2023
@obs 
    Fun��o SetModulo
    Par�metros
        Recebe o nome do m�dulo
        Recebe a sigla abreviada do m�dulo
    Retorno
        Retorna um Array com o backup de qual m�dulo estava sendo posi��o [1] sigla do m�dulo e [2] o n�mero do m�dulo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe439()
    Local aArea    := FWGetArea()
    Local aDados   := {}

    //Aciona a rotina para alterar o m�dulo
    aDados := SetModulo("SIGAEST", "EST")

    FWAlertInfo("Agora estou no m�dulo '" + cModulo + "', antes eu estava no '" + aDados[1] + "'!", "Teste SetModulo")

	FWRestArea(aArea)
Return
