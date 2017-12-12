# Random Name 

assenment:
Write a function that takes a number of cents(as an integer), and returns a hash containing the least 
number of coins needed to generate the value of cents.
```ruby
 eg. If you have 11 cents you should return {:dime => 1, :penny => 1};
 eg. If you have 31 cents you should return {:quarter => 1, :nickel => 1, :penny => 1};
```
assenment part 2:
we had to revist this function and make the code shorter and easier to readthis is wat i came up with 
```ruby 
 def coin_2 (change2)
    wallet = {}
    money2 = {quater: 25, dime: 10, nickel: 5, penny: 1}
    money2.each do |key, amount|
        if change2 >= amount
            money2[key] = change2 % amount
           wallet[key] = amount
        end
        change2 = change2 % amount
    end
     p wallet
end
```

## To try this App out.
* clone this repo and run it in your terminal

This is [on GitHub](https://github.com/billyjack1988/Coin_changer).
