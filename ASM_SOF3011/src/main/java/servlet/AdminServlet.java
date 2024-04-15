package servlet;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import dao.ProdDAO;
import model.Prod;


/**
 * Servlet implementation class AdminServlet
 */
@MultipartConfig
@WebServlet({"/main","/admin/create", "/admin/update", "/admin/delete"})
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String uri = req.getRequestURI();
    	System.out.println(uri);
    	if(uri.contains("create")) {
    		this.doCreate(req, resp);
    	}
    	else if(uri.contains("update")) {
    		this.doUpdate(req, resp);
    	}else if(uri.contains("delete")) {
    		this.doRemove(req, resp);
    	}
    	ProdDAO dao_prod = new ProdDAO();
    	req.getSession().setAttribute("adminProdList", dao_prod.selectAll());
    	req.getRequestDispatcher("/views/admin_list_prod.jsp").forward(req, resp);
    }

    
    private void doCreate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    	try {
    		File dir = new File(req.getServletContext().getRealPath("/img"));
			if(!dir.exists()) { // Tạo nếu chưa tồn tại
				dir.mkdirs();
			}
			System.out.println(dir.getAbsolutePath());
			Part photo = req.getPart("img_main");//Lấy Part từ cái dữ liệu input name = 'img_main'
			File photoFile = new File(dir, photo.getSubmittedFileName());//Tạo file với name từ cái Part photo
			photo.write(photoFile.getAbsolutePath());//Ghi dữ liệu của cái Part photo vào file mới tạo (là photoFile đó) thông qua cái đường dẫn tuyệt đối của nó
    		ProdDAO dao = new ProdDAO();
        	Prod prod = new Prod();
			BeanUtils.populate(prod, req.getParameterMap());
			prod.setImg_main(photo.getSubmittedFileName());
			dao.create(prod);
			
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
    }
    
    private void doUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		ProdDAO dao = new ProdDAO();
		String id = req.getParameter("id");
		Prod prod = dao.findByID(id);
    	File dir = new File(req.getServletContext().getRealPath("/img"));
		if(!dir.exists()) { // Tạo nếu chưa tồn tại
			dir.mkdirs();
		}
		System.out.println(dir.getAbsolutePath());
		Part photo = req.getPart("img_main_again");//Lấy Part từ cái dữ liệu input name = 'img_main
		System.out.println(photo.toString());
		if(photo.getContentType()!=null && photo.getSize()!=0) {
			File photoFile = new File(dir, photo.getSubmittedFileName());//Tạo file với name từ cái Part photo
			photo.write(photoFile.getAbsolutePath());//Ghi dữ liệu của cái Part photo vào file mới tạo (là photoFile đó) thông qua cái đường dẫn tuyệt đối của nó
			String img_name = photo.getSubmittedFileName();
			prod.setImg_main(img_name);
		}
		String title_again = req.getParameter("title_again");
		Double price_again = Double.valueOf(req.getParameter("price_again"));
		prod.setTitle(title_again);
		prod.setPrice(price_again);
		dao.update(prod);
    }
    
    private void doRemove(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    	ProdDAO dao = new ProdDAO();
    	String id = req.getParameter("id_delete");
    	System.out.println(id);
    	Prod prod = dao.findByID(id);
    	dao.remove(id);
    }

}
