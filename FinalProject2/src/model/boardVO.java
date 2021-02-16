package model;

public class boardVO {

	private int boardUid;
	private String b_title;
	private String b_date;
	private String b_content;
	private int b_count;
	private int b_like;
	private int userUid;
	private String imgName;


	public boardVO(int boardUid, String b_title, String b_date, String b_content, int b_count, int b_like, int userUid,
			String imgName) {
		super();
		this.boardUid = boardUid;
		this.b_title = b_title;
		this.b_date = b_date;
		this.b_content = b_content;
		this.b_count = b_count;
		this.b_like = b_like;
		this.userUid = userUid;
		this.imgName = imgName;
	}
	public String getB_content() {
		return b_content;
	}
	public String getImgName() {
		return imgName;
	}
	public int getBoardUid() {
		return boardUid;
	}
	public String getB_title() {
		return b_title;
	}
	public String getB_date() {
		return b_date;
	}
	
	public int getB_count() {
		return b_count;
	}
	public int getB_like() {
		return b_like;
	}
	public int getUserUid() {
		return userUid;
	}
	
	
	
}
