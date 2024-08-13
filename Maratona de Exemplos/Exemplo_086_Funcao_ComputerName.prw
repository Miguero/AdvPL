/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/02/buscando-o-nome-da-maquina-com-computername-maratona-advpl-e-tl-086/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe086
Exemplo de como buscar o nome do computador que esta executando o Protheus
@type Function
@author Atilio
@since 09/12/2022
@see https://tdn.totvs.com/display/tec/ComputerName
@obs 
    Fun��o ComputerName
    Retorno
        + cRet     , Caractere    , Nome da m�quina

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe086()
    Local aArea     := FWGetArea()
    Local cNomePC   := ""

    //Busca o nome do computador e mostra em uma mensagem
    cNomePC := ComputerName()
    FWAlertSuccess("O nome do computador � " + cNomePC, "Teste ComputerName")

    FWRestArea(aArea)
Return
