# Delphi-KingAndQueen

This is a two-people duel game implement UDP. I think TCP is more correctly to design this game, but time is limited, please forgive me.  

## How to play?
### Before start
You have to add the ip of your opponent and your own ip, click the "新增玩家" button to add ip.   

![image](https://user-images.githubusercontent.com/79491377/135618253-1983291a-620e-4712-8bb2-f35873915a5f.png)

If every one are set, just click "確認" button then "Start" Button will be actived.  
After click "Start" button, system will random choose one person to first act.  
Before you move, you have to choose one color to represent what you are, and the below "king and queen" button will be actived, you can do something to your opponent now!!  

![image](https://user-images.githubusercontent.com/79491377/135619072-e55a608a-cf8b-4a61-a1db-4d3562b152d3.png)

### attack, recover, knight
you can choose "attack", "recover", or "knight".  

* attack
  *  attack your opponent
  *  the attack value will be (attack + Weight / 2)
* recover
  *  recover your health  
  *  the recover value will be (recover + Weight / 2)  
* knight
  *   there are four knight to choose.  
  *   Spades is just like attack, but will double.  
  *   Hearts is recover, but will double.  
  *   Diamonds not only attack but also recover, but attack value will higher than recover.  
  *   Clubs not only attack but also recover, but recover value will higher than attack.  

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




