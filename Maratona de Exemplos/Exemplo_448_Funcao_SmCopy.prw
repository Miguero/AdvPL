/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/31/copiando-arquivos-atraves-da-smcopy-maratona-advpl-e-tl-448/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe448
Exemplo de como utilizar a fun��o SmCopy
@type Function
@author Atilio
@since 31/03/2023
@obs Fun��o SmCopy
    Par�metros
        + Arquivo de Origem com o caminho da pasta (podendo ser tamb�m da Protheus Data)
        + Arquivo de Destino com o caminho da pasta (podendo ser tamb�m da Protheus Data)
    Retorno
        + Retorna .T. se a c�pia foi bem sucedida ou Retorna .F. se a c�pia fracassou

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe448()
    Local aArea        := FWGetArea()
    Local cArqOrigem   := "C:\Spool\arquivo.txt"
    Local cArqDestino  := "C:\Spool\arquivo_copia.txt"

    //Se a c�pia for bem sucedida
    If SmCopy(cArqOrigem, cArqDestino)
        FWAlertSucess("C�pia do arquivo realizada com sucesso!", "Sucesso")

    Else
        FWAlertError("Falha ao copiar o arquivo, verifique o privil�gio ou se existe a pasta destino!", "Falha")
    EndIf

    FWRestArea(aArea)
Return
