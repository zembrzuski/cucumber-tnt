# language: pt

Funcionalidade: um texto qualquer para um humano entender o que esta acontecendo

#Scenario: Do successful login
#	Given I am on LMS+
#	When I make login with user "joelson" and password "joelson"
#	Then LMS+ main page will open

#Scenario:
#	Given I am on LMS+
#	When I make login with user "joelson" and password "senhaErrada"
#	Then Fail message will appear on screen


#Scenario: Login in LMS+ and open territorio screen
#	Given I am on LMS+
#	And I make login with user "joelson" and password "joelson"
#
#	When I open the main menu
#	And I click in "Vendas"
#	And I click in "Cadastros Gerais"
#	And I click in "???manterTerritorios???"
#
#	Then The screen called "cadastroTerritorio" will appear on screen



#Scenario: Login in LMS+ and open executivo screen screen
#        Given I am on LMS+
#        And I make login with user "joelson" and password "joelson"
#
#        When I open the main menu
#        And I click in "Vendas"
#        And I click in "Cadastros Gerais"
#        And I click in "???manterExecutivos???"
#
#        Then The screen called "manterExecutivos" will appear on screen


#Scenario: Nagigate to Localizacao AWB Cia Aérea
#	Given I am on LMS+
#	And I make login with user "joelson" and password "joelson"
#	And I open the main menu
#	And I click in "Expedição"
#	And I click in "Cadastros Gerais"
#	When I click in "Manter Localização AWB Cia Aérea"
#	Then The screen called "Manter Localização AWB Cia Aérea" will appear on screen





#Cenario: Buscar TAM em Manter Localizacao CIA Aerea
#
#	Aqui eu posso colocar alguma descricao mais detalhada
#	para explicar esse cenario
#
#        Dado que estou no LMS+
#        E faco login com usuario "joelson" e senha "joelson"
#        E abro o menu principal
#        E clico em "Expedição"
#        E clico em "Cadastros Gerais"
#        E clico em "Manter Localização AWB Cia Aérea"
#
#	Quando preencho o campo "Evento da Cia Aérea" com o valor "TAM LINHAS AEREAS S/A"
#
#       Entao The screen called "Manter Localização AWB Cia Aérea" will appear on screen





#Cenario: Pesquisar um territorio no banco de dados
#
#	Teste simples para pesquisar um territorio
#
#        Dado que estou no LMS+
#        E faco login com usuario "joelson" e senha "joelson"
#        E abro o menu principal
#        E clico em "Vendas"
#        E clico em "Cadastros Gerais"
#        E clico em "???manterTerritorios???"
#
#	Quando preencho o campo "Filial" com o valor "SAO"
#	E preencho o campo "territorio" com o valor "territorio2"
#	E clico no botao "Consultar"
#
#        Entao Vai aparecer uma linha do grid com conteudo "territorio2"
#	E Vai aparecer uma linha do grid com conteudo "SAO"



Cenario: Alterar Perfil

	Atualizar Perfil de Usuário Logado

	Dado que estou no LMS+
	E faco login com usuario "joelson" e senha "joelson"
	E abro o menu principal
	E clico em "Configurações"
	E clico em "Segurança"
	E clico em "Meu Perfil (Novo)"

	Quando preencho o campo "Filial" com o valor "POA"
	E abro o menu principal
	E clico no botao "Salvar"

	Entao vai aparecer a mensagem "Operação realizada com sucesso!"

