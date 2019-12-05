package com.iu.project.repository;

import java.util.List;

import com.iu.project.model.Board;

public interface BoardRepository {
	List<Board> findAll();

	int save(Board board);// 글쓰기

	int update(Board board);// 수정하기

	Board findById(int id);// 상세보기

	int delete(int id);// 삭제하기
}
