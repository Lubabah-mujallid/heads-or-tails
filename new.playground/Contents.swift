import UIKit

func tossCoin() -> String{
    print("Tossing a Coin!")
    let random = Int.random(in: 0...1)
    let side = (random == 0) ? "Heads" : "Tails"
    print(side)
    return side
}

func tossMultipleCoins(tossTimes: Int) -> Double{
    var totalHeads = 0
    for _ in 0..<tossTimes {
        let newToss = tossCoin()
        if newToss == "Heads" { totalHeads+=1 }
    }
    let ratio: Double = Double(totalHeads)/Double(tossTimes)
    print("the ration of heads: \(totalHeads), is: \(ratio)")
    return ratio
}

tossMultipleCoins(tossTimes: 20)
 
