package find;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

import bank.Conn;
import bank.User;


public class UserDao{
	
	public UserDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getPage() throws ClassNotFoundException{
	
		int recordCount=0,t1=0,t2=0;
		User user=new User();
		user.BankQuery();
		try {
			user.BankQuery().next();
			recordCount=user.BankQuery().getInt(1);//查看第一条字段的数目（这里是“书号”）后返回的记录总数
		
			t1=recordCount%5;//记录总数/5后的余数
			t2=recordCount/5;//记录总数/5
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		//如果t1!=0,t2总页数是要加上1的
		if(t1 != 0){
			t2=t2+1;
		}
		
		return t2;
	}
	/**
	* 查询指定页的数据
	* @param pageNo
	* @return
	 * @throws ClassNotFoundException 
	*/
	public List<User> listUser(int pageNo) throws ClassNotFoundException{
		User user=new User();
		user.BankQuery();
		ResultSet result=null;
		List<User> list=new ArrayList<User>();
		
		//设置每页显示数据的数量
		int pageSize=5;
		int page=(pageNo-1)*5;
		try {	
	        user.setPage(page);
	        user.setPageSize(pageSize);
			result=user.InfoQuery();
		while(result.next()){
		
			user.setId(result.getInt(1));
			user.setPassword(result.getString(2));
			user.setName(result.getString(3));
			user.setPersonId(result.getString(4));
			user.setPhone(result.getString(5));
			user.setAddress(result.getString(6));
			user.setDate(result.getString(7));
			user.setBalance(result.getDouble(8));
			user.setLoss(result.getString(9));
			list.add(user);
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
