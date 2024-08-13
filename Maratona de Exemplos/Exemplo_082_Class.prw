/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/29/montando-classes-com-metodos-e-atributos-usando-class-maratona-advpl-e-tl-082/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe082
Exemplo de como criar e utilizar uma classe
@type Function
@author Atilio
@since 09/12/2022
@see https://tdn.totvs.com/pages/viewpage.action?pageId=6063065
@obs 

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe082()
    Local aArea     := FWGetArea()
    Local oPessoa
    Local cNome        := "Jos�"
    Local dNascimento  := sToD("19850712")
     
    //Instanciando o objeto atrav�s da classe Pessoa
    oPessoa := zPessoaTst():New(cNome, dNascimento)
     
    //Chamando um m�todo da classe
    oPessoa:MostraIdade()

    FWRestArea(aArea)
Return

/*
 ====================================================
 Abaixo � a declara��o da classe, seus m�todos e atributos
 ====================================================
*/

/*/{Protheus.doc} zPessoaTst
Cria��o da classe Pessoa
@author Atilio
@since 13/12/2015
@version 1.0
    @example
    oObjeto := zPessoaTst():New()
/*/
 
Class zPessoaTst
    //Atributos
    Data cNome
    Data nIdade
    Data dNascimento
 
    //M�todos
    Method New() CONSTRUCTOR
    Method MostraIdade()
EndClass
 
/*/{Protheus.doc} New
M�todo que cria a inst�ncia com a classe zPessoaTst
@author Atilio
@since 13/12/2015
@version 1.0
    @param cNome, Caracter, Nome da Pessoa
    @param dNascimento, Data, Data de Nascimento da Pessoa
    @example
    oObjeto := zPessoaTst():New("Jo�o", sToD("19800712"))
/*/
 
Method New(cNome, dNascimento) Class zPessoaTst
    //Atribuindo valores nos atributos do objeto instanciado
    ::cNome        := cNome
    ::dNascimento    := dNascimento
    ::nIdade        := fCalcIdade(dNascimento)
Return Self
 
/*/{Protheus.doc} MostraIdade
M�todo que mostra a idade da pessoa
@author Atilio
@since 13/12/2015
@version 1.0
    @example
    oObjeto:MostraIdade()
/*/
 
Method MostraIdade() Class zPessoaTst
    Local cMsg := ""
     
    //Criando e mostrando a mensagem
    cMsg := "A <b>pessoa</b> "+::cNome+" tem "+cValToChar(::nIdade)+" anos!"
    MsgInfo(cMsg, "Aten��o")
Return
 
/*-------------------------------------------------*
 | Fun��o: fCalcIdade                              |
 | Autor:  Daniel Atilio                           |
 | Data:   13/12/2015                              |
 | Descr.: Fun��o que calcula a idade da Pessoa    |
 *-------------------------------------------------*/
 
Static Function fCalcIdade(dNascimento)
    Local nIdade
     
    //Chamando a fun��o YearSub para subtrair os anos de uma data
    nIdade := DateDiffYear(Date(), dNascimento)
Return nIdade
