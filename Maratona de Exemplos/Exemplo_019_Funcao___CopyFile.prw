/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/27/funcao-__copyfile-para-copia-de-arquivos-maratona-advpl-e-tl-019/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe019
Exemplo de como utilizar a fun��o __CopyFile
@type Function
@author Atilio
@since 26/11/2022
@obs Fun��o __CopyFile
    Par�metros
        + Arquivo de Origem com o caminho da pasta (podendo ser tamb�m da Protheus Data)
        + Arquivo de Destino com o caminho da pasta (podendo ser tamb�m da Protheus Data)
    Retorno
        + Retorna .T. se a c�pia foi bem sucedida ou Retorna .F. se a c�pia fracassou

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe019()
    Local aArea        := FWGetArea()
    Local cArqOrigem   := "C:\Spool\arquivo.txt"
    Local cArqDestino  := "C:\Spool\arquivo_copia.txt"

    //Se a c�pia for bem sucedida
    If __CopyFile(cArqOrigem, cArqDestino)
        FWAlertSucess("C�pia do arquivo realizada com sucesso!", "Sucesso")

    Else
        FWAlertError("Falha ao copiar o arquivo, verifique o privil�gio ou se existe a pasta destino!", "Falha")
    EndIf

    FWRestArea(aArea)
Return
