/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/13/pegando-o-codigo-do-usuario-logado-com-a-retcodusr-maratona-advpl-e-tl-413/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe412
Salva uma imagem do reposit�rio em um arquivo local
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/Resource2File
@obs 

    Fun��o Resource2File
    Par�metros
        + cResource , Caractere     , Nome do Recurso buscado
        + cFile     , Caractere     , Nome do Arquivo na m�quina local
    Retorno
        + lSucess   , L�gico        , .T. se conseguiu salvar o arquivo ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe412()
    Local aArea     := FWGetArea()
    
    //Pega o arquivo dentro do RPO e salva em uma pasta local
    Resource2File("PESQUISA.PNG", "C:\spool\teste2.png")

    FWRestArea(aArea)
Return
