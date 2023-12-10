# TOGETHER (JSP를 사용한 프로젝트)<br><br>

## 개발환경<br>
- Eclipse
- DBeaver
- Postman
 
## 사용기술
  
### 백엔드

#### 주요 프레임워크 / 라이브러리
- Java jdk - 11.0.15.1
- JSP
- Mybatis
- JSON
- JSTL
- Apache Tomcat v9.0

#### Database
- Oracle

### 프론트엔드
- Javascript
- Html/Css
- Ajax
- JQuery

### 소통방법
- Zum
- Discord

## 핵심 키워드
- JSP와 서블릿 차이점 이해
- MVC 프레임워크 기반 백엔드 서버 구축
- MyBatis로 여러가지 쿼리 경험
- WebSocket을 사용하지 않고 실시간채팅 구현 도전
- Kakao Map API 를 사용하며 외부 API 사용

## 제작기간
- 2022.01.11 ~ 2022.02.06

## E-R 다이어그램
![image](https://user-images.githubusercontent.com/85470797/226358897-3fc0ae2c-77a2-45e4-b814-64a1671ce212.png)

## 프로젝트 목적
### TOGETHER 프로젝트를 기획한 이유?
웹 개발은 직접 무언가를 기획하고 만들어보는 것이 실력향상에 도움이 된다고 생각했습니다. 진행해보고 싶은 프로젝트는 많았지만 처음부터 무리하지 않고 차근차근 성장하자는 의미로 팀원들과 JSP를 사용한 모임 사이트를 만들게 되었습니다. 이 프로젝트를 통해 JSP와 Servlet의 차이를 이해하고 팀원들과 소통하는 법을 배웠습니다. 

## 팀원 및 역할

강경민(leader)<br>
모임 파트 : 모임 생성, 홍보 게시판, 모임 신청 관리, 오늘 모임 리스트 검색, 모임 채팅<br>
관리자 파트 : 공지사항 작성, 모임 삭제, 게시글 삭제<br>
홍보 게시판 파트 : 게시판 리스트, 게시글 상세보기, 게시글 댓글<br>

박지우<br>
모임 파트 : 마이 모임<br>
인덱스 파트 : 친구, 모임, 게시글 정보, 금일 날씨 정보 메인 화면에 배치<br>

김한주<br>
회원 파트 : 회원 가입, 로그인, 내 정보 수정, 회원 탈퇴, 친구 기능<br>

류원희<br>
모임 파트 : 모임 검색, 모임 멤버 관리, 모임 관리<br>
게시판 파트 : 게시판 리스트, 게시글 상세보기, 게시글 댓글<br>
공지사항 파트 : 공지사항 리스트, 공지사항 상세보기<br>

## 주요 기능

![image](https://github.com/kgm7642/JSP_MOIM_project/assets/85470797/4dce338f-01c9-4f53-a7ee-401f1c5bf18b)
인덱스프론트컨트롤러 <br>
1. 요청(request)을 받으면 요청이 Post면 doPost Get이면 doGet 메소드 실행 후 doProcess메소드 실행<br>
2. URI에서 Path를 지워낸 후 command에 저장 -> switch문을 통해 알맞은 로직 실행<br>
3. case문에서는 
![image](https://github.com/kgm7642/JSP_MOIM_project/assets/85470797/1ab5559e-c2f2-4326-a617-4ee6acf8621c)


프론트 컨트롤러를 학습 
모임을 개설하고 싶은 유저는 모임을 개설한 후 홍보 게시판을 통해 자신의 모임을 홍보할 수 있습니다. 또한 모임에 참여하고 싶은 유저는 홍보 게시판 또는 모임 리스트를 확인해 모임에 가입 신청을 할 수 있으며 모임 채팅을 통해 실시간으로 유저들 간의 소통이 가능합니다.

## 프로젝트를 통해 얻은 것

[Uploading JSP영상.avi…]()


![image](https://user-images.githubusercontent.com/85470797/219278580-4a62a834-3c10-402a-84a3-1633ad9d2f89.png)
![image](https://user-images.githubusercontent.com/85470797/219278603-0b5d85c2-9132-45bb-8950-a08f5049bbf2.png)
![image](https://user-images.githubusercontent.com/85470797/219278632-721495a8-44e9-466a-8c1d-1afe2dc7573f.png)
![image](https://user-images.githubusercontent.com/85470797/219278645-4a898747-6c1d-423f-9592-253e1eecb9be.png)
![image](https://user-images.githubusercontent.com/85470797/219278667-a11ba2dd-4390-46ae-88f7-b97ba1bf7e30.png)
![image](https://user-images.githubusercontent.com/85470797/219278701-4c11341c-b0bb-49b8-bf5e-82ac6f3a15c2.png)
![image](https://user-images.githubusercontent.com/85470797/219278717-3f4829c4-01f8-4a54-8825-f3b6cf7cc160.png)
![image](https://user-images.githubusercontent.com/85470797/219278726-a9ae1f33-7cda-4050-aa41-e63343622b81.png)
![image](https://user-images.githubusercontent.com/85470797/219278753-2a2280ae-a496-4e14-8197-8e3eb35e50f1.png)
![image](https://user-images.githubusercontent.com/85470797/219278772-3ae17fa3-e15f-4d07-a3ef-b7d6329f8811.png)
![image](https://user-images.githubusercontent.com/85470797/219278784-2b2d8a1b-e691-4e7f-975d-622efc133079.png)
![image](https://user-images.githubusercontent.com/85470797/219278809-b35b54d7-5b9e-4a08-9797-6b441c4db7bf.png)
![image](https://user-images.githubusercontent.com/85470797/219278832-596cce61-e641-4156-a8fc-9ce20ea768fa.png)
![image](https://user-images.githubusercontent.com/85470797/219278864-730aff68-0aa3-4ae0-8d2e-21dd5e361d5d.png)
![image](https://user-images.githubusercontent.com/85470797/219278884-e9175ade-3e9e-4a4e-896b-5daf12094590.png)
![image](https://user-images.githubusercontent.com/85470797/219278900-efd01659-223f-47f2-9124-ff4cca2adc6e.png)
![image](https://user-images.githubusercontent.com/85470797/219278921-990c81cf-3394-4f65-ba53-e17b5c0a294e.png)
![image](https://user-images.githubusercontent.com/85470797/219278950-f4c51127-29a4-4f9f-9d26-7241c77d1a9c.png)
![image](https://user-images.githubusercontent.com/85470797/219278962-3c59668a-35e2-4331-9216-2da8701f5521.png)
![image](https://user-images.githubusercontent.com/85470797/219278988-4a91b7f4-db50-4ea4-a761-90ad588ba055.png)
![image](https://user-images.githubusercontent.com/85470797/219279008-c3cece41-aa45-4936-94c1-67d8a07ecd66.png)
![image](https://user-images.githubusercontent.com/85470797/219279017-0f0f4583-8c3d-4e6b-bf5f-d4229f08541f.png)
![image](https://user-images.githubusercontent.com/85470797/219279036-952aa0f9-6740-4d4a-bdd2-4218ac47cad1.png)
![image](https://user-images.githubusercontent.com/85470797/219279054-dec4d3e9-a6bd-4ea8-8046-0fe32179aec3.png)
![image](https://user-images.githubusercontent.com/85470797/219279081-13e9fe0d-1606-4825-80b5-6aef62a65662.png)
![image](https://user-images.githubusercontent.com/85470797/219279099-881e37b1-4630-47a0-9604-7930d5950703.png)
![image](https://user-images.githubusercontent.com/85470797/219279115-36689b69-d413-4d86-8c68-590746ae5cb3.png)
![image](https://user-images.githubusercontent.com/85470797/219279133-5982395d-28d8-435c-bfb2-9739727d0e53.png)
![image](https://user-images.githubusercontent.com/85470797/219279151-248713f6-7b6c-46dc-8dd8-94b6b8b9afd6.png)
![image](https://user-images.githubusercontent.com/85470797/219279164-1a5c6096-ba57-4593-9eaf-89793ccf8680.png)
![image](https://user-images.githubusercontent.com/85470797/219279181-9083fec2-5945-4fe7-a047-98e7c4264905.png)
![image](https://user-images.githubusercontent.com/85470797/219279196-9f00951d-c85f-446e-be5d-9e24b99cb4d0.png)
![image](https://user-images.githubusercontent.com/85470797/219279227-bf469c56-61c8-43d9-9a8f-ce178c95fbab.png)
![image](https://user-images.githubusercontent.com/85470797/219279242-9b4c1048-aab5-46d2-821d-fe6fa47db9d5.png)
![image](https://user-images.githubusercontent.com/85470797/219279260-1111dae2-e0f7-433f-a4a8-26eebc6d1ef8.png)
![image](https://user-images.githubusercontent.com/85470797/219279280-dada9f9a-37df-43d6-813b-a2457ae46a17.png)
![image](https://user-images.githubusercontent.com/85470797/219279315-521e27e0-e0af-40e2-89b8-1a42cd1e573a.png)
![image](https://user-images.githubusercontent.com/85470797/219279346-e1063d20-a49f-4fe2-a3af-05d81558f1de.png)
![image](https://user-images.githubusercontent.com/85470797/219279362-08cb0116-bec0-4dc1-b709-9dc1da029205.png)
![image](https://user-images.githubusercontent.com/85470797/219279388-2d698415-93bc-4206-83e5-0c7a3b30d2f7.png)
![image](https://user-images.githubusercontent.com/85470797/219279407-456dbc79-cb90-43ea-87b2-f011858f9624.png)
![image](https://user-images.githubusercontent.com/85470797/219279428-6179b942-e21c-41d2-a011-c1a4416c4085.png)
![image](https://user-images.githubusercontent.com/85470797/219279438-e5b41fa3-5e10-4da9-a39f-c55cd5413c22.png)
![image](https://user-images.githubusercontent.com/85470797/219279457-f7686827-bc38-46ae-9294-043d4b5c4b4c.png)
![image](https://user-images.githubusercontent.com/85470797/219279479-cab689f6-f732-4a7f-a6f2-4196415a9f31.png)
![image](https://user-images.githubusercontent.com/85470797/219279491-ecafd8d3-4fab-4593-9083-8ad0d50f0fab.png)
![image](https://user-images.githubusercontent.com/85470797/219279504-35cd6b3f-098d-489c-831a-f66a9ac7f195.png)
![image](https://user-images.githubusercontent.com/85470797/219279523-565e605f-45ee-4496-aff1-03bd3967e240.png)
![image](https://user-images.githubusercontent.com/85470797/219279560-627ecc96-569a-4b1f-83fd-7fd485117027.png)
![image](https://user-images.githubusercontent.com/85470797/219279572-b09b7da6-2617-476d-ab03-9c2b78f7f50a.png)
![image](https://user-images.githubusercontent.com/85470797/219279590-1e35478b-6445-4b27-9828-fb72e49ba086.png)
![image](https://user-images.githubusercontent.com/85470797/219279614-70041134-fbce-4e75-88c6-fccce8f4284b.png)
![image](https://user-images.githubusercontent.com/85470797/219279633-63fca305-db8a-4454-9f7a-981954383e24.png)
![image](https://user-images.githubusercontent.com/85470797/219279663-6b4f8d9f-c5a4-4f94-a5be-7351468fb473.png)
![image](https://user-images.githubusercontent.com/85470797/219279681-ae02b897-29cc-42e8-9d91-b1101c49768f.png)
![image](https://user-images.githubusercontent.com/85470797/219279713-976610d7-5cc6-4992-992e-eb699391f68d.png)
![image](https://user-images.githubusercontent.com/85470797/219279731-ac0f3988-0bbf-49f1-9599-b1f922245dd5.png)
![image](https://user-images.githubusercontent.com/85470797/219279747-e587588a-2da0-4f3e-8ad0-5dbb7c8ad8c6.png)
![image](https://user-images.githubusercontent.com/85470797/219279771-2e10b185-6e1b-43e9-84cb-b679280d0f33.png)
![image](https://user-images.githubusercontent.com/85470797/219279793-57e6aa6c-f773-45f0-bd5e-9cdc24c4b0f7.png)
![image](https://user-images.githubusercontent.com/85470797/219279801-9c85f147-5762-4169-a159-2905dc1ed6e3.png)
![image](https://user-images.githubusercontent.com/85470797/219279818-d5af0c8f-f4cd-46e3-9d65-35a3b62eacc4.png)
![image](https://user-images.githubusercontent.com/85470797/219279833-d3f44fe5-234f-4012-9660-4bd43fd4865b.png)
![image](https://user-images.githubusercontent.com/85470797/219279853-4d47494d-3702-42fd-a175-b23d8168ca31.png)
![image](https://user-images.githubusercontent.com/85470797/219279876-a908e4b1-7ec9-475c-be43-fd1e760d5463.png)
![image](https://user-images.githubusercontent.com/85470797/219279894-06a207d4-379d-40a9-b671-978e8b9b210a.png)
![image](https://user-images.githubusercontent.com/85470797/219279916-99d2ba5a-b5ae-486e-b6ad-59f4630b0af0.png)
![image](https://user-images.githubusercontent.com/85470797/219279944-fee81953-9106-49e8-a3b5-0f28310aa0a2.png)
![image](https://user-images.githubusercontent.com/85470797/219279964-6611acf7-5039-45c2-8301-cea3d3581656.png)
![image](https://user-images.githubusercontent.com/85470797/219279990-e6c3f5e8-7450-4cd2-9f18-1e05b8adecce.png)
![image](https://user-images.githubusercontent.com/85470797/219280009-c9e9c4cd-5d4c-44dd-a68c-9734502d8dce.png)
![image](https://user-images.githubusercontent.com/85470797/219280037-93fec772-446c-45f6-9e41-6e86de7117a4.png)
![image](https://user-images.githubusercontent.com/85470797/219280057-067159eb-b2c7-45e4-a786-90e1b8a5a924.png)
![image](https://user-images.githubusercontent.com/85470797/219280075-6c3fc376-d911-4f6e-8d60-ccd870bd90e3.png)
![image](https://user-images.githubusercontent.com/85470797/219280096-402459ea-673d-4732-b613-1a356bf649ab.png)
![image](https://user-images.githubusercontent.com/85470797/219280115-f5b7525e-be69-4756-9aeb-cd4ae23b0b97.png)
![image](https://user-images.githubusercontent.com/85470797/219280136-7771b53d-3576-48a3-b62b-c3808a761c61.png)
![image](https://user-images.githubusercontent.com/85470797/219280160-bf8c8685-1b73-4998-9ce1-fb524e9e599e.png)
![image](https://user-images.githubusercontent.com/85470797/219280184-fa34b00e-be7b-49f6-b297-3362969e5e6c.png)



