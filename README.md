# Logic Circuit Design

- What is a digital circuit, what is a logic....

- This lecture is to study fundamental notions of the digital logic.

- This lecture is to study the VHDL(VHSIC Hardware Description Language) for the digital logic circuit design and customer IC(ASIC).

- Students wil be able to learn how to design and design sequence by using the description language.

- This lecture wanted to learn basic digital design paradigms and the necessary VHDL constructs that would help student build - small digital circuits.

- This lecture will gain enough experience with digital desing and vefification of real IC chips.


# Term Project (Vending Machine)


- 투입금액 종류: 50, 100, 500, 1000원
- 총 금액 1000원 까지
- 총 금액 초과할 경우: **자동반환!**
- 커피 금액 : 200원
- 율무차 금액: 150원
- 버튼종류: 커피,율무,반환,리셋
- 리셋의 경우 초기상태(0원)인 상태로 이동(high, '1' 일때 리셋)
- FSM으로 작성


## vend_mod.vhd
The file  is module of this vending machine  that coded with vhdl


![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMTQ5/MDAxNTc1MzgxNDgxNTMx.DQZ-zVbqCelR2EcP4w45r3alGjJpwiVmBxkQtMxDe6Ug.wxJi7rdN45JX_m1Y8aZNisHcvHj5Qu8vzqYEj6WAb9Yg.PNG.qotjdrb6/%EC%BA%A1%EC%B2%98.PNG?type=w773)![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfOTIg/MDAxNTc1MzgxNDgxNTI0.5xDgOdWtmMq6ldeyzU1rX_Y9ILmzLqhp9B_kT8TEFq0g.xyFWl_9CQVoSJvRjLdafjfJrGkKvxHz0XpLIpv5pShQg.PNG.qotjdrb6/%EC%BA%A1%EC%B2%981.PNG?type=w773)
![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMjE5/MDAxNTc1MzgxNDgxNTUw.YpIQZaLCghGbahxY21h23ILbD1Z6wD1MRjymS2sp2Kgg.9OBmtcZGf0ZkJ396VtfCzZrcfGW5dv5CuhmZFOZd8FEg.PNG.qotjdrb6/%EC%BA%A1%EC%B2%982.PNG?type=w773)
![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfODcg/MDAxNTc1MzgxNDgxNTM5.nG5m3_ou8YNzjzgTsL_-GrekX9CAMKuTK6EQoq2-cusg.l_Qwh7NF7zdVr1TaNDA37ZBUR3LCiCccSoD7aufkSDog.PNG.qotjdrb6/%EC%BA%A1%EC%B2%983.PNG?type=w773)
![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMjQ0/MDAxNTc1MzgxNDgxNTQ4.kS9lmsw2z9_8dq0huIJNwnW1sdzhRvKxk9nmxW2jw_gg.qNUezg9RGvEMZ8-dogr6cavTyRuBhDjpXTJzUv-QVAMg.PNG.qotjdrb6/%EC%BA%A1%EC%B2%984.PNG?type=w773)



## vend_tb_vhd

This file is for testing this vending machine module operate well

![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMTAw/MDAxNTc1Mzc5NTc4MTI1.nQYPJNlU8v43PUNo3xtSJcgFkWMAyYyN8q1v_L3qtHMg.xtUHhH8bUcZP_YlxqBAx7HCHU3Fv9DYYJgnQqrjhkA0g.PNG.qotjdrb6/1%EC%B4%88%EA%B3%BC%EB%B0%98%ED%99%98_%EC%82%AC%EC%A7%84.PNG?type=w773)

- 입력받은 총 금액이 1000원을 넘게되면 
자판기 허용 총 금액이 1000원 임으로 
반환하게 프로그래밍 되어있다. 

- 1000원을 넣고 50원을 넣으면 1050원을 반환
-  1000원을 넣고 100원을 넣으면 1100원을 반환
- 1000원을 넣고 500원을 넣으면  1500원을 반환하는 것을 확인 할 수 있다.
##
![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMjMg/MDAxNTc1Mzc5NTc4MTI3.gmepYC_1nFtaOo1BNy713ptfRnoYXirbIEmSmE5CA6Ag.PziiLQAqGraG5dnOwbWJFzdhPGeOn2audhNq8oHLbPYg.PNG.qotjdrb6/2,3_%EB%A6%AC%EC%85%8B_%EB%A6%AC%ED%84%B4.PNG?type=w773)
- 리셋 버튼과 리턴 버튼을 테스트하는 모습이다. 
- 100원을 넣고 리셋을 하고 100원 50원을 넣고 리턴을 하게되면 250원이 아니라 150원이 나오는 것을 확인 할 수있다. 
##
![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMTEg/MDAxNTc1Mzc5NTc4MTMx.MYnauEpgQKtI86ih0IgvuTOrv6lWQDXICwVU4jevRq4g.KRYejBBsH0xlxUZ1LYlz_K8FaATFD4ISxH3fvbHVbG4g.PNG.qotjdrb6/4,5_%EC%9C%A8%EB%AC%B4,%EC%BB%A4%ED%94%BC_%EB%B2%84%ED%8A%BC.PNG?type=w773)
- 돈이 부족할 때에는 커피,율무 버튼을 눌러도 반응하지 않고
돈이 충분할 때에는 반응하는 모습이다.

- 음료를 뽑고 리턴버튼을 누르면 남은 돈을 반환하는 모습을 볼 수있다.(700-350=350)

## 추가
- 우리가 보는 칩은 이렇게 생겼을 것이다.



![](https://postfiles.pstatic.net/MjAxOTEyMDNfNTYg/MDAxNTc1MzgwMzA2NjQ2.L7vAZ9rTXIzyK4KKMcGvT1GoYP8uYkF7slPJavVnHjYg.AxU8KW2cvlvm89k4r2OjY9Nd13luEoflpMk3Bo6Ehlcg.PNG.qotjdrb6/image.png?type=w773)

- 하지만 칩 안에는 이렇게 복잡한 구조로 되어있다.

![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMjgw/MDAxNTc1MzgwMTAzMDEw.0Ztat4YDfiZfDaMbHwyPZE5xF2psmC640ZE3Q2b2390g.pcC-D9jkxlKa22W8I4J7C7GgROzjT_5z8eqIYgWFERMg.PNG.qotjdrb6/image.png?type=w773)

![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMTI5/MDAxNTc1MzgwMTI2NzIz.rn8AfG-fVfzur3eeb1m_xgUlfJf8Osxv-vRAlPR2JRog.bAVmC8cBAQ-FpY1yYH28iSzCP3MFDo9zha3y3rxHDMIg.PNG.qotjdrb6/image.png?type=w773)
 

![enter image description here](https://postfiles.pstatic.net/MjAxOTEyMDNfMTI3/MDAxNTc1MzgwMTY4NzAz.bKS7CYrCZhRSVrBLRC2QXeFg3WRHRsTKfCTHYWtLxeUg.WaTN8bts1vSlH6L3x5VyhjZUeifG1ls3tS51ZNBccY4g.PNG.qotjdrb6/image.png?type=w773)

