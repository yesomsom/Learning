package com.study.board.service;

import com.study.board.entity.Board;
import com.study.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
    // new로 객체 생성 안해도 @Autowired 쓰면 알아서 객체 생성
    @Autowired
    private BoardRepository boardRepository;
    public void write(Board board) {
        boardRepository.save(board);
    }
}
