package com.study.board.controller;

import com.study.board.entity.Board;
import com.study.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;
    @GetMapping("/board/write") //localhost:8090/board/write
    public String boardWriteForm() {

        return "boardWrite";
    }

    @PostMapping("/board/writePro")
    public String boardWritePro(Board board, Model model, MultipartFile file) throws Exception {

        boardService.write(board, file);

        model.addAttribute("message", "글 작성이 완료되었습니다.");
        model.addAttribute("searchURL","/board/list");

        return "message";
    }

    @GetMapping("/board/list")
    public String boardList(Model model, @PageableDefault(page = 0, size = 10, sort = "boardid", direction = Sort.Direction.DESC) Pageable pageable) {

        model.addAttribute("list",boardService.boardList(pageable));

        return "boardList";
    }

    @GetMapping("/board/view") //localhost:8090/board/view?id=1
    public String boardView(Model model, Integer boardid) {

        model.addAttribute("board",boardService.boardView(boardid));

        return "boardView";
    }

    @GetMapping("/board/delete")
    public String boardDelete(Integer boardid) {

        boardService.boardDelete(boardid);

        return "redirect:/board/list";
    }

    @GetMapping("/board/modify/{boardid}")
    public String boardModify(@PathVariable("boardid") Integer boardid, Model model) {

        model.addAttribute("board",boardService.boardView(boardid));

        return "boardModify";
    }

    @PostMapping("/board/update/{boardid}")
    public String boardUpdate(@PathVariable("boardid") Integer boardid, Board board, MultipartFile file) throws Exception {

        Board boardTemp = boardService.boardView(boardid);
        boardTemp.setTitle(board.getTitle());
        boardTemp.setContent(board.getContent());

        boardService.write(boardTemp, file);

        return "redirect:/board/list";
    }
}

