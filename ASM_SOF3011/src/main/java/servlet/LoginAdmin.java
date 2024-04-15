package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminDAO;
import dao.ProdDAO;
import model.Admin;

/**
 * Servlet implementation class LoginAdmin
 */
@WebServlet("/loginAdmin")
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.getSession().setAttribute("admin", null);
    	req.getRequestDispatcher("/views/admin_login.jsp").forward(req, resp);
    }
    
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO dao_ad = new AdminDAO();
		ProdDAO dao_prod = new ProdDAO();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Admin admin = dao_ad.selectByID(username);
		if(admin == null) {
			req.setAttribute("message", "Không tồn tại tài khoản này");
			req.getRequestDispatcher("/views/admin_login.jsp").forward(req, resp);
		}else {
			if(!admin.getPassword().equals(password)) {
				req.setAttribute("message", "Sai mật khẩu");
				req.getRequestDispatcher("/views/admin_login.jsp").forward(req, resp);
			}else {			
				req.getSession().setAttribute("admin", admin);
				req.getSession().setAttribute("adminProdList", dao_prod.selectAll());
				req.getRequestDispatcher("/views/admin_list_prod.jsp").forward(req, resp);
			}
		}
	}

}
