package com.festicket.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventDto {
   
   private int eventNum; // 행사번호
   private String type; // 행사분류
   private String gunName; // 자치구
   private String title; // 행사명
   private String eventDate; // 행사기간
   private String place; // 장소
   private String org_name; // 기관명
   private String use_trgt; // 이용대상
   private String player; // 출연자 정보
   private String program; // 프로그램소개
   private String org_link; // 홈페이지주소
   private String main_img; // 대표이미지
   private String rgstDate; // 등록일
   private Date start_date; // 시작일
   private Date end_date; // 종료일
   private String eventPrice; // 이용요금
   private int ticketCount; // 총 티켓 개수
   
}