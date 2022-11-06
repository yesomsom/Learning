package com.study.board.service;

import com.study.board.entity.Board;
import com.study.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {
    // new로 객체 생성 안해도 @Autowired 쓰면 알아서 객체 생성
    @Autowired
    private BoardRepository boardRepository;

    // 글 작성 insert
    public void write(Board board) {
        boardRepository.save(board);
    }

    // 게시글 전체 리스트
    public List<Board> boardList() {
        return boardRepository.findAll(); // List<Board> 반환
    }

    // 특정 게시글 상세 페이지
    public Board boardView(Integer boardid) {
        return boardRepository.findById(boardid).get();
    }

    // 특정 게시글 삭제
    public void boardDelete(Integer boardid) {
        boardRepository.deleteById(boardid);
    }
}
