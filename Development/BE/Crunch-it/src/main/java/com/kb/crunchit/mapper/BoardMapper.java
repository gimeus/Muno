package com.kb.crunchit.mapper;

import com.kb.crunchit.dto.request.CommentRequestDTO;
import com.kb.crunchit.dto.request.BoardRequestDTO;
import com.kb.crunchit.dto.response.BoardResponseDTO;
import com.kb.crunchit.entity.Board;
import com.kb.crunchit.entity.Comment;
import org.apache.ibatis.annotations.Mapper;
import java.util.*;

@Mapper
public interface BoardMapper {

    //게시글 목록 조회
    List<Board> selectAllBoards();

    //특정 게시글 조회
    Board selectBoard(int boardId);

    void insertBoard(BoardRequestDTO boardRequestDTO);
    void modifyBoard(BoardRequestDTO boardRequestDTO);
    void deleteBoard(int boardId);
//    void deleteLikesByBoardId(int boardId);

//    int selectBoardForLikes(int boardId);







}
