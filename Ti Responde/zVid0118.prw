/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/01/21/como-pegar-uma-aliquota-do-mv_esticm-via-advpl-ti-responde-0118/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} zVid0118
Demonstra��o de como buscar al�quotas de estados no par�metro MV_ESTICM
@type user function
@author Atilio
@since 29/01/2024
/*/

User Function zVid0118()
    Local aArea   := FWGetArea()
    Local cEstado := Upper(Alltrim(FWInputBox("Digite a sigla do estado")))
    Local nValor  := 0
    Local cTexto  := ""

    //Se tiver estado preenchido e for dois caracteres
    If ! Empty(cEstado) .And. Len(cEstado) == 2
        //Busca a al�quota
        nValor := u_zGetICMS(cEstado)

        //Mostra o resultado em uma mensagem
        cTexto := FormatStr("Para o estado %c a al�quota � de %n", {cEstado, nValor})
        FWAlertInfo(cTexto, "Teste Al�quota")
    EndIf

    FWRestArea(aArea)
Return

/*/{Protheus.doc} zGetICMS
Fun��o que retorna a al�quota do estado
@type user function
@author Atilio
@since 29/01/2024
@param cEstado, Caractere, Sigla do Estado a ser procurada no par�metro MV_ESTICM
@return nValor, Num�rico, Valor da al�quota
@example
nValor := u_zGetICMS("SP")
/*/
User Function zGetICMS(cEstado)
    Local aArea   := FWGetArea()
    Local cParam  := Alltrim(GetMV("MV_ESTICM"))
    Local nPosIni := 0
    Local nPosFim := 0
    Local nValor  := 0

    //Se o estado procurado esta no par�metro
    If cEstado $ cParam
        //Pega a posi��o e inicial e + 2 caracteres devido ao tamanho da sigla
        nPosIni := At(cEstado, cParam) + 2 

        //Percorre o restante do par�metro
        For nPosFim := nPosIni To Len(cParam)
            //Se for caractere, sai do la�o para pegar s� os num�ricos
            If IsAlpha(SubStr(cParam, nPosFim, 1))
                nPosFim--
                Exit
            EndIf
        Next

        //Pega o Valor
        nQuantidade := (nPosFim-nPosIni) + 1
        nValor := Val(SubStr(cParam, nPosIni, nQuantidade))
    EndIf

    FWRestArea(aArea)
Return nValor
