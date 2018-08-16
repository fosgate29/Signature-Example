# Signature-Example
An example to show how to use signatures with Metamask via a smart contract used to agree on ordering Pizza. 

Run `npm install`

Use testrpc and run `truffle migrate` to deploy contracts. 

Run `npm run dev` and open localhost:8080 to view dapp. 

With Metamask, you can interact with the Dapp and sign transactions. To grab hash results to be used for signing, grab to the hash from the event of the transaction in the console log (F12). To grab signature results to be used for ordering pizza, grabs the bytes from the console log as well.
