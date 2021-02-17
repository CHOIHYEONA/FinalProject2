package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class boardDAO {
	int cnt =0;
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	customersVO userInfo = null;
	
	public void conn() {
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String dbid = "hr";
				String dbpw = "hr";
				
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
	
	public int insertData (boardVO vo) {
		try {
			conn();
			String sql = "insert into board2 values(boardNum.nextval,?,sysdate,?,?,0,0,?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getB_title());
			psmt.setString(2, vo.getImgName());
			psmt.setString(3, vo.getB_content());
			psmt.setInt(4, vo.getUserUid());
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
			
		}
	
	
	public int deleteDate(boardVO vo) {
		try {
			conn();
			String sql = "delete from board where board_Uid = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, vo.getBoardUid());
			
			cnt = psmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

}
