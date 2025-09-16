# godot_2d_shooter
godot을 활용하여 슈팅게임을 개발하는 튜토리얼을 진행하였습니다. 기초 튜토리얼에서 조금 더 나아가 아트 및 오디오 에셋을 직접 개발, 적용하였습니다.

![overview](https://github.com/user-attachments/assets/e33a6cae-fcf8-456b-a267-2dacf33902e0)

## 레벨 구현

레벨의 뷰포트, 스코어 UI, hp UI, 게임오버 화면을 구현하였습니다.


| 뷰포트 | GameOver | gdscript |
|---|---|---|
| <img width="607" height="426" alt="스크린샷 2025-09-15 오후 12 35 07" src="https://github.com/user-attachments/assets/6d0a5412-8f68-4be0-bb00-aef1bbe626e6" /> | <img width="440" height="364" alt="스크린샷 2025-09-15 오후 12 35 22" src="https://github.com/user-attachments/assets/5e18caf1-efa2-4a15-9202-f7ad9d712c61" /> | <img width="484" height="469" alt="스크린샷 2025-09-15 오후 12 35 54" src="https://github.com/user-attachments/assets/0153fc19-495f-40e2-b440-a182fcf5a5f3" /> |

## 캐릭터 구현

플레이어 캐릭터 구현, 플레이어 공격 (레이저) 구현, 히트박스 적용

| 캐릭터 노드 | gdscript |
|---|---|
| <img width="247" height="304" alt="스크린샷 2025-09-15 오후 1 05 30" src="https://github.com/user-attachments/assets/9eb909a5-06d0-47ce-b30b-1211a188e1be" /> | <img width="585" height="375" alt="스크린샷 2025-09-15 오후 1 03 16" src="https://github.com/user-attachments/assets/b9601204-b0db-47a2-ac47-75fa5d1a26a3" />|


## 적 구현

위에서 아래로 랜덤한 벡터를 향해 떨어지는 meteor 구현, polygon shape 히트박스 적용

충돌 시스템 적용 및 충돌 시그널 적용

| 캐릭터 노드 | gdscript |
|---|---|
| <img width="244" height="204" alt="스크린샷 2025-09-15 오후 1 06 27" src="https://github.com/user-attachments/assets/0036b33b-cd9e-4f2d-940b-e42907694a2e" /> | <img width="604" height="309" alt="스크린샷 2025-09-15 오후 1 07 29" src="https://github.com/user-attachments/assets/729588b6-d422-4fbb-8802-2c3affad3b75" /> |

## 픽셀아트 에셋 구현

픽셀아트 툴 pixel studio를 통해 아트 에셋을 직접 그리고 적용하였습니다.

| sprite | 별 | 운석 |
|---|---|---|
| <img width="1470" height="912" alt="스크린샷 2025-09-15 오후 12 31 41" src="https://github.com/user-attachments/assets/1547a482-f98d-479a-848a-acbb2ee6d401" /> | <img width="681" height="188" alt="스크린샷 2025-09-15 오후 12 32 29" src="https://github.com/user-attachments/assets/9f6a377c-5fb1-4063-931e-e9184a0b24d7" /> | <img width="129" height="121" alt="스크린샷 2025-09-15 오후 12 32 50" src="https://github.com/user-attachments/assets/ba7794a1-dbbd-40da-9c06-cc0ca9ddc8fd" /> |
