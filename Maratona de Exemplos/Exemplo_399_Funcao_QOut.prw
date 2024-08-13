/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/06/quebrando-um-texto-para-um-array-conforme-delimitacao-qbtexto-maratona-advpl-e-tl-398/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe399
Mostra uma mensagem no console.log do AppServer
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/QOut
@obs 

    Fun��o QOut
    Par�metros
        + cText     , Caractere      , Mensagem a ser exibida
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe399()
    Local aArea     := FWGetArea()
    Local cFrase    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    
    //Exibe 3 mensagens no console
    QOut("> Hoje � "+ dToC(Date()))
    QOut("> Estou no exemplo 399")
    QOut("> A frase �: " + cFrase)

    FWRestArea(aArea)
Return
