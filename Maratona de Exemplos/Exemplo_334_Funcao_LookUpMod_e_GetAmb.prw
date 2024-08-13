/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/04/consultando-os-modulos-do-sistema-com-lookupmod-e-getamb-maratona-advpl-e-tl-334/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe334
Abre a consulta de m�dulos do produtos (compras, estoque, faturamento, etc)
@type Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o LookUpMod
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna .T. se a janela foi confirmada ou .F. se n�o

    Fun��o GetAmb
    Par�metros
        Recebe se deve retornar o c�digo ("1") ou a descri��o ("2") do m�dulo selecionado
    Retorno
        Retorna o texto conforme o par�metro informado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe334()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Se a pergunta de m�dulos foi confirmada
    If LookUpMod()
        //Monta a mensagem e exibe
        cMensagem := "Codigo: " + GetAmb("1") + CRLF
        cMensagem += "Descricao: " + GetAmb("2")
        FWAlertInfo(cMensagem, "Teste LookUpMod e GetAmb")
    EndIf

    FWRestArea(aArea)
Return
