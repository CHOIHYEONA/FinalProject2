package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class commDAO {
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
	public ArrayList<commVO> selectData(int boardUid){
		ArrayList<commVO> list = new ArrayList<commVO>();
		try {
			conn();
			String sql = "select * from comm where board_Uid = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, boardUid);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int commUid = rs.getInt("comm_Uid");
				String c_date = rs.getString("c_date");
				String c_content = rs.getString("c_content");
				int userUid = rs.getInt("user_Uid");
				boardUid = rs.getInt("board_Uid");
				
				commVO vo = new commVO(commUid, c_date, c_content, userUid);
				
				list.add(vo);
			
		}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	public int insertData(String content, int userUid, int boardUid) {
		try {
			conn();
			String sql = "insert into comm values(commNum.nextval,sysdate,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, content);
			psmt.setInt(2, userUid);
			psmt.setInt(3, boardUid);
			
			cnt = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	public int deleteDate(commVO vo) {
		try {
			conn();
			String sql = "delete from comm where comm_Uid = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, vo.getCommUid());
			cnt = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
}
