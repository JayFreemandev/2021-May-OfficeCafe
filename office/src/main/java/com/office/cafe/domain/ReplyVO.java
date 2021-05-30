package com.office.cafe.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	private Integer rid;
	private Integer bid;
	private String contents;
	private String reg_id;
	private Date reg_dt;
	private Date edit_dt;
}
