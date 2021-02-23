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
			//1. lib에 jar 넣어주기
			//2. 동적로딩방식
				//calss찾기:이클립스와 데이터베이스 사이에 통로를 만들어주는 역할
				Class.forName("oracle.jdbc.driver.OracleDriver");
				//DB의 문을 열 수 있는 주소와 아이디, 비밀번호 (카드키를 열기위한)
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String dbid = "hr";
				String dbpw = "hr";
				
				//DB문을 열수 있는 카드키
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
