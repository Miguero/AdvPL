/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/28/validando-o-cpf-e-cnpj-com-as-funcoes-chkcpf-e-cnpj-maratona-advpl-e-tl-081/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe081
Exemplo de como validar CPF e CNPJ
@type Function
@author Atilio
@since 09/12/2022
@obs 
    Fun��o ChkCPF
    Par�metros
        + C�digo do CPF a ser validado
    Retorno
        + .T. se a composi��o do CPF estiver v�lida ou .F. se n�o estiver

    Fun��o CNPJ
    Par�metros
        + C�digo do CNPJ a ser validado
    Retorno
        + .T. se a composi��o do CNPJ estiver v�lida ou .F. se n�o estiver


    Para realizar os testes, foi utilizado os sites https://www.geradordecpf.org/ e https://www.4devs.com.br/gerador_de_cnpj


    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe081()
    Local aArea     := FWGetArea()
    Local cCPF_1    := "744.249.744-64"
    Local cCNPJ_1   := "50.195.033/0001-02"
    Local cCPF_2    := "123.456.789-01"
    Local cCNPJ_2   := "12.345.678/9012-34"

    //Retira os caracteres especiais das 4 strings
    cCPF_1  := StrTran(cCPF_1 , ".", "")
    cCPF_1  := StrTran(cCPF_1 , "-", "")
    cCPF_1  := StrTran(cCPF_1 , "/", "")
    cCPF_2  := StrTran(cCPF_2 , ".", "")
    cCPF_2  := StrTran(cCPF_2 , "-", "")
    cCPF_2  := StrTran(cCPF_2 , "/", "")
    cCNPJ_1 := StrTran(cCNPJ_1, ".", "")
    cCNPJ_1 := StrTran(cCNPJ_1, "-", "")
    cCNPJ_1 := StrTran(cCNPJ_1, "/", "")
    cCNPJ_2 := StrTran(cCNPJ_2, ".", "")
    cCNPJ_2 := StrTran(cCNPJ_2, "-", "")
    cCNPJ_2 := StrTran(cCNPJ_2, "/", "")



    //Faz um teste se o CPF � v�lido
    If ChkCPF(cCPF_1)
        FWAlertSuccess("O CPF '" + cCPF_1 + "' � v�lido!", "Teste CPF 1")
    Else
        FWAlertError("O CPF '" + cCPF_1 + "' � inv�lido!", "Teste CPF 1")
    EndIf



    //Faz um teste se o CPF � v�lido
    If ChkCPF(cCPF_2)
        FWAlertSuccess("O CPF '" + cCPF_2 + "' � v�lido!", "Teste CPF 2")
    Else
        FWAlertError("O CPF '" + cCPF_2 + "' � inv�lido!", "Teste CPF 2")
    EndIf



    //Faz um teste se o CNPJ � v�lido
    If CNPJ(cCNPJ_1)
        FWAlertSuccess("O CNPJ '" + cCNPJ_1 + "' � v�lido!", "Teste CNPJ 1")
    Else
        FWAlertError("O CNPJ '" + cCNPJ_1 + "' � inv�lido!", "Teste CNPJ 1")
    EndIf



    //Faz um teste se o CNPJ � v�lido
    If CNPJ(cCNPJ_2)
        FWAlertSuccess("O CNPJ '" + cCNPJ_2 + "' � v�lido!", "Teste CNPJ 2")
    Else
        FWAlertError("O CNPJ '" + cCNPJ_2 + "' � inv�lido!", "Teste CNPJ 2")
    EndIf

    FWRestArea(aArea)
Return
