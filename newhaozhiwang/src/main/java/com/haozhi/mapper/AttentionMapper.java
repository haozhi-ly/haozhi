
package com.haozhi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.Attention;

public interface AttentionMapper {
	int judgeAttion(@Param("attention")Integer attention,@Param("userid")Integer userid); //判断是否为关注人
	
	int insertAttion(@Param("attention")Integer attention,@Param("userid")Integer userid);
	
	int delAttion(@Param("attention")Integer attention,@Param("userid")Integer userid);

	List<Attention> getAttentionInfo(String userid);//通过userID得到他关注的人的信息

	String getAttentionCount(String userid);

	List<Attention> getFansInfo(String userid);

	String getFansCount(String string);
}
