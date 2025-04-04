/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/04/03/como-usar-a-eval-para-somar-valores-ti-responde-0139/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVid0139
Demonstra��o de utiliza��o da eVal para executar blocos de c�digo
@type  Function
@author Atilio
@since 29/03/2024
@see https://tdn.totvs.com/display/tec/Eval
/*/

User Function zVid0139()
    Local aArea     := FWGetArea()

    //Primeiro declaramos a vari�vel de saldo, e depois o bloco de c�digo, que vai atualizar a saldo com o valor recebido
    Local nSaldo    := 0
    Local bBlocoCod := {|nValor| nSaldo := nSaldo + nValor}

    //Depois passamos 3 valores, 5 com 6 com 3 (vai dar 14 o resultado)
    eVal(bBlocoCod, 5)
    eVal(bBlocoCod, 6)
    eVal(bBlocoCod, 3)

    //Por fim, mostramos uma mensagem
    FWAlertSuccess("Resultado �: " + cValToChar(nSaldo), "Sucesso")

    FWRestArea(aArea)
Return
