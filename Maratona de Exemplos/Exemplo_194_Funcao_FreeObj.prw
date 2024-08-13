/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/25/liberando-um-objeto-da-memoria-com-a-freeobj-maratona-advpl-e-tl-194/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe194
Limpa e libera um objeto da mem�ria do Protheus
@type Function
@author Atilio
@since 11/02/2023
@see https://tdn.totvs.com/display/tec/FreeObj
@obs 
    Fun��o FreeObj
    Par�metros
        + oObj        , Objeto           , Nome da vari�vel objeto instanciada
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe194()
    Local aArea     := FWGetArea()
    Local oObjeto

    //Instancia uma classe
    oObjeto := TFont():New("Tahoma", , -12)

    //Limpa e libera o objeto
    FreeObj(oObjeto)

    //Exibe uma mensagem com o tamannho do array
    FWAlertInfo("O valor da vari�vel � " + cValToChar(ValType(oObjeto)), "Teste de FreeObj")

    FWRestArea(aArea)
Return
