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
		//��ȡҳ��Ҫ��ѯ��ҳ��
		String pageno=request.getParameter("pageNos");
		//�ж��Ƿ�Ϊ�գ�����ת��
		if(pageno != null){
			pageNo=Integer.parseInt(pageno);
		}
		//����bookdao��listBook��������ȡ���ݿ��ѯ��ҳ�������
		try {
			lists=userdao.listUser(pageNo);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//��ȡ��ҳ��
		try {
			int recordCount=userdao.getPage();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//��װ
		try {
			request.setAttribute("recordCount", userdao.getPage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("listss", lists);
		
		request.setAttribute("pageNos", pageNo);
		//����װ��ֵ���ݸ�userlist.jspҳ�棬ͨ�����������ҳ��
		request.getRequestDispatcher("query.jsp").forward(request, response);
	}
	public void init() throws ServletException {
	
	}
}
