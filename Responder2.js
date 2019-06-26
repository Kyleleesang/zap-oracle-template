
  async function getResponse(query,params){
	//Get data based on the query string and Parameters
	var Coinmarketcap = require("node-coinmarketcap");
	var coinmarketcap = new Coinmarketcap;
	var MyCoin = params[0];

	
	coinmarketcap.multi( coins => {
        var Array1 = coins.getTop(100);
        
        let found_coin = false;
        for(let i = 0;i < Array1.length; i +=1){
            
            if(Array1[i]["name"] === MyCoin){
                found_coin = true;
            }

        }
		if (found_coin == true) {
		
			console.log("it is not a shitcoin")
			} else {
			console.log("it is a shitcoin ");
        }
        
	
	});
	
}
module.exports = {
	getResponse:getResponse
}
console.log("the program ran");
getResponse("a string",["Lisk","stringy","stringify"]);
