const Pizza = artifacts.require("./Pizza.sol");

contract('Pizza', (accounts) => {
    let owner = accounts[0];
    let friend = accounts[1];
    let pizza;

    beforeEach(async () => {
        pizza = await Pizza.new({from:owner}); 
      });

      it("should allow a friend to purchase pizza", async () => {
        const _hash = await pizza.toHash(2, 100);
        const sig = await web3.eth.sign(owner, _hash);
        await pizza.sendEth({from:owner, value:1000});
        const result = await pizza.orderPizza(sig, owner, 2, 100, { from: friend});
        const pizzas = result.logs[0].args._noOfPizzas; 
        const wei = result.logs[0].args._wei;
        assert.equal(pizzas.toNumber(), 2);
        assert.equal(wei.toNumber(), 100)
      });

})

