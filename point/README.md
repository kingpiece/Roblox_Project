# 게임 설명

버섯버섯!을 먹으면 점수가 올라간다.

점수를 획득하는 아이템 배치 (버섯)

플레이어가 버섯을 먹으면 30 포인트가 리더보드에 올라간다. 

# 구현 방식

local function onPlayerJoin(player): 점수 담는 공간을 만드는 함수

local function givePoints(player): 점수를 획득하는 givepoints 함수

local function partTouched(otherPart): 버섯버섯과 플레이어의 Touch Event 함수

--

**점수 획득 전**
![image](https://user-images.githubusercontent.com/107115658/173830183-7a7f566a-0ebe-4289-8736-eacc469da3ca.png)

**점수 획득 후**

![image](https://user-images.githubusercontent.com/107115658/173830305-fcec752d-edfb-46bd-a3c0-583c0d63000d.png)
