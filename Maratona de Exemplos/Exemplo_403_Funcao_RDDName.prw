/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/08/retorna-o-nome-do-tipo-da-conexao-usada-com-o-banco-atraves-da-rddname-maratona-advpl-e-tl-403/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe403
Retorna o nome da conex�o usada
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/RDDName
@obs 
    Fun��o RDDName
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + cRet        , Caracere     , Nome do RDD utilizado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe403()
    Local aArea     := FWGetArea()
    Local cConexao  := ""

    //Busca a conex�o RDD e mostra
    cConexao := RDDName()
    FWAlertInfo("O tipo de conex�o � " + cConexao, "Teste RDDName")

    FWRestArea(aArea)
Return
