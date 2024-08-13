/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/16/validando-se-um-campo-existe-com-a-funcao-fieldpos-maratona-advpl-e-tl-177/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe177
Valida se um campo existe na tabela
@type Function
@author Atilio
@since 20/12/2022
@see https://tdn.totvs.com/display/tec/FieldPos
@obs 
    Fun��o FieldPos
    Par�metros
        + cField         , Caractere   , Nome do campo
    Retorno
        + nRet           , Num�rico    , Retorna a posi��o do campo no dicion�rio caso exista

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe177()
    Local aArea      := FWGetArea()

    DbSelectArea("SB1")

    //Verifica se o campo existe
    If FieldPos("B1_X_CAMPO") > 0
        /* Aqui da para fazer a customiza��o caso o campo exista */

    Else
        FWAlertError('Contate o Administrador do Sistema', 'O campo [B1_X_CAMPO] n�o foi encontrado!')
    EndIf

    FWRestArea(aArea)
Return
