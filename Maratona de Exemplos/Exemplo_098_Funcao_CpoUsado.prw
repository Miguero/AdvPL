/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/14/validando-se-um-campo-esta-em-uso-pelo-sistema-com-a-funcao-cpousado-maratona-advpl-e-tl-098/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe098
Verifica se um campo esta marcado como usado no Protheus
@type Function
@author Atilio
@since 11/12/2022
@obs 
    Fun��o CpoUsado
    Par�metros
        + Nome do campo
    Retorno
        + .T. se o campo estiver sendo usado ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe098()
    Local aArea     := FWGetArea()
    Local cCampo    := "B1_SEGUM"

    //Testa se o campo � usado
    If CpoUsado(cCampo)
        FWAlertSuccess("O campo � usado", "Teste CpoUsado")
    Else
        FWAlertError("O campo n�o � usado", "Teste CpoUsado")
    EndIf

    FWRestArea(aArea)
Return
