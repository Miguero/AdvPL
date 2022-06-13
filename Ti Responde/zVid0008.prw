//Bibliotecas
#Include 'Totvs.ch'
 
/*/{Protheus.doc} User Function zVid0008
Fun��o de exemplo demonstrando o uso da FieldPos
@author Atilio
@since 28/01/2022
@version 1.0
@type function
/*/
 
User Function zVid0008()
    Local aArea := GetArea()
    
    DbSelectArea("SB1")

    //Verifica se o campo existe
    If FieldPos("B1_X_CAMPO") > 0
        /* Aqui da para fazer a customiza��o caso o campo exista*/

    Else
        Help(, , 'Aten��o - Dicion�rio', , 'O campo [B1_X_CAMPO] n�o foi encontrado!', 1, 0, , , , , , {'Contate o Administrador do Sistema'})
    EndIf

    RestArea(aArea)
Return
