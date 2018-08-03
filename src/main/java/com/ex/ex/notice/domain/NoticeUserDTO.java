package com.ex.ex.notice.domain;

public class NoticeUserDTO {

	private String uName;

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	@Override
	public String toString() {
		return "NoticeUserDTO [uName=" + uName + "]";
	}

}
