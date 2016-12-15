package com.kaishengit.pojo;

import java.io.Serializable;

public class Vehicle implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public enum VehicleType {

	}

	public static final String SALES_STATE_SALED = "已售";
	public static final String SALES_STATE_SALLING = "未售";

	public static final String VEHICLE_TYPE_A1 = "A1:大型客车";
	public static final String VEHICLE_TYPE_A2 = "A2:牵引车";
	public static final String VEHICLE_TYPE_A3 = "A3:城市公交车";
	public static final String VEHICLE_TYPE_B1 = "B1:中型客车";
	public static final String VEHICLE_TYPE_B2 = "B2：大型货车";
	public static final String VEHICLE_TYPE_C1 = "C1：小型汽车";
	public static final String VEHICLE_TYPE_C2 = "C2：小型自动挡汽车";
	private Integer id;
	private String vehicleNO;
	private double mileage;
	private String comments;
	private String engineNO;
	private String vinNO;
	private String lisenceid;
	private String producedDate;
	private String state;
	private String prodcutor;
	private String vehicleType;
	private String createDate;
	private Integer userid;

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public Integer getId() {
		return id;
	}

	public String getVehicleNO() {
		return vehicleNO;
	}

	public double getMileage() {
		return mileage;
	}

	public String getComments() {
		return comments;
	}

	public String getEngineNO() {
		return engineNO;
	}

	public String getVinNO() {
		return vinNO;
	}

	public String getLisenceid() {
		return lisenceid;
	}

	public String getProducedDate() {
		return producedDate;
	}

	public String getState() {
		return state;
	}

	public String getProdcutor() {
		return prodcutor;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setVehicleNO(String vehicleNO) {
		this.vehicleNO = vehicleNO;
	}

	public void setMileage(double mileage) {
		this.mileage = mileage;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public void setEngineNO(String engineNO) {
		this.engineNO = engineNO;
	}

	public void setVinNO(String vinNO) {
		this.vinNO = vinNO;
	}

	public void setLisenceid(String lisenceid) {
		this.lisenceid = lisenceid;
	}

	public void setProducedDate(String producedDate) {
		this.producedDate = producedDate;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setProdcutor(String prodcutor) {
		this.prodcutor = prodcutor;
	}

	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}

}
