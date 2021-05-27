package com.office.cafe.domain;



import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@AllArgsConstructor
@Getter
@Data
public class ReplyPageDTO {

  
  private int replyCnt;
  private List<ReplyVO> list;
}
