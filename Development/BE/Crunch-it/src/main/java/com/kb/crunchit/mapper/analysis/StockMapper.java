package com.kb.crunchit.mapper.analysis;

import com.kb.crunchit.dto.response.analysis.StockResponseDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StockMapper {

    int getUserIdByMdUserId(int mdUserId); // 사용자의 md_user_id를 이용해 메인 DB의 user_id를 조회

    boolean exists(@Param("stockCode") String stockCode, @Param("userId") int userId); // 특정 user_id에 대해 메인 DB에 존재하는 주식이 있는지 확인

    void updateStock(@Param("stock") StockResponseDto stock, @Param("userId") int userId); // 보유주식 정보 업데이트

    void insertStock(@Param("stock") StockResponseDto stock, @Param("userId") int userId); // 사용자가 보유한 새로운 주식 정보를 메인 DB에 삽입

    void deleteStock(@Param("stockCode") String stockCode, @Param("userId") int userId); // 사용자가 매도한 주식을 삭제

    List<String> getAllStockCodes(int userId); // 특정 user_id의 모든 주식 코드를 가져옴
}
