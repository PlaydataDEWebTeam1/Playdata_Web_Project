package com.work.dto;





import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
	private int userNo;
	private String diseaseNo;
	private int subscribeNo;
	private String userId;
	private String userPw;
	private String loginType;
	private String userName;
	private String phone;
	private String email;
	private String birth;
	private String height;
	private String weight;
	private String subscribeYn;
	private String entryDate;
	private String lastUpdate;
}
