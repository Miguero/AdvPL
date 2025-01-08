/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/01/02/buscando-o-ultimo-registro-inserido-em-uma-tabela-com-a-lastrec-ti-responde-0113/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVid0113
Exemplo de como buscar o �ltimo registro de uma tabela
@type  Function
@author Atilio
@since 27/03/2024
/*/

User Function zVid0113()
    Local aArea     := FWGetArea()
    Local cTabAlias := ""
    Local nUltRegis := 0

    //Pede para o usu�rio informar um alias de tabela
    cTabAlias := FWInputBox("Informe um alias de tabela (ex.: SB1, SA2, DA0):")
    cTabAlias := Left(Upper(cTabAlias), 3)

    //Se a tabela existir
    If AvExisteTab({cTabAlias})

        //Abre a tabela, e pega o �ltimo registro
        DbSelectArea(cTabAlias)
        nUltRegis := (cTabAlias)->(LastRec())

        //Mostra uma mensagem
        FWAlertSuccess("O �ltimo registro na tabela '" + cTabAlias + "' � o de n�mero '" + cValToChar(nUltRegis) + "'!", "Sucesso")

    Else
        FWAlertError("A tabela '" + cTabAlias + "' n�o existe!", "Falha")
    EndIf

    FWRestArea(aArea)
Return
