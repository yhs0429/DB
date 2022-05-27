JSP

http 프로토콜을 이용한 요청과 응답의 서버환경

![요청,응답](https://github.com/yhs0429/JSP/blob/master/img/n1.jpg)

1. utlilty 생성(Constant , DBOpen , DBClose , Utlilty . java)

   1. DB와 java를 연동하기위함

2. SQL에 테이블 생성 후 데이터 삽입

3. DTO 생성

   1. SQL에서 만든 변수들 private 지정

   2. superclass/ filelds / getters and setters / toString / override methods 선언 **(alt+shift+s)**

4. DAO 생성 (create 추가)

   1. public boolean create(DTO dto) 선언
   2. createForm.jsp 생성 (페이지에서 보이게만드는 역활)
   3. createProc.jsp 생성 (form 에서 작성한 값들을 DTO, DB에 저장하는 역활)
   4. useBean 을 통해 createProc.jsp 의 입력값을 더 간편하게 바꿀 수 있음

5. DAO (list 추가)

   1. public List<AddrDTO> list() 선언

   2. list.jsp 생성 (페이지에서 보기에 만드는 역활)

6. 검색 / paging 기능 추가

   1. Utility 수정 (한 페이지에서 볼 수 있는 글자 수 설정)
   2. DAO에 total 추가 (검색 기능 추가 역활)
   3. DAO에
