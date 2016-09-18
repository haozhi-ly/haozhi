
package com.haozhi.mapper;

import org.apache.ibatis.annotations.Param;

public interface SelfMessageMapper {
	int insertMessage(@Param("sendman")Integer sendman,@Param("receiveman")Integer receiveman,@Param("scontent")String scontent);
}
