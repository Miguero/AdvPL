/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/20/buscando-o-primeiro-dia-de-um-mes-com-a-firstdate-maratona-advpl-e-tl-185/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe184
Fun��o que inverte uma string
@type Function
@author Atilio
@since 21/12/2022
@obs 
    Fun��o fInvString
    Par�metros
        + String original que ser� invertida
    Retorno
        + String j� invertida

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe184()
    Local aArea     := FWGetArea()
    Local cNome     := "daniel"
    Local cAoContr

    //Deixa a string de forma invertida
    cAoContr := fInvString(cNome)

    //Mostra o resultado
    FWAlertInfo("'" + cNome + "' ao contr�rio � '" + cAoContr + "'", "Teste fInvString")

    FWRestArea(aArea)
Return
