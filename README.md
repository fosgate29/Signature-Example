# Assinatura-Exemplo
Um exemplo para mostrar o uso de assinaturas com Metamask usando Smart Contracts. O exemplo consiste em simular o pedido de uma pizza entre amigos.

# Dependências
Já tem nodejs instalado? Não? 

https://nodejs.org/en/download/

Instalar Truffle - Ferramenta de desenvolvimento Ethereum

`npm install -g truffle`

Instalar Metamask - plugin Chrome para trabalhar com wallets

https://metamask.io/

Instalar ganache-cli - Ganache simula uma rede Ethereum para testes. 

`npm install -g ganache-cli`

1o. passo:
git clone https://github.com/fosgate29/Signature-Example.git

Abrir um novo terminal e executar `ganache-cli`

Ir pra pasta Signature-Example e executar e aguardar

`npm install`

Executar `truffle migrate --development --reset` (vai enviar o código compilado do Smart Contract pro Ganache - que é a rede de teste)

Abrir browser e desbloquear Metamask.
Pegar a seed (palavras) e importar a conta da rede privada. Logo que o ganache inicia, ele coloca na tela seed e private keys das contas.

Executar 

`npm run dev` 

e abrir a ṕágina localhost:8080


Usando Metamask, você consegue interagir com o Dapp a assinar transações. Para recuperar o hash para ser utilizado quando for assinar, capture o hash do Event da transação que estará no log (F12). Para recuperar o resultado da assinatura ao pedir a pizza, recupere do log do console também.
