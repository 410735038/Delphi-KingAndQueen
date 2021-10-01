# Delphi-KingAndQueen

This is a two-people duel game implement UDP. I think TCP is more correctly to design this game, but time is limited, please forgive me.  

## How to play?
### Before start
You have to add the ip of your opponent and your own ip, click the "新增玩家" button to add ip.   

![image](https://user-images.githubusercontent.com/79491377/135618253-1983291a-620e-4712-8bb2-f35873915a5f.png)

If every one are set, just click "確認" button then "Start" Button will be actived.  
After click "Start" button, system will random choose one person to first act.  
Before you move, you have to choose one color to represent what you are, and the below "king and queen" button will be actived, you can do something to your opponent now!!  

* Spades
   * attack will be 1.5 time
* Hearts
   * recover will be 1.5 time
* Diamonds
   * attack will be 1.5 time at even turn
   * recover will be 1.5 time at odd turn
* Clubs
   * attack  will be 1.5 time at odd turn
   * recover will be 1.5 time at even turn

![image](https://user-images.githubusercontent.com/79491377/135619072-e55a608a-cf8b-4a61-a1db-4d3562b152d3.png)

### attack, recover, knight

you can choose "attack", "recover", or "knight".  

* attack
  *  attack your opponent
* recover
  *  recover your health   
* knight
  *   there are four knight to choose.  
  *   Spades is just like attack, but value always be 15.  
  *   Hearts is recover, but value always be 20.  
  *   Diamonds not only attack but also recover, attack at even turn, recover at odd turn, value always be 10.  
  *   Clubs not only attack but also recover,  attack at odd turn, recover at even turn, value always be 10.  

### rules
It have three way to win.
* Defeat your opponent, make his/her hp to 0.  
* Report your opponent, guess which color he/she is, but only have one time.  
* When turn is 10, we will check the "衰弱值", the higher person will lose.  

### What's "衰弱值"
Everytime you are attacked, you will gain a card called "衰弱卡", we will check your "衰弱值" at turn 10.
#### How to calculate "衰弱值"?
* sum of every point on the card.  
* each pair will gain 10 points.
* each three of a kind will gain 30 points.
* each four of a kind will gain 40 points.
* straight flush will gain 100 points.
* straight will gain 50 points.




