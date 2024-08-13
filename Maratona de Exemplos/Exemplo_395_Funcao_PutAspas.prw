/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/04/buscando-o-nome-de-funcoes-na-pilha-de-chamadas-com-a-procname-maratona-advpl-e-tl-394/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe395
Adiciona ap�strofo ou aspas no come�o e no fim de uma string
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o PutAspas
    Par�metros
        Vari�vel caractere a ser verificada
    Retorno
        Retorna a vari�vel com aspas ou ap�strofos a mais no come�o e no fim

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe395()
    Local aArea     := FWGetArea()
    Local cTexto    := ""
    Local cMensagem := ""
    
    //Adiciona ap�strofos em uma frase no inicio e fim
    cTexto := "Ol� mundo"
    cMensagem := PutAspas(cTexto)
    FWAlertInfo(cMensagem, "Teste 1 PutAspas")

    //Adiciona aspas em uma frase no inicio e fim (pois ela j� tem ap�strofos)
    cTexto := "E ele disse que 'Ol� mundo' em ingl�s � 'Hello world'!"
    cMensagem := PutAspas(cTexto)
    FWAlertInfo(cMensagem, "Teste 2 PutAspas")

    FWRestArea(aArea)
Return
