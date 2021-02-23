package model;

public class calendarVO {

	private int calUid;
	private String ca_date;
	private String ca_text;
	private int userUid;
	public calendarVO(int calUid, String ca_date, String ca_text, int userUid) {
		super();
		this.calUid = calUid;
		this.ca_date = ca_date;
		this.ca_text = ca_text;
		this.userUid = userUid;
	}
	public int getCalUid() {
		return calUid;
	}
	public String getCa_date() {
		return ca_date;
	}
	public String getCa_text() {
		return ca_text;
	}
	public int getUserUid() {
		return userUid;
	}
	
	
}
