/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/29/buscando-a-mascara-de-um-campo-com-as-pesqpict-e-x3picture-maratona-advpl-e-tl-385/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe384
Verifica se um valor pertence a outro
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347025
@obs 

    Fun��o Pertence
    Par�metros
        String com os valores poss�veis
        String com o valor que ser� validado (se n�o for informado pega o conte�do do campo digitado em mem�ria)
    Retorno
        Retorna .T. se pertence ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe384()
    Local aArea    := FWGetArea()
 
    //Valida se a express�o da direta, pertence a express�o da esquerda
    If Pertence("ABCDE", "A")
        FWAlertSuccess("O valor foi encontrado na busca!", "Teste - Pertence")
    EndIf
 
    FWRestArea(aArea)
Return
