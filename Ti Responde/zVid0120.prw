/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/01/28/gatilho-em-um-pergunte-ti-responde-0120/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVid0120
Fun��o criada para ser acionada na valida��o dos par�metros de Data no relat�rio MATR120
@type  Function
@author Atilio
@since 13/03/2024
@obs Editar o X1_VALID colocando u_zVid0120() dos par�metros 03 e 04 do grupo MTR120
/*/

User Function zVid0120()
    Local aArea       := FWGetArea()
    Local dDtEmisDe   := MV_PAR03
    Local dDtEmisAte  := MV_PAR04
    Local lContinua   := .T.

    //Atualiza os par�metros de data de entrega conforme a emiss�o que foi digitada
    MV_PAR05 := MonthSum(dDtEmisDe,  2)
    MV_PAR06 := MonthSum(dDtEmisAte, 5)

    FWRestArea(aArea)
Return lContinua
