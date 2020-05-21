package com.wardrobe.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wardrobe.dao.ICommentDao;
import com.wardrobe.entity.Comment;
import com.wardrobe.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	@Resource
	private ICommentDao commentDao;

	@Override
	public boolean addComment(Comment comment) {
		// TODO Auto-generated method stub
		int res = commentDao.addComment(comment);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteComment(int id) {
		// TODO Auto-generated method stub
		int res = commentDao.deleteComment(id);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean alterComment(Comment user) {
		// TODO Auto-generated method stub
		int res = commentDao.alterComment(user);
		if (res > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<Comment> queryAll() {
		// TODO Auto-generated method stub
		return commentDao.queryAll();
	}

}
