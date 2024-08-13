/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/28/criando-relatorios-com-treport-trfunction-trsection-e-trcell-maratona-advpl-e-tl-505/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe504
Trata um endere�o retornando as informa��es separadas
@type Function
@author Atilio
@since 04/04/2023
@obs 

    TrataEnd
    Par�metros
        Recebe o endere�o junto com o numero e complemento separados por virgula
        Define se quer buscar o endere�o / logradouro (L) ou o numero (N) ou o complemento (C)
    Retorno
        Retorna a parte do endere�o encontrada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe504()
    Local aArea      := FWGetArea()
    Local cEndereco  := ""
    Local cBusca     := ""

    //Define o endere�o, sendo que o numero e complemento separados por v�rgula
    cEndereco := "Rua do Garibaldo, 369, Pr�ximo ao Mercado"



    //Busca a informa��o do endere�o (logradouro) apenas e exibe
    cBusca := TrataEnd(cEndereco, "L")
    FWAlertInfo(cBusca, "Teste 1 TrataEnd")



    //Busca a informa��o do n�mero apenas e exibe
    cBusca := TrataEnd(cEndereco, "N")
    FWAlertInfo(cBusca, "Teste 2 TrataEnd")



    //Busca a informa��o do complemento apenas e exibe
    cBusca := TrataEnd(cEndereco, "C")
    FWAlertInfo(cBusca, "Teste 3 TrataEnd")

    FWRestArea(aArea)
Return
