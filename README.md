SWB(Spring Web Board)
============

Spring framework를 이용해서 구현하였고, MySQL,Oracle을 이용한 회원관리&게시판기능이 있는 웹사이트입니다.

![Alt text](/src/main/webapp/resources/images/Spring-Main사진.png)

컴포넌트 구조 설명
----------
[java]
* Controller
  * MemberController.java (회원관련 CRUD, Ajax에 사용하는 DB값 매핑 컨트롤러)
  * BoardController.java  (게시판&댓글 CRUD 매핑 컨트롤러)
* Service
  * member
    * MemberService.java (MemberService 인터페이스)
    * MemberServiceImpl.java (MemberSerivce 인터페이스를 상속받아 세분화된 비지니스 로직을 처리하는 MemberSerivce객체)
  * board
    * BoardService.java (BoardService 인터페이스)
    * BoardServiceImpl.java (BoardSerivce 인터페이스를 상속받아 세분화된 비지니스 로직을 처리하는 BoardSerivce객체)
  * reply
    * ReplyService.java (ReplyService 인터페이스)
    * ReplyServiceImpl.java (ReplySerivce 인터페이스를 상속받아 세분화된 비지니스 로직을 처리하는 ReplySerivce객체)
* Dao
  * member
    * MemberDao.java (MemberDao 인터페이스)
    * MemberDaoImpl.java (MemberDao 인터페이스를 상속받아 DB에 접근해 데이터를 조작하는 MemberDao객체)
  * board
    * BoardDao.java (BoardDao 인터페이스)
    * BoardDaoImpl.java (BoardDao 인터페이스를 상속받아 DB에 접근해 데이터를 조작하는 BoardDao객체)
  * reply
    * ReplyDao.java (ReplyDao 인터페이스)
    * ReplyDaoImpl.java (ReplyDao 인터페이스를 상속받아 DB에 접근해 데이터를 조작하는 ReplyDao객체)
* Domain
  * member
    * MemberVO.java (데이터베이스 레코드의 데이터를 매핑하기위한 Member데이터 객체)
  * board
    * BoardVO.java (데이터베이스 레코드의 데이터를 매핑하기위한 Board데이터 객체)
  * reply
    * ReplyVO.java (데이터베이스 레코드의 데이터를 매핑하기위한 Reply데이터 객체)
* Intercepter
  * AuthenticationInterceptor.java (페이지 접근시 로그인 인증을 위한 컨트롤러)
* Validator
  * MemberValidator.java (Validator 인터페이스를 상속받아 회원가입시 서버측에서 폼값 검증을 위한 클래스)
  * MemberUpdateValidator.java  (Validator 인터페이스를 상속받아 회원정보 수정시 서버측에서 폼값 검증을 위한 클래스)
* JS(javascript)
  * sign_up.js (회원가입 시 Ajax를 이용해 클라이언트에서 폼값 검증을 위한 JS)
  * modify_member.js  (회원정보 수정시 Ajax를 이용해 클라이언트에서 폼값 검증을 위한 JS)
