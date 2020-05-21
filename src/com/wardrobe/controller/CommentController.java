package com.wardrobe.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wardrobe.entity.Comment;
import com.wardrobe.service.CommentService;

@Controller
public class CommentController {
	@Resource
	private CommentService commentService;

	@RequestMapping("/addComment")
	public String addComment(Comment comment) {
		// TODO Auto-generated method stub
		commentService.addComment(comment);
		return "";
	}

	@RequestMapping("/deleteComment")
	public String deleteComment(int id) {
		// TODO Auto-generated method stub
		commentService.deleteComment(id);
		return "";
	}

	@RequestMapping("/alterComment")
	public String alterComment(Comment user) {
		// TODO Auto-generated method stub
		commentService.alterComment(user);
		return "";
	}

	@RequestMapping("/queryAllComment")
	public List<Comment> queryAll() {
		// TODO Auto-generated method stub
		return commentService.queryAll();
	}
}
