package com.study.board.service;

import com.study.board.entity.Board;
import com.study.board.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.UUID;

@Service
public class BoardService {
    // new로 객체 생성 안해도 @Autowired 쓰면 알아서 객체 생성
    @Autowired
    private BoardRepository boardRepository;

    // 글 작성 insert
    public void write(Board board, MultipartFile file) throws Exception {

        // 저장할 경로 지정
        String projectPath = System.getProperty("user.dir") + "\\src\\main\\resources\\static\\files";

        // 파일에 붙일 랜덤 이름 생성
        UUID uuid = UUID.randomUUID();
        
        // 저장될 파일 이름 설정
        String fileName = uuid + "_" + file.getOriginalFilename();
        
        File saveFile = new File(projectPath, fileName); // 객체 생성, 경로랑 파일 이름을 매개변수로
        file.transferTo(saveFile); // throws Exception 처리 해주어야 오류가 안남

        board.setFilename(fileName);
        board.setFilepath("/files/"+fileName);
        boardRepository.save(board);
    }

    // 게시글 전체 리스트
    public Page<Board> boardList(Pageable pageable) {

        return boardRepository.findAll(pageable); // List<Board> 반환
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
