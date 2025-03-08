/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/02/11/como-adicionar-um-botao-de-legenda-em-tela-em-mvc-ti-responde-0124/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function OM010MNU
Adi��o de rotinas no cadastro de tabelas de pre�o
@type  Function
@author Atilio
@since 08/03/2024
@see https://tdn.totvs.com/pages/releaseview.action?pageId=631314486
/*/

User Function OM010MNU()
    Local aArea := FWGetArea()

    //Adiciona na vari�vel de rotina do Menu
    aAdd(aRotina, {"* Legenda MVC", "u_zVid0124", 0, 2, 32, Nil})

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function zVid0124
Aciona a visualiza��o da legenda, atrav�s de op��o no Outras A��es
@type  Function
@author Atilio
@since 08/03/2024
/*/

User Function zVid0124()
    Local aArea  := FWGetArea()
    Local oBrowse

    //Intercepta o Browse - similar a antiga GetObjBrow()
    oBrowse := FWmBrwActive()

    //Se conseguiu interceptar com sucesso
    If ValType(oBrowse) == "O"

        //Simula o duplo clique no mouse na coluna 1
        eVal(oBrowse:aColumns[1]:bLDblClick)

    EndIf

    FWRestArea(aArea)
Return
