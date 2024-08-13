/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/19/valida-se-um-campo-existe-retornando-o-nome-dele-atraves-da-finextcpo-maratona-advpl-e-tl-182/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe183
Carrega um array com os dados da filial passada por par�metro
@type Function
@author Atilio
@since 21/12/2022
@obs 
    Fun��o fInfo
    Par�metros
        + Array que ter� as informa��es (as posi��es est�o descritas mais abaixo)
        + C�digo da filial (se n�o passar nada pega da filial logada)
        + C�digo da empresa (se n�o passar nada pega da empresa logada)
    Retorno
        + .T. se encontrou a empresa e filial ou .F. se n�o encontrou

    Posi��es do Array:
    [01] = Filial
    [02] = Nome Reduzido
    [03] = Nome Completo
    [04] = Endereco Cobranca
    [05] = Cidade Cobranca
    [06] = Estado Cobranca
    [07] = Cep Cobranca
    [08] = Cgc Cobranca
    [09] = Insc Cobranca
    [10] = Telefone
    [11] = Fax 
    [12] = Producao Rural
    [13] = Bairro Cobranca 
    [14] = Compl. End. Cobranca
    [15] = Tipo de Inscricao
    [16] = CNAE
    [17] = FPAS
    [18] = Acid. de Trabalho
    [19] = Codigo Municipio
    [20] = Natureza Juridica
    [21] = Data Base Pgto. RAIS
    [22] = Numero de Proprietarios
    [23] = Se Modificou Endereco
    [24] = Se Modificou INSC/CGC
    [25] = Causa da Mudanca
    [26] = INC./CGC Anterior
    [27] = CEI
    [28] = Tipo da Inscricao

    *** Os dados (como endere�o) ser�o de cobran�a ou entrega dependendo do par�metro MV_PAREND
    *** Existe um ponto de entrada que � poss�vel manipular o array, antes de retornar a fun��o que � o GPEXINSCR

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe183()
    Local aArea     := FWGetArea()
    Local aDados    := {}

    //Carrega os dados da empresa e filial logada
    If fInfo(@aDados)

        //Mostra a mensagem
        FWAlertInfo("Nome da empresa: " + aDados[2], "Teste de fInfo")
    EndIf

    FWRestArea(aArea)
Return
