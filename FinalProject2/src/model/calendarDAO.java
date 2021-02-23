package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	public int insertData(String date, String text, int userUid) {
		try {
			conn();
			String sql = "insert into CALENDAR values(CALNUM.NEXTVAL,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
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
