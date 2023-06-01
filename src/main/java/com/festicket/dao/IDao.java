package com.festicket.dao;

import java.util.List;

import com.festicket.dto.EventDto;

public interface IDao {
//	public List<EventDto> getEventListDao(int amount, int pageNum); // 이벤트 글 목록 가져오기
//	public EventDto contentViewDao(String eventNum); // 리스트에서 선택한 특정 글 가져오기
//	public void deleteDao(String eventNum); // 글 지우기
	
	// 이벤트 가져오기
	public List<EventDto> eventListDao(); // 모든 이벤트 리스트
	public int totalEventCountDao(); // 이벤트의 총 개수
	
	// admin
	
}