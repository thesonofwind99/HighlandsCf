package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Cate_prodDAO;

/**
 * Servlet implementation class Home
 */
@WebServlet("/home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cate_prodDAO dao = new Cate_prodDAO();
		request.setAttribute("list1", dao.selectAllByNameCate("Deal đang diễn ra"));
		request.setAttribute("list2", dao.selectAllByNameCate("Sản phẩm bán chạy"));
		request.setAttribute("list3", dao.selectAllByNameCate("Cà phê rang say"));
		request.setAttribute("list4", dao.selectAllByNameCate("Cà phê uống liền"));
		request.getRequestDispatcher("/views/index.jsp").forward(request, response);
	}


}
