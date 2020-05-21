package com.wardrobe.entity;

public class Product {
	private int id;
	private String pdtName;
	private String pdtCrop;
	private float pdtPrice;
	private String pdtImg;
	private int pdtType;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPdtName() {
		return pdtName;
	}

	public void setPdtName(String pdtName) {
		this.pdtName = pdtName;
	}

	public String getPdtCrop() {
		return pdtCrop;
	}

	public void setPdtCrop(String pdtCrop) {
		this.pdtCrop = pdtCrop;
	}

	public float getPdtPrice() {
		return pdtPrice;
	}

	public void setPdtPrice(float pdtPrice) {
		this.pdtPrice = pdtPrice;
	}

	public String getPdtImg() {
		return pdtImg;
	}

	public void setPdtImg(String pdtImg) {
		this.pdtImg = pdtImg;
	}

	public int getPdtType() {
		return pdtType;
	}

	public void setPdtType(int pdtType) {
		this.pdtType = pdtType;
	}

}
