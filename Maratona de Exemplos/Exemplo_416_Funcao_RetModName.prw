/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/15/armazenando-as-respostas-de-parametros-em-um-array-com-a-retmvpar-maratona-advpl-e-tl-417/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe416
Retorna os m�dulos do sistema
@type Function
@author Atilio
@since 22/02/2023
@obs 

    Fun��o RetModName
    Par�metros
        Define se � para listar tamb�m o Configurador (.T.) ou n�o (.F.)
    Retorno
        Retorna um array com todos os m�dulos do sistema

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe416()
    Local aArea      := FWGetArea()
    Local aModulos   := {}

    //Busca o nome do m�dulo logado
    aModulos := RetModName(.T.)

    //Exibe uma mensagem de teste
    FWAlertInfo("Foi encontrado " + cValToChar(Len(aModulos)) + " modulo(s) ", "Teste RetModName")

    FWRestArea(aArea)
Return
