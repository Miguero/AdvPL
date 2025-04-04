/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/03/27/como-liberar-ou-bloquear-edicao-de-campos-no-cabecalho-da-classificacao-de-uma-nf-ti-responde-0137/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function MT103CWH
Ponto de Entrada que permite liberar a edi��o de campos no cabe�alho do Documento de Entrada
@type  Function
@author Atilio
@since 13/03/2024
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6085804
/*/

User Function MT103CWH()
    Local aArea    := FWGetArea()
    Local xRetorno := Nil
    Local cCampo   := Alltrim(ParamIXB[1])
    Local lClassif := ParamIXB[3]

    //Se � uma classifica��o
    If lClassif
        
        //Se for os campo de Emiss�o vai permitir a altera��o
        If cCampo $ "F1_EMISSAO;"
            xRetorno := .T.

        //Se for o campo Esp�cie, vai bloquear a altera��o
        ElseIf cCampo $ "F1_ESPECIE;"
            xRetorno := .F.
        EndIf

    EndIf

    FWRestArea(aArea)
Return xRetorno
