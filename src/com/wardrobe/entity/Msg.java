package com.wardrobe.entity;

public class Msg {
	private int id;
	private boolean tag;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isTag() {
		return tag;
	}

	public Msg(boolean tag) {
		super();
		this.tag = tag;
	}

	public Msg(int id, boolean tag) {
		super();
		this.id = id;
		this.tag = tag;
	}

	public void setTag(boolean tag) {
		this.tag = tag;
	}
}
