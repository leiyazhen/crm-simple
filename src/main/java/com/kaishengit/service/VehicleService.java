package com.kaishengit.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;

import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

import com.kaishengit.exception.ForbiddenException;
import com.kaishengit.exception.NotFoundException;
import com.kaishengit.mapper.UserMapper;
import com.kaishengit.mapper.VehicleMapper;
import com.kaishengit.pojo.User;
import com.kaishengit.pojo.Vehicle;
import com.kaishengit.util.ShiroUtil;

@Named
@Transactional
public class VehicleService {

	private Logger logger = LoggerFactory.getLogger(VehicleService.class);

	@Inject
	private VehicleMapper vehicleMapper;
	@Inject
	private UserMapper userMapper;

	/**
	 * 保存新客户
	 * 
	 * @param vehicle
	 */
	public void saveNewVehicle(Vehicle vehicle) {
		vehicle.setCreateDate(DateTime.now().toString("yyyy-MM-dd HH:mm"));
		vehicleMapper.save(vehicle);

		logger.info("{}-添加了新车辆信息-{}", ShiroUtil.getCurrentUserName(),
				vehicle.getVehicleNO());
	}

	/**
	 * 根据DataTables的查询方式获取 客户列表
	 * 
	 * @param param
	 * @return
	 */
	public List<Vehicle> findVehicleByParam(Map<String, Object> param) {
		// 如果当前登录的用户是普通员工，那么只能看到自己的客户
		// 如果当前登录的用户是经理，那么可以看到所有的客户
		if (!ShiroUtil.isManager()) {
			param.put("userid", ShiroUtil.getCurrentUserId());
		}
		return vehicleMapper.findByParam(param);
	}

	/**
	 * 获取客户的总数量
	 * 
	 * @return
	 */
	public Integer findVehicleCount() {
		return vehicleMapper.count().intValue();
	}

	/**
	 * 根据DataTables的查询方式获取客户总数量
	 * 
	 * @param param
	 * @return
	 */
	public Integer findUserCountByParam(Map<String, Object> param) {
		// 如果当前登录的用户是普通员工，那么只能看到自己的客户
		// 如果当前登录的用户是经理，那么可以看到所有的客户
		if (!ShiroUtil.isManager()) {
			param.put("userid", ShiroUtil.getCurrentUserId());
		}
		return vehicleMapper.countByParam(param).intValue();
	}

	/**
	 * 根据客户ID查询对应的客户
	 * 
	 * @param id
	 * @return
	 */
	public Vehicle findVehicleById(Integer id) {
		Vehicle vehicle = vehicleMapper.findById(id);
		if (vehicle == null) {
			throw new NotFoundException();
		} else {
			if (ShiroUtil.isManager()) {
				return vehicle;
			} else {
				if (vehicle.getUserid() == null
						|| vehicle.getUserid().equals(
								ShiroUtil.getCurrentUserId())) {
					return vehicle;
				} else {
					throw new ForbiddenException();
				}
			}
		}
	}

	/**
	 * 根据主键删除客户对象
	 * 
	 * @param id
	 */
	public void delVehicle(Integer id) {
		if (ShiroUtil.isManager()) {
			// 删除跟进记录

			// 删除客户对象
			vehicleMapper.del(id);

			logger.info("{}删除了客户{}", ShiroUtil.getCurrentUserName(), id);
		} else {
			throw new ForbiddenException();
		}
	}

	/**
	 * 公开客户
	 * 
	 * @param id
	 */
	public void publicVehicle(Integer id) {
		Vehicle vehicle = vehicleMapper.findById(id);
		if (vehicle == null) {
			throw new NotFoundException();
		} else {
			if (vehicle.getUserid().equals(ShiroUtil.getCurrentUserId())) {
				// 公开客户
				vehicle.setUserid(null);
				vehicleMapper.update(vehicle);

				logger.info("{}将vehicle{}进行了公开",
						ShiroUtil.getCurrentUserName(), vehicle.getVehicleNO());
			} else {
				throw new ForbiddenException();
			}
		}

	}

	/**
	 * 转交客户
	 * 
	 * @param custId
	 *            客户ID
	 * @param userId
	 *            转入用户ID
	 */
	public void tranVehicle(Integer custId, Integer userId) {
		Vehicle vehicle = vehicleMapper.findById(custId);
		if (vehicle == null) {
			throw new NotFoundException("客户不存在");
		} else {
			if (vehicle.getUserid().equals(ShiroUtil.getCurrentUserId())) {
				User user = userMapper.findById(userId);
				if (user == null) {
					throw new NotFoundException("用户不存在");
				} else {
					vehicle.setUserid(user.getId());
					vehicle.setComments(vehicle.getComments() + "   "
							+ ShiroUtil.getCurrentUserName() + "转交过来的客户");
					vehicleMapper.update(vehicle);

					logger.info("{}把客户{}转交给了{}",
							ShiroUtil.getCurrentUserName(),
							vehicle.getVehicleNO(), user.getUsername());

				}
			} else {
				throw new ForbiddenException();
			}
		}
	}

	/**
	 * 根据当前登录的用户获取对应的客户
	 * 
	 * @return
	 */
	public List<Vehicle> findVehicleByCurrentUser() {
		return vehicleMapper.findByUserIdAndEmptyUserId(ShiroUtil
				.getCurrentUserId());
	}

	/**
	 * 获取userId对应客户
	 * 
	 * @param id
	 * @return
	 */
	public List<Vehicle> findVehicleByUserId(Integer id) {
		return vehicleMapper.findByUserIdAndEmptyUserId(id);
	}

	/**
	 * 在微信中查询客户
	 * 
	 * @param id
	 * @return
	 */
	public Vehicle findCustById(Integer id) {
		return vehicleMapper.findById(id);
	}
}
