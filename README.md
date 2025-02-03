Requisitos
Antes de iniciar, certifique-se de que sua máquina possui:

A última versão do Python instalada.
O gerenciador de pacotes pip atualizado.

Instale a RequestsLibrary
pip install robotframework-requests

Instalação
Clone este repositório
git clone git@github.com:LucasExplore/TesteRobot_serverest.git


Instale as dependências do projeto
pip install -r requirements.txt  

Execução dos Testes
robot -d results tests/  
O diretório tests/ contém os arquivos de teste.
Os relatórios serão gerados na pasta results/.

Para rodar um teste específico:
robot -d results tests/nome_do_teste.robot  

Também pode usar o comando robot e nome da pasta do teste (ex: api)
