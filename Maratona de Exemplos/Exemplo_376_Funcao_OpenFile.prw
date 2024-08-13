/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/25/abrindo-tabelas-do-dicionario-com-a-opensxs-maratona-advpl-e-tl-377/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe376
Realiza a abertura de uma empresa em mem�ria (para poder usar as tabelas)
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o OpenFile
    Par�metros
        Recebe o n�mero da empresa sendo formado pelo c�digo da empresa + c�digo da filial (vari�vel p�blica cNumEmp)
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe376()
    Local aArea      := FWGetArea()
    Local cEmpBkp    := ""
    Local cFilBkp    := ""
    Local cNumEmpBkp := ""

    //1. Faz o backup das vari�veis p�blicas
    cEmpBkp := cEmpAnt
    cFilBkp := cFilAnt
    cNumEmpBkp := cNumEmp
    
    //2. Altera as vari�veis p�blicas
    cEmpAnt := "99" //"01"
    cFilAnt := "01" //"0201"
    cNumEmp := cEmpAnt + cFilAnt
    
    //3. Chama a fun��o OpenFile para a nova filial
    OpenFile(cNumEmp)
    
    //4. Aqui voc� faz as suas customiza��es / tratativas
    // ...
    // ...
    // ...
    
    //5. Volta o backup das vari�veis
    cEmpAnt := cEmpBkp
    cFilAnt := cFilBkp
    cNumEmp := cEmpAnt + cFilAnt
    
    //6. Chama a fun��o OpenFile para voltar para a filial de origem
    OpenFile(cNumEmp)

    FWRestArea(aArea)
Return
