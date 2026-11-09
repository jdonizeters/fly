### ⚙️ **Rotina de Perfil**

A rotina de **Perfil** permite que você defina e gerencie suas conexões com bancos de dados. Com ela, é possível alternar facilmente entre diferentes conexões de trabalho de forma rápida e centralizada.

**📝 Como configurar um Perfil**
Para criar um perfil, você precisará preencher as seguintes informações:

* 🏷️ **Nome:** Um nome de identificação para o seu perfil.
* 🗄️ **Tipo de Origem:** O sistema gerenciador do banco (ex: MS SQL).
* 🖥️ **Servidor:** O endereço do servidor do banco de dados.
* 📂 **Banco de Dados:** O nome da base de dados que será acessada.
* 🔑 **Senha:** A credencial de acesso.
* 📄 **Arquivo MILE:** Você pode associar um arquivo MILE ao perfil. Dessa forma, ao gerar ou exportar dados, o arquivo já assumirá automaticamente um nome pré-definido.

**🚀 Conectando e Utilizando**

* 🔌 **Botão Conectar:** Após configurar os dados, clique em Conectar. A partir deste momento, todas as operações realizadas no **Fly** (como o *Navegador de Base de Dados* e a *Geração de Arquivo MILE*) serão executadas no banco de dados vinculado ao perfil ativo.
* 🗑️ **Excluir:** Caso não precise mais de uma conexão, você pode facilmente excluir o perfil do sistema.

> 🛡️ **Nota de Segurança:** O aplicativo Fly foi desenvolvido para operar exclusivamente com bases de dados locais. Por medidas de segurança, a ferramenta bloqueará tentativas de conexão com bancos de dados externos. 