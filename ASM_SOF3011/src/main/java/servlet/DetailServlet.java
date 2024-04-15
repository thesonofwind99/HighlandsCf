package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ImgDAO;
import dao.ProdDAO;
import model.Prod;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProdDAO dao = new ProdDAO();
		ImgDAO dao_img = new ImgDAO();
		String id = request.getParameter("index");
		Prod prod = dao.findByID(id);
		List<String> list_img = dao_img.selectAllImgById(prod);
		for (String string : list_img) {
			System.out.println(string);
		}
		request.setAttribute("item", prod);
		request.setAttribute("list_img", list_img);
		request.getRequestDispatcher("/views/detail_prod.jsp").forward(request, response);
	}


}
