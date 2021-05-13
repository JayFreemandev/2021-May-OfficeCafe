package com.office.cafe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private long board_no;
	private String board_title;
	private String board_contents;
	private long board_read;
	private long board_hate;
	private Date board_created_date;
	private String board_creator_id;
	private Date board_update_date;

}
