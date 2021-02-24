package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class calendarDAO {

	
	
	int cnt =0;
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	
	
	public void conn() {
		
		try {
			//1. lib�� jar �־��ֱ�
			//2. �����ε����
				//calssã��:��Ŭ������ �����ͺ��̽� ���̿� ��θ� ������ִ� ����
				Class.forName("oracle.jdbc.driver.OracleDriver");
				//DB�� ���� �� �� �ִ� �ּҿ� ���̵�, ��й�ȣ (ī��Ű�� ��������)
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String dbid = "hr";
				String dbpw = "hr";
				
				//DB���� ���� �ִ� ī��Ű
				conn = DriverManager.getConnection(url,dbid,dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt != null) {
					psmt.close();
			}if(conn != null) {
				conn.close();
			}
			
			}catch (Exception e) {
					e.printStackTrace();
				}
	}
	public ArrayList<calendarVO> getList(String date, int userUid){
		ArrayList<calendarVO> c_list = new ArrayList<calendarVO>();
		try {
			conn();
			
			String sql = "select * from calendar where CA_DATE = ? and USER_UID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, date);
			psmt.setInt(2, userUid);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int calUid = rs.getInt("CAL_UID");
				String ca_date = rs.getString("CA_DATE");
				String ca_text = rs.getString("CA_TEXT");
				
				calendarVO vo = new calendarVO(calUid, ca_date, ca_text, userUid);
				c_list.add(vo);
			
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		return c_list;
		
	}
	
	public int insertData(String date, String text, int userUid) {
		try {
			conn();
			String sql = "insert into CALENDAR values(CALNUM.NEXTVAL,?,?,?)";
			psmt = conn.prepareStatement(sql);
			System.out.println("dao : "+text);
			psmt.setString(1, date);
			psmt.setString(2, text);
			psmt.setInt(3, userUid);
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
		
	}
	
	
}
