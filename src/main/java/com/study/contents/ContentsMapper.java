package com.study.contents;

import java.util.List;
import java.util.Map;

public interface ContentsMapper {

	ContentsDTO detail(int contentsno);

	int create(ContentsDTO dto);

	int update(ContentsDTO dto);

	int total(Map map);

	List<ContentsDTO> list(Map map);

	int updateFile(Map map);
	
	List<Map> getCategory();
	
	List<ContentsDTO> mainlist(Map map);

}