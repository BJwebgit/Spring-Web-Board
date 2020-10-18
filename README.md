SWB(Spring Web Board)
============

Spring framework를 이용해서 구현하였고, MySQL,Oracle을 이용한 회원관리 게시판기능이 있는 웹사이트입니다.

![Alt text](/src/main/webapp/resources/images/Spring-Main사진.png)

컴포넌트 구조 설명
----------

* controller
  * MemberController.java (회원관련 CRUD, Ajax에 사용하는 DB값 매핑 컨트롤러)
  * BoardController.java  (게시판&댓글 CRUD 매핑 컨트롤러)
* service
  * member
    * MemberService.java (MemberSerivce 인터페이스)
    * MemberServiceImpl.java (MemberSerivce 인터페이스를 상속받아 세분화된 비지니스 로직을 처리하는 Serivce객체)
  * board
    * BoardService.java (BoardSerivce 인터페이스)
    * BoarderviceImpl.java (BoardSerivce 인터페이스를 상속받아 세분화된 비지니스 로직을 처리하는 Serivce객체)
  * reply
    * ReplyService.java (ReplySerivce 인터페이스)
    * ReplyServiceImpl.java (ReplySerivce 인터페이스를 상속받아 세분화된 비지니스 로직을 처리하는 Serivce객체)
