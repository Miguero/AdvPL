/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/19/buscando-um-caractere-ou-um-codigo-ascii-com-as-funcoes-chr-e-asc-maratona-advpl-e-tl-042/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe042
Exemplo de fun��o que busca o c�digo ASCII de um caractere assim como informa o caractere de um c�digo ASCII
@type Function
@author Atilio
@since 29/11/2022
@see https://tdn.totvs.com/display/tec/Asc e https://tdn.totvs.com/display/tec/Chr
@obs 
    Fun��o Asc
    Par�metros
        + cString   , Caractere , Indica o caractere que ser� buscado o c�digo ASCII
    Retorno
        + nRet      , Num�rico  , Retorna o n�mero do caractere da tabela ASCII (0 � 255)

    Fun��o Chr
    Par�metros
        + nCodigo   , Num�rico  , Indica o n�mero do caractere na tabela ASCII (0 � 255)
    Retorno
        + cRet      , Caractere , Retorna o caractere respectivo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe042()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""
    Local cEnter     := ""
    Local cLetra     := ""
    Local nCaractere := ""

    //O Enter, ser� os c�digos ASCII 13 + 10, � o mesmo que utilizar a constante CRLF
    cEnter := Chr(13) + Chr(10)

    //Busca o c�digo ASCII da letra D
    cLetra     := "D"
    nCaractere := Asc(cLetra)

    //Monta a mensagem
    cMensagem := "Testes realizados com Chr e Asc" + cEnter
    cMensagem += "A letra '" + cLetra + "' tem o c�digo '" + cValToChar(nCaractere) + "' na tabela ASCII" + CRLF
    cMensagem += "Mais um teste apenas quebrando a linha"

    //Mostra o resultado
    FWAlertInfo(cMensagem, "Resultado")

    FWRestArea(aArea)
Return
