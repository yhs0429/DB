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

   2. DAO -> total 추가 (검색 기능 추가 역활)

   3. DAO -> list 수정(검색 기능 추가)]

   4. list.jsp 수정 (검색 / 페이징 기능 추가)

7. DAO 수정 (read 기능 추가)

   1. read 선언

   2. upViewcnt 선언 (조회수 기능)

   3. read.jsp 생성 (게시글 클릭하면 read.jsp 에서 작성 내용들을 보는 역활)

   4. list.jsp 수정 (게시글 클릭하면 read.jsp 페이지로 바뀌는 기능 추가)

8. DAO 수정 (update 기능 추가)

   1. update 선언

   2. updateForm.jsp 생성 (updateForm 페이지에서 보이게 만드는 역활)

   3. list.jsp 수정

   4. read.jsp 수정 (수정 버튼 기능 추가)

9. 패스워드 검사 기능 추가

   1. DAO에 passCheck 추가 (패스워드 검사 기능 추가 역활)

10. DAO 수정 (delete 기능 추가)

    1. delete 선언

    2. deleteForm.jsp 생성 (deleteForm 페이지에서 보이게 만드는 틀 역활)

    3. read.jsp 수정 (제거 버튼 기능 추가)

    4. deleteProc.jsp 생성 (form에서 패스워드로 삭제한 값들을 없애주는 역활)

11. 답변 기능 추가

    1. DAO에 create 수정 (생성할때마다 grpno +1 증가하도록)

    2. replyForm.jsp 생성 (replyForm 페이지에서 보이게 만드는 틀 역활)

    3. read.jsp 수정 (답변 버튼 기능 추가)

    4. DAO에 readReplay 선언 ('게시글' read가 아닌 '답변' read 기능 역활)

12. 답변 처리 페이지 추가

    1. DAO에 createReply 선언 (답변을 생성할 때마다 grpno는 그대로 / indent, ansnum이 1씩 증가하도록)

    2. DAO에 upAnsnum 선언 (답변의 순서를 정해주는 역활)

    3. replyProc.jsp 생성 (답변을 생성하는 역활)

    4. list.jsp 수정 (답변 기능)

13. 새로운 글에 이미지 기능 추가

    1. SQL 수정 (날짜를 다르게 하기 위함)

    2. utility.java 수정 (등록 날짜와 비교하는 역활)

    3. list.jsp 수정 (이미지 추가하는 역활)

---
