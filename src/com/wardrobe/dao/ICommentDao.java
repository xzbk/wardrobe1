package com.wardrobe.dao;

import java.util.List;

import com.wardrobe.entity.Comment;

public interface ICommentDao {
	// 填加评论
	int addComment(Comment comment);

	// 删除评论
	int deleteComment(int id);

	// 修改评论信息
	int alterComment(Comment user);

	// 查询所有评论
	List<Comment> queryAll();
}
