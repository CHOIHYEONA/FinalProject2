package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	public ArrayList<boardVO> getList(){
		ArrayList<boardVO> b_list = new ArrayList<boardVO>();
		try {
			conn();
			
			String sql = "select * from board2";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int boardUid = rs.getInt("board_Uid");
				String b_title = rs.getString("b_title");
				String b_date = rs.getString("b_date");
				String imgName = rs.getString("imgName");
				String b_content = rs.getString("b_content");
				int b_count = rs.getInt("b_count");
				int b_like = rs.getInt("b_like");
				int userUid = rs.getInt("user_Uid");
				
				boardVO vo = new boardVO(boardUid, b_title, b_date, imgName, b_content, b_count, b_like, userUid);
				
				b_list.add(vo);
			
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
		return b_list;
		
	}
	public int insertData (boardVO vo) {
		try {
			conn();
			String sql = "insert into board2 values(boardNum.nextval,?,sysdate,?,?,1,1,?)";
			
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
