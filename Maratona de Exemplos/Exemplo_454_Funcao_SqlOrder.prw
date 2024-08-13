/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/03/calculando-uma-raiz-quadrada-atraves-da-sqrt-maratona-advpl-e-tl-455/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe454
Monta uma ordena��o para ser usada em Order By
@type Function
@author Atilio
@since 31/03/2023
@obs 

    Fun��o SqlOrder
    Par�metros
        Recebe a express�o da SIX (exemplo B1_FILIAL + B1_COD)
    Retorno
        Retorna a express�o para ser usada no SQL (exemplo B1_FILIAL, B1_COD)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe454()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Agora usa o �ndice 8
    DbSelectArea("SB1")
    SB1->(DbSetOrder(8))

    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice da SIX �: " + SB1->(IndexKey()) + CRLF
    cMensagem += "O �ndice para SQL �: " + SqlOrder(SB1->(IndexKey())) + CRLF
    FWAlertInfo(cMensagem, "Teste SqlOrder")

    FWRestArea(aArea)
Return
