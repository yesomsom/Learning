package com.study.board.repository;

import com.study.board.entity.Board;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
/* JpaRepository<클래스,primary key 형> */
public interface BoardRepository extends JpaRepository<Board,Integer> {

}
