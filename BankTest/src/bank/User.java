package bank;

import java.sql.Connection;

import java.sql.ResultSet;


	public class User extends Conn{
	
		public int id;
		public String password;
		public String name;
		public String personId;
		public String phone;
		public String address;
		public String date;
		public  double balance;
		public String  loss;
		public int page;
		public int  pageSize;
		
		
		
		public void setPage(int  page2) {
			this.page = page2;
		}
		public void setPageSize(int  pageSize) {
			this.pageSize = pageSize;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPersonId() {
			return personId;
		}
		public void setPersonId(String personId) {
			this.personId = personId;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		public double getBalance() {
			return balance;
		}
		public void setBalance(double balance) {
			this.balance = balance;
		}
		public String getLoss() {
			return loss;
		}
		public void setLoss(String loss) {
			this.loss = loss;
		}
 

	
		private String strSql;
		public User() throws ClassNotFoundException {
			id = 0;
			password = "";
			name = "";
			personId = "";
			phone="";
			address="";
			date="";
			balance=0;
			strSql = "";
		}
		
		public boolean addUser() {
			strSql = "insert into user(id,password,name,personId,phone,address,date,balance)values('"+id+"','"+password+"','"+name+"','"+personId+"','"+phone+"','"+address+"','"+date+"','"+balance+"')";
			boolean isAdd = super.exeSql(strSql);
			return isAdd;
		}
		
		public boolean isModify(){
			strSql = "update user set balance='"+balance+"' where name='"+name+"'";
			boolean isAdd = super.exeSql(strSql);
			return isAdd;
		}
		public boolean isLoss(){
			strSql = "update user set loss='"+loss+"' where name='"+name+"'";
			boolean isAdd = super.exeSql(strSql);
			return isAdd;
		}
		
		

		public ResultSet BankQuery(){
			strSql = "select * from user ";
			ResultSet rs = null;
			try {
				rs = super.exeSqlQuery(strSql);
				return rs;
			} catch (Exception e) {
				System.out.println(e.toString());
				return rs;
			}
		}
		
		public ResultSet InfoQuery(){
			
			String strSql="select * from user order by id limit '"+page+"','"+pageSize+"'";
			ResultSet rs = null;
			try {
				rs = super.exeSqlQuery(strSql);
				return rs;
			} catch (Exception e) {
				System.out.println(e.toString());
				return rs;
			}
		}
		
		/**
		 * @判断用户名是否存在 by userName
		 */
		public boolean isExist() {
			strSql = "select * from user where name='"+name+"'";
			ResultSet rs = null;
			boolean isExist = false;
			try {
				rs = super.exeSqlQuery(strSql);
				while(rs.next()) {
					isExist = true;
				}
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return isExist;
		}
		/**
		 * @判断用户名和密码是否正确
		 */
		public boolean userValid() {
			strSql = "select * from user where name='" + name + "' and password='" + password + "'";
			ResultSet rs = null;
			boolean isValid = false;
			try {
				rs = super.exeSqlQuery(strSql);
				while (rs.next()) {
					this.balance=rs.getDouble("balance");
					this.id= rs.getInt("id");
					this.loss=rs.getString("loss");
					isValid = true;
				}
			} catch (Exception e) {
				System.out.println(e.toString());
			}	
			return isValid;
		}
		/**
		 * @获取某个用户的信息 by name
		 */
		public boolean init() {
			strSql = "select * from user where name=";
			strSql = strSql + "name";
			try {
				ResultSet rs = super.exeSqlQuery(strSql);
				if (rs.next()) {
					this.id = rs.getInt("id");
					this.name = rs.getString("name");
					this.password = rs.getString("password");
					this.balance = rs.getDouble("balance");	
					return true;
				} else {
					return false;
				}
			} catch (Exception e) {
				System.out.println(e.toString());
				return false;
			}
		}
		
		public ResultSet isSelect(){
			strSql = "select * from user where name='" + name + "'";
			ResultSet rs = null;
			try {
				rs = super.exeSqlQuery(strSql);
				return rs;
			} catch (Exception e) {
				System.out.println(e.toString());
				return rs;
			}
		}
		
	
		public static void main(String[] args) throws ClassNotFoundException {
			User user = new User();
			user.setId(111);
			user.setName("bbb");
			user.setPassword("123");
			user.setBalance(123);
			
			boolean res = user.userValid();
			System.out.println(res + "");
		}
		
}
