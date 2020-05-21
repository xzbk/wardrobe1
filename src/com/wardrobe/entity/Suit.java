package com.wardrobe.entity;

public class Suit {
	private int id;
	private Clothe coat;// 上衣
	private Clothe pants;
	private Clothe shoes;
	private int uid;
	private String name;
	private Season season;
	private int count;
	private String src;
	private int share;
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Clothe getCoat() {
		return coat;
	}

	public void setCoat(Clothe coat) {
		this.coat = coat;
	}

	public Clothe getPants() {
		return pants;
	}

	public void setPants(Clothe pants) {
		this.pants = pants;
	}

	public Clothe getShoes() {
		return shoes;
	}

	public void setShoes(Clothe shoes) {
		this.shoes = shoes;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Season getSeason() {
		return season;
	}

	public void setSeason(Season season) {
		this.season = season;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public int getShare() {
		return share;
	}

	public void setShare(int share) {
		this.share = share;
	}

	@Override
	public String toString() {
		return "Suit [id=" + id + ", coat=" + coat + ", pants=" + pants + ", shoes=" + shoes + ", uid=" + uid
				+ ", name=" + name + ", season=" + season + ", count=" + count + ", src=" + src + ", share=" + share
				+ ", description=" + description + "]";
	}
}
