package com.wardrobe.service;

import java.util.List;

import com.wardrobe.entity.Comment;

public interface CommentService {
	// 填加评论
	boolean addComment(Comment comment);

	// 删除评论
	boolean deleteComment(int id);

	// 修改评论信息
	boolean alterComment(Comment user);

	// 查询所有评论
	List<Comment> queryAll();
}
