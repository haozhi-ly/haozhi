
package com.haozhi.mapper;

import org.apache.ibatis.annotations.Param;

public interface AttentionMapper {
	int judgeAttion(@Param("attention")Integer attention,@Param("userid")Integer userid); //判断是否为关注人
	
	int insertAttion(@Param("attention")Integer attention,@Param("userid")Integer userid);
	
	int delAttion(@Param("attention")Integer attention,@Param("userid")Integer userid);

	int getInformation(int userid);
}
