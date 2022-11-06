package com.study.board.controller;

import com.study.board.entity.Board;
import com.study.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;
    @GetMapping("/board/write") //localhost:8090/board/write
    public String boardWriteForm() {
        return "boardWrite";
    }

    @PostMapping("/board/writePro")
    public String boardWritePro(Board board) {
        boardService.write(board);
        return "redirect:/board/list";
    }

    @GetMapping("/board/list")
    public String boardList(Model model) {

        model.addAttribute("list",boardService.boardList());
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
    public String boardUpdate(@PathVariable("boardid") Integer boardid, Board board) {

        Board boardTemp = boardService.boardView(boardid);
        boardTemp.setTitle(board.getTitle());
        boardTemp.setContent(board.getContent());

        boardService.write(boardTemp);

        return "redirect:/board/list";
    }
}

