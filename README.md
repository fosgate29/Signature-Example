# Assinatura-Exemplo
Um exemplo para mostrar o uso de assinaturas com Metamask usando Smart Contracts. O exemplo consiste em simular o pedido de uma pizza entre amigos.

Execute `npm install`

Use testrpc e execute `truffle migrate` para fazer deploy do Smart Contract

Execute `npm run dev` e abra localhost:8080 para ver a Dapp.

Usando Metamask, você consegue interagir com o Dapp a assinar transações. Para recuperar o hash para ser utilizado quando for assinar, capture o hash do Event da transação que estará no log (F12). Para recuperar o resultado da assinatura ao pedir a pizza, recupere do log do console também.
