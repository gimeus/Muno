package com.kb.crunchit.mapper.recommendation.api;

import com.kb.crunchit.entity.BondInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecommendationApiBondMapper {
    // 채권 정보 삽입
    void insertBond(BondInfo bond);

    // 채권 정보 업데이트
    void updateBond(BondInfo bond);

    // 채권이 존재하는지 확인
    int exists(String productCode);
}
