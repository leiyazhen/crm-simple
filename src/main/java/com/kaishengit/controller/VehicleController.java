package com.kaishengit.controller;

import com.google.common.collect.Maps;
import com.kaishengit.dto.Message;
import com.kaishengit.exception.ForbiddenException;
import com.kaishengit.exception.NotFoundException;
import com.kaishengit.pojo.*;
import com.kaishengit.service.CustomerService;
import com.kaishengit.service.ProgressService;
import com.kaishengit.service.TaskService;
import com.kaishengit.service.UserService;
import com.kaishengit.service.VehicleService;
import com.kaishengit.util.Strings;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/vehicle")
public class VehicleController {

	@Inject
	private VehicleService vehicleService;
	@Inject
	private TaskService taskService;
	@Inject
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public String list() {
		return "vehicle/list";
	}

	/**
	 * DataTables加载数据
	 * 
	 * @return
	 */
	@RequestMapping(value = "/vehicles.json", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> load(HttpServletRequest request) {
		Map<String, Object> resultMap = Maps.newHashMap();

		String draw = request.getParameter("draw");
		Integer start = Integer.valueOf(request.getParameter("start"));
		Integer length = Integer.valueOf(request.getParameter("length"));
		String searchName = request.getParameter("seaVehicleNO");
		String searchDate = request.getParameter("seaDate");
		String searchState = request.getParameter("seaSales");
		String searchType = request.getParameter("seaType");
		String orderColumnIndex = request.getParameter("order[0][column]");
		String orderType = request.getParameter("order[0][dir]");
		String orderColumnName = request.getParameter("columns["
				+ orderColumnIndex + "][name]");

		Map<String, Object> param = Maps.newHashMap();
		param.put("start", start);
		param.put("length", length);
		if (StringUtils.isNotEmpty(searchName)) {
			param.put("seaVehicleNO", "%" + searchName + "%");
		}
		if (StringUtils.isNotEmpty(searchDate)) {
			param.put("seaDate", searchDate);
		}
		if (StringUtils.isNotEmpty(searchState)) {
			param.put("seaSales", searchState);
		}
		if (StringUtils.isNotEmpty(searchType)) {
			param.put("seaType", searchType);
		}
		if (orderColumnName == null || orderType == null) {
			param.put("orderColumn", "id");
			param.put("orderType", "desc");
		} else {
			param.put("orderColumn", orderColumnName);
			param.put("orderType", orderType);
		}

		List<Vehicle> vehicles = vehicleService.findVehicleByParam(param);
		Integer count = vehicleService.findVehicleCount();
		Integer filteredCount = vehicleService.findUserCountByParam(param);

		resultMap.put("draw", draw);
		resultMap.put("recordsTotal", count); // 总记录数
		resultMap.put("recordsFiltered", filteredCount); // 过滤出来的数量
		resultMap.put("data", vehicles);

		return resultMap;
	}

	public static void main(String[] args) {
		System.out.println("总记");
	}

	/**
	 * 添加新客户
	 * 
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.POST)
	@ResponseBody
	public String newCust(Vehicle vehicle) {
		vehicleService.saveNewVehicle(vehicle);
		return "success";
	}

	/**
	 * 查看客户资料
	 * 
	 * @return
	 */
	@RequestMapping(value = "/{id:\\d+}", method = RequestMethod.GET)
	public String viewCustomer(@PathVariable Integer id, Model model) {
		Vehicle vehicle = vehicleService.findVehicleById(id);
		List<User> userList = userService.findAllUser();
		// List<Progress> progressList =
		// progressService.findProgressByCustId(id);
		// List<ProgressFile> fileList = progressService
		// .findProgressFileByCustId(id);
		// List<Task> taskList = taskService.findunDoneTaskByCustId(id);
		//
		// model.addAttribute("customer", customer);
		// model.addAttribute("userList", userList);
		// model.addAttribute("progressList", progressList);
		// model.addAttribute("fileList", fileList);
		// model.addAttribute("taskList", taskList);
		return "vehicle/view";
	}

	/**
	 * 删除客户
	 */
	@RequestMapping(value = "/del/{id:\\d+}", method = RequestMethod.GET)
	public String delCustomer(@PathVariable Integer id,
			RedirectAttributes redirectAttributes) {
		vehicleService.delVehicle(id);
		redirectAttributes.addFlashAttribute("message", new Message(
				Message.SUCCESS, "删除成功"));
		return "redirect:/vehicle";

	}

	/**
	 * 公开客户
	 * 
	 * @return
	 */
	@RequestMapping(value = "/public/{id:\\d+}", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> publicCustomer(@PathVariable Integer id) {
		Map<String, Object> result = Maps.newHashMap();
		try {
			vehicleService.publicVehicle(id);
			result.put("state", "success");
		} catch (NotFoundException ex) {
			result.put("state", "error");
			result.put("message", "客户不存在");
		} catch (ForbiddenException ex) {
			result.put("state", "error");
			result.put("message", "权限不足");
		}
		return result;
	}

	/**
	 * 转交客户
	 * 
	 * @return
	 */
	@RequestMapping("/tran/{custId:\\d+}/{userId:\\d+}")
	@ResponseBody
	public Map<String, Object> tranCustomer(@PathVariable Integer custId,
			@PathVariable Integer userId) {
		Map<String, Object> result = Maps.newHashMap();
		try {
			vehicleService.tranVehicle(custId, userId);
			result.put("state", "success");
		} catch (NotFoundException ex) {
			result.put("state", "error");
			result.put("message", ex.getMessage());
		} catch (ForbiddenException ex) {
			result.put("state", "error");
			result.put("message", "权限不足");
		}
		return result;
	}

	/**
	 * 新增跟进记录
	 */
	@RequestMapping(value = "/progress/new", method = RequestMethod.POST)
	public String newProgress(Progress progress,
			@RequestParam MultipartFile[] file,
			RedirectAttributes redirectAttributes) {
		// progressService.saveNewProgress(progress, file);
		//
		// redirectAttributes.addFlashAttribute("message", new Message(
		// Message.SUCCESS, "添加成功"));
		return "redirect:/customer/" + progress.getCustid();
	}

	/**
	 * 将待办任务完成
	 */
	@RequestMapping(value = "/change/taskstate", method = RequestMethod.POST)
	@ResponseBody
	public String changeTaskState(String taskId, boolean state) {
		taskService.changeTaskState(taskId, state);
		return "success";
	}

}
