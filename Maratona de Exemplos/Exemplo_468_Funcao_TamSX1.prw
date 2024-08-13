/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/10/buscando-o-tamanho-de-um-campo-atraves-da-tamsx3-maratona-advpl-e-tl-469/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe468
Busca o tamanho e os decimais de um par�metro na SX1
@type Function
@author Atilio
@since 02/04/2023
@obs 
    TamSX1
    Par�metros
        Nome do Grupo de Perguntas (X1_GRUPO)
        Sequencia da pergunta (X1_ORDEM)
    Retorno
        Retorna um array com 2 posi��es sendo [1] o Tamanho (X1_TAMANHO) e [2] o tamanho de decimais (X1_DECIMAL)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe468()
    Local aArea       := FWGetArea()
    Local aTamanho    := {}

    //Busca o tamanho de um par�metro
    aTamanho := TamSX1("A311TES", "02")
    FWAlertInfo("O tamanho � '" + cValToChar(aTamanho[1]) + "', e o tamanho de decimais � '" + cValToChar(aTamanho[2]) + "'", "Teste 1 - TamSX1")

    //Busca o tamanho de um par�metro que tenha decimais
    aTamanho := TamSX1("MTA115", "08")
    FWAlertInfo("O tamanho � '" + cValToChar(aTamanho[1]) + "', e o tamanho de decimais � '" + cValToChar(aTamanho[2]) + "'", "Teste 2 - TamSX1")

    FWRestArea(aArea)
Return
