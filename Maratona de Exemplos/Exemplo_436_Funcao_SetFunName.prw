/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/25/definindo-o-nome-da-funcao-em-execucao-com-a-setfunname-maratona-advpl-e-tl-436/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe436
Define o nome da fun��o executada no menu
@type Function
@author Atilio
@since 30/03/2023
@obs 
    Fun��o SetFunName
    Par�metros
        Recebe o nome da fun��o que ser� atribu�da
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe436()
    Local aArea     := FWGetArea()
    Local cFunBkp   := ""

    //Faz o backup da fun��o em mem�ria
    cFunBkp := FunName()

    //Define o nome da fun��o
    SetFunName("zDaniel")
    FWAlertInfo("Nome da fun��o do Menu alterada (pressione Shift+F6 para conferir)!", "Teste FunName")

    //Restaura o Backup
    SetFunName(cFunBkp)

    FWRestArea(aArea)
Return
