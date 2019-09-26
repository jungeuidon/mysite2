package kr.co.itcen.mysite.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.itcen.mysite.dao.BoardDao;
import kr.co.itcen.mysite.vo.BoardVo;
import kr.co.itcen.web.WebUtils;
import kr.co.itcen.web.mvc.Action;

public class WriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("no")!=null){  //답글처리
			int no = Integer.parseInt(request.getParameter("no"));
			System.out.println("no : " + no);
			BoardVo boardVo = new BoardDao().getGroup(no);
			
			request.setAttribute("flag", 1);
			request.setAttribute("boardVo", boardVo);
		} else {	
			request.setAttribute("flag", 0);
		}
		WebUtils.forward(request, response, "WEB-INF/views/board/write.jsp");
	}
}
