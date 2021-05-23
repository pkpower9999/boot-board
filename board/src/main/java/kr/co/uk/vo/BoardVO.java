package kr.co.uk.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	
	private int seq;
	private String title;
	private String content;
	private String registuser;
	private Date registdate;
	private String updateuser;
	private Date updatedate;
	private String status;
	private String files_seq;
	private String password;
	

}
