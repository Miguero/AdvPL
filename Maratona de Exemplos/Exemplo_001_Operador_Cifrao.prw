/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/09/operador-de-contido-em-maratona-advpl-e-tl-001/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe001
Exemplo de como utilizar o operador $ (cifr�o), para ver se um conte�do texto est� contido em outro
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe001()
    Local aArea  := FWGetArea()
    Local cLetra := "a"
    Local cNome  := "ATILIO"

    //Se a letra estiver "contida" na vari�vel do nome
    If cLetra $ cNome
        FWAlertInfo("A letra esta contida no Nome", "Teste 1")
    EndIf

    //Se a letra (tudo mai�scula) estiver "contida" na vari�vel do nome (tudo mai�scula)
    If Upper(cLetra) $ (cNome)
        FWAlertInfo("A letra esta contida no Nome (vari�veis tudo mai�sculas)", "Teste 2")
    EndIf

    FWRestArea(aArea)
Return
