package find;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bank.User;

public class ListUser extends HttpServlet {

	public ListUser() {
		super();
	}
	
	public void destroy() {
		super.destroy(); 
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");

		int pageNo = 1;
		UserDao userdao=new UserDao();
		List<User> lists=new ArrayList<User>();
		//获取页面要查询的页面
		String pageno=request.getParameter("pageNos");
		//判断是否为空，并且转型
		if(pageno != null){
			pageNo=Integer.parseInt(pageno);
		}
		//调用bookdao的listBook方法，获取数据库查询的页面的数据
		try {
			lists=userdao.listUser(pageNo);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//获取总页数
		try {
			int recordCount=userdao.getPage();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//封装
		try {
			request.setAttribute("recordCount", userdao.getPage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("listss", lists);
		
		request.setAttribute("pageNos", pageNo);
		//将封装的值传递给userlist.jsp页面，通过迭代输出到页面
		request.getRequestDispatcher("query.jsp").forward(request, response);
	}
	public void init() throws ServletException {
	
	}
}
