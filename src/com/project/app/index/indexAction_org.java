package com.project.app.index;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.action.Action;
import com.project.action.ActionForward;
import com.project.app.board.dao.BoardDAO;
import com.project.app.moim.dao.MoimDAO;
import com.project.app.moim.dto.FollowDTO;
import com.project.app.moim.dto.MoimDTO;
import com.project.app.moim.dto.PlaceDTO;
import com.project.app.user.dao.UserDAO;
import com.project.app.user.dao.UserDTO;

public class indexAction_org implements Action{
   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      
      UserDAO udao = new UserDAO();
      MoimDAO mdao = new MoimDAO();
      
      ActionForward forward = new ActionForward();
      forward.setRedirect(false);
      
      HttpSession session = req.getSession();
      UserDTO user = (UserDTO)session.getAttribute("session");

	//세션이 비어있으면 홈 이동할때 이동이 안됨, 따라서 세션이 비어있는지 체크해야함
	//세션이 비어있지 않다면(로그인상태라면) 아래 로직을 모두 수행
      if(session.getAttribute("session")!=null) {
    	  System.out.println("세션 비어있는지 확인(여기 들어왔다면 세션에 뭔가 있다는거) : " + session.getAttribute("session"));
      }
      
      
//오늘의 모임 담당 ---------------------------------------------------------------------------------------------------------------------------

      List<MoimDTO> todayMoimList = mdao.getTodayMoimList();
      req.setAttribute("todayMoimList", todayMoimList);
      
//----------------------------------------------------------------------------------------------------------------------------------------   


//인기 게시글 ---------------------------------------------------------------------------------------------------------------------------
      BoardDAO bdao = new BoardDAO();
//		리스트에서 보여달라고 요청한 페이지
      String temp = req.getParameter("page");
//		처음으로 리스트에 들어오는 중이라면 요청하고 있는 page번호가 없으므로 그때는 무조건 1번 페이지를 띄워줘야 한다.
      int page = temp == null?1:Integer.parseInt(temp);
//		한 페이지에 보여줄 게시글의 개수
      int pageSize = 5;
//		전체 게시글의 개수
      int totalCnt = bdao.getIndexBoardCnt();
//		보여줘야 되는 마지막 게시글의 rownum
      int endRow = page*pageSize;
//		보여줘야 되는 첫번째 게시글의 rownum
      int startRow = endRow-pageSize+1;
//		아래쪽 페이징 처리의 보여지는 첫번째 페이지 번호
      int startPage = ((page-1)/pageSize)*pageSize+1;
//		아래쪽 페이징 처리의 보여져야 하는 마지막 페이지 번호를 연산으로 구한것
      int endPage = startPage + pageSize-1;
//		전체 개수를 기반으로 가장 마지막 페이지 번호
      int totalPage = (totalCnt-1)/pageSize + 1;
//		가장 마지막 페이지 번호보다 연산으로 구해진 endPage가 더 큰 경우도 있다.(허구의 페이지 번호)
//		그때는 endPage를 가장 마지막 페이지 번호로 바꿔준다.
      endPage = endPage>totalPage?totalPage:endPage;
		
      req.setAttribute("totalPage", totalPage);
      req.setAttribute("totalCnt", totalCnt);
      req.setAttribute("page", page);
      req.setAttribute("startPage",startPage);
      req.setAttribute("endPage", endPage);
      req.setAttribute("boardList", bdao.getIndexBoardList(startRow,endRow));
		
//----------------------------------------------------------------------------------------------------------------------------------------
      
//투데이 나의 모임 --------------------------------------------------------------------------------------------------------------
      
      int moimcnt = 0;
      moimcnt = mdao.getMaxTodayMoimNum(user.getUserid());
      if(moimcnt != 0) {
         int moimnum = mdao.getTodayMoimNum(user.getUserid());
         int placenum = mdao.getMPlaceNum(moimnum);
         
         MoimDTO moim = mdao.getDetail(moimnum);
        PlaceDTO place = mdao.getPlaceDetail(placenum);
         
        req.setAttribute("moim", moim);
        req.setAttribute("place", place);
        req.setAttribute("moimcnt", moimcnt);
      }else if(moimcnt ==0) {
         req.setAttribute("moimcnt", moimcnt);       
      }

      
//-------------------------------------------------------------------------------------------------------------------------------
      
//친구 목록 ---------------------------------------------------------------------------------------------------------------------------

		String userid = user.getUserid();
		int totalCntF = udao.getIndexFollowCnt();
		int pageSizeF = 3;
		int endRowF = page * pageSizeF;
		int startRowF = endRowF - pageSizeF + 1;
		int startPageF = ((page - 1) / pageSizeF) * pageSizeF + 1;
		int endPageF = startPageF + pageSizeF - 1;
		int totalPageF = (totalCntF - 1) / pageSizeF + 1;
		endPageF = endPageF > totalPageF ? totalPageF : endPageF;

		req.setAttribute("totalPageF", totalPageF);
		req.setAttribute("totalCntF", totalCntF);
		req.setAttribute("page", page);
		req.setAttribute("startPageF", startPageF);
		req.setAttribute("endPageF", endPageF);
		req.setAttribute("FriendList", udao.getIndexFriendList(startRowF, endRowF, userid));
      
//----------------------------------------------------------------------------------------------------------------------------------------      
      //세션이 비어있으면 홈 이동할때 이동이 안됨, 따라서 세션이 비어있는지 체크해야함
      if(session==null) {
         forward.setPath("/index.jsp");
         return forward;   
      }
      forward.setPath("/index.jsp");
	return forward;
   }
}