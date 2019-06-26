pragma ^solidity 0.5.0;
import "./ERC20.sol";
import "./Ownable.sol";

contract AuxiliaryMarketFunctions {
    function withdraw(address sender, address receiver, uint amount) {
        require owner == msg.sender;
        require (amount <= balances, "insufficient funds");
        balances[msg.sender] -= amount;
        msg.sender.transfer(amount);
    }

    function deposit(uint amount) { //put in amount of zap you want to deposit
        require amount >= 0;
        balance[msg.sender] += amount;
    }

    function BuyToken(string TokenName,uint amount) { //put in amount of tokens you want to buy
        var CoinMarketCap = require("node-coinmarketcap"); //instantiate coinmarketcap oracle (do not declare globally)
        var coinmarketcap = new CoinMarketCap; //instantiate coinmarketcap oracle 
        uint ZapPrice;
        uint TokenPrice;
        coinmarketcap.get("Zap", coin =>{
            ZapPrice = coin.price_usd; //set zap price to the price on coinmarketcap
        });
            coinmarketcap.get(TokenName, coin =>{
            TokenPrice = coin.price_usd; //set token price to the price on coinmarketcap
        });
        ZapAwarded = (amount*TokenPrice) / ZapPrice; // set the zap you get back equal to the token amount x the usd price divided by zap price
    }
     function SellToken(string TokenName, uint amount) { //put in the amount of tokens you want to sell
        var CoinMarketCap = require("node-coinmarketcap");  //instantiate coinmarketcap oracle (do not declare globally
        var coinmarketcap = new CoinMarketCap; //instantiate coinmarketcap oracle
        uint ZapPrice;
        uint TokenPrice;
        uint ZapAwarded; // Zap that you sell your token for
        coinmarketcap.get("Zap", coin =>{
            ZapPrice = coin.price_usd; //set zap price to the price on coinmarketcap
        });
         coinmarketcap.get(TokenName, coin =>{
            TokenPrice = coin.price_usd; //set token price to the price on coinmarketcap
        });
        ZapAwarded = (amount*TokenPrice) / ZapPrice; // set the zap you get back equal to the token amount x the usd price divided by zap price

    }

}