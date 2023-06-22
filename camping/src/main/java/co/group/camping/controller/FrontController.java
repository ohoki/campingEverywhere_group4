package co.group.camping.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.group.camping.board.command.AjaxBoardHit;
import co.group.camping.board.command.BoardAll;
import co.group.camping.board.command.BoardDelete;
import co.group.camping.board.command.BoardEdit;
import co.group.camping.board.command.BoardInsert;
import co.group.camping.board.command.BoardInsertForm;
import co.group.camping.board.command.BoardList;
import co.group.camping.board.command.BoardQnaList;
import co.group.camping.board.command.BoardSearch;
import co.group.camping.board.command.BoardSelect;
import co.group.camping.cart.command.CartDelete;
import co.group.camping.cart.command.CartInsert;
import co.group.camping.cart.command.CartList;
import co.group.camping.cart.command.CartUpdate;
import co.group.camping.board.command.BoardUpdate;
import co.group.camping.common.Command;
import co.group.camping.delivery.command.AllPurchase;
import co.group.camping.delivery.command.DeliveryInsert;
import co.group.camping.delivery.command.DeliveryList;
import co.group.camping.delivery.command.DeliveryResearch;
import co.group.camping.main.command.MainCommand;
import co.group.camping.member.command.AjaxCheckId;
import co.group.camping.member.command.MemberDelete;
import co.group.camping.member.command.MemberEdit;
import co.group.camping.member.command.MemberEditForm;
import co.group.camping.member.command.MemberInsert;
import co.group.camping.member.command.MemberJoin;
import co.group.camping.member.command.MemberList;
import co.group.camping.member.command.MemberLogin;
import co.group.camping.member.command.MemberLoginForm;
import co.group.camping.product.command.productInsertForm;
import co.group.camping.product.command.productList;
import co.group.camping.product.command.productPurchaseForm;
import co.group.camping.product.command.productSearch;
import co.group.camping.product.command.productSelect;
import co.group.camping.product.command.AjaxUpdateRecommend;
import co.group.camping.product.command.ProductIndividualList;
import co.group.camping.product.command.SortProduct;
import co.group.camping.product.command.productDelete;
import co.group.camping.product.command.productEdit;
import co.group.camping.product.command.productEditForm;
import co.group.camping.product.command.productInsert;
import co.group.camping.member.command.MemberLogout;
import co.group.camping.member.command.MemberPwEdit;
import co.group.camping.member.command.MemberPwEditForm;
import co.group.camping.member.command.MyPage;
import co.group.camping.member.command.SearchPw;
import co.group.camping.recommend.command.CampingRecommend;
import co.group.camping.review.command.ReviewDelete;
import co.group.camping.review.command.ReviewInsert;
import co.group.camping.review.command.ReviewInsertForm;
import co.group.camping.review.command.ReviewSelect;
import co.group.camping.review.command.ReviewUpdate;
import co.group.camping.review.command.ReviewUpdateForm;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainCommand());
		map.put("/memberList.do", new MemberList());
		map.put("/memberInsert.do", new MemberInsert());
		map.put("/memberJoin.do", new MemberJoin());
		map.put("/memberLogin.do", new MemberLogin());
		map.put("/memberLoginForm.do", new MemberLoginForm()); // 로그인 폼
		map.put("/memberLogout.do", new MemberLogout()); //로그아웃
		map.put("/myPage.do", new MyPage());
		map.put("/ajaxCheckId.do", new AjaxCheckId()); // 로그인 id 체크
		map.put("/memberPwEdit.do", new MemberPwEdit()); // 비밀번호 수정
		map.put("/memberPwEditForm.do", new MemberPwEditForm()); //비밀번호 수정 폼 호출
		map.put("/memberEdit.do", new MemberEdit()); // 내 정보 수정
		map.put("/memberEditForm.do", new MemberEditForm()); //내 정보 수정(이름, 주소, 전화번호) 폼 호출
		map.put("/memberDelete.do", new MemberDelete()); // 회원 탈퇴
		map.put("/searchPw.do", new SearchPw());
		map.put("/boardAll.do", new BoardAll()); 
		map.put("/boardInsert.do", new BoardInsert()); 
		map.put("/boardInsertForm.do", new BoardInsertForm()); 
		map.put("/boardEdit.do",new BoardEdit()); 
		map.put("/boardUpdate.do", new BoardUpdate());	
		map.put("/boardDelete.do", new BoardDelete());
		map.put("/boardList.do", new BoardList());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardQnaList.do", new BoardQnaList());
		map.put("/boardSearch.do", new BoardSearch());
		map.put("/ajaxBoardHit.do", new AjaxBoardHit());
		map.put("/campingRecommend.do", new CampingRecommend());
		map.put("/productList.do", new productList()); // 제품목록
		map.put("/productSearch.do", new productSearch());
		map.put("/productIndividualList.do", new ProductIndividualList()); // 제품목록
		map.put("/productInsertForm.do", new productInsertForm()); // 등록폼 열기
		map.put("/productInsert.do", new productInsert()); // 제품등록
		map.put("/productSelect.do", new productSelect()); // 제품 상세보기
		map.put("/productEditForm.do", new productEditForm()); // 제품 수정 폼 호출
		map.put("/productEdit.do", new productEdit()); // 제품 수정
		map.put("/productDelete.do", new productDelete()); // 제품 삭제
		map.put("/productPurchaseForm.do", new productPurchaseForm()); // 구매 폼 호출 
		map.put("/deliveryInsert.do", new DeliveryInsert()); 
		map.put("/allPurchase.do", new AllPurchase());
		map.put("/cart.do", new CartList());
		map.put("/cartDelete.do", new CartDelete());
		map.put("/cartInsert.do", new CartInsert());
		map.put("/cartUpdate.do", new CartUpdate());
		map.put("/SortProduct.do", new SortProduct());
		map.put("/ajaxUpdateRecommend.do", new AjaxUpdateRecommend());
		map.put("/deliveryList.do", new DeliveryList()); // 초기 리스트랑
		map.put("/deliveryResearch.do", new DeliveryResearch());
		map.put("/reviewInsertForm.do", new ReviewInsertForm()); 
		map.put("/reviewInsert.do", new ReviewInsert());
		map.put("/reviewSelect.do", new ReviewSelect());
		map.put("/reviewSelect.do", new ReviewSelect());
		map.put("/reviewUpdateForm.do", new ReviewUpdateForm());
		map.put("/reviewUpdate.do", new ReviewUpdate());
		map.put("/reviewDelete.do", new ReviewDelete());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청을 분석하고, 수행할 Command를 찾아서 수행하고, 결과를 돌려준다.
		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI(); // 호출한 URI를 구함
		String contextPath = request.getContextPath(); // root 를 구함
		String page = uri.substring(contextPath.length()); // 요청한 페이지 구함

		
		Command command = map.get(page); // 수행할 command를 가져온다
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
			viewPage += ".tiles";

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(viewPage); // 결과가 *.do이면 위임해버림
		}
	}
}
