package com.kaishengit.mapper;

import java.util.List;
import java.util.Map;

import com.kaishengit.pojo.Vehicle;

public interface VehicleMapper {

	/**
	 * 添加新车辆信息
	 * 
	 * @param customer
	 */
	void save(Vehicle vehicle);

	/**
	 * 根据DataTables的查询方式获取 车辆信息列表
	 * 
	 * @param param
	 * @return
	 */
	List<Vehicle> findByParam(Map<String, Object> param);

	/**
	 * 获取车辆信息的总数量
	 * 
	 * @return
	 */
	Long count();

	/**
	 * 根据DataTables的查询方式获取车辆信息总数量
	 * 
	 * @param param
	 * @return
	 */
	Long countByParam(Map<String, Object> param);

	/**
	 * 根据主键查询车辆信息
	 * 
	 * @param id
	 * @return
	 */
	Vehicle findById(Integer id);

	/**
	 * 根据主键删除车辆信息
	 * 
	 * @param id
	 */
	void del(Integer id);

	/**
	 * 修改车辆信息信息
	 * 
	 * @param customer
	 */
	void update(Vehicle customer);

	/**
	 * 根据用户ID获取用户的车辆信息以及公开车辆信息
	 * 
	 * @param currentUserId
	 * @return
	 */
	List<Vehicle> findByUserIdAndEmptyUserId(Integer currentUserId);

	/**
	 * 首页柱状图的统计
	 * 
	 * @return
	 */
	List<Map<String, Object>> findTotal();
}
