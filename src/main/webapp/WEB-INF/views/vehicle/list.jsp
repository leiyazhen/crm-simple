<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>CRM-客户关系管理系统</title>

<!-- Bootstrap Core CSS -->
<link
	href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/static/js/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/static/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/static/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<%--DataTables css--%>
<link rel="stylesheet"
	href="/static/js/datatables/media/css/dataTables.bootstrap.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div id="wrapper">

		<%@ include file="../include/nav.jsp"%>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<c:if test="${not empty message}">
							<div class="alert ${message.state}">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								${message.message}
							</div>
						</c:if>


						<div class="panel panel-default top_panel">
							<div class="panel-heading">
								<i class="fa fa-search"></i> 搜索
							</div>
							<div class="panel-body">
								<form class="form-inline" id="searchForm">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="车牌号"
											id="seaVehicleNO">
									</div>
									<div class="form-group">
										<input type="text" class="form-control" placeholder="出厂日期"
											id="seaDate">
									</div>
									<div class="form-group">
										<select id="seaType" class="form-control">
											<option value="">车辆类型</option>
											<option value="A1">大型客车</option>
											<option value="A2">牵引车</option>
											<option value="A3">公交车</option>
											<option value="B1">中型客车</option>
											<option value="B2">大型货车</option>
											<option value="C1">小型汽车</option>
											<option value="C2">小型自动挡汽车</option>
										</select>
									</div>
									<div class="form-group">
										<select id="seaSales" class="form-control">
											<option value="">在库状态</option>
											<option value="0">已售</option>
											<option value="1">未售</option>
										</select>
									</div>
									<button type="button" class="btn btn-primary" id="searchBtn">搜索</button>
								</form>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-users"></i> 车辆信息<a href="javascript:;"
									id="delCustomer" class="pull-right btn btn-success btn-xs"
									style="margin-left: 15px;"> <i class="fa fa-plus"></i> 删除
								</a> <a href="javascript:;" id="newVehilce"
									class="pull-right btn btn-success btn-xs"> <i
									class="fa fa-plus"></i> 新增
								</a>
							</div>
							<div class="panel-body">
								<table class="table" id="vehicle_table">
									<thead>
										<tr>
											<th width="30"><input type="checkbox"></th>
											<th>ID</th>
											<th>车牌号</th>
											<th>车辆类型</th>
											<th>品牌型号</th>
											<th>行驶公里数</th>
											<th>出厂日期</th>
											<th>在库状态</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<div class="modal fade" id="newVehilce_Modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">
						<i class="fa fa-plus"></i> 新增车辆
					</h4>
				</div>
				<div class="modal-body">
					<form action="" id="newVehicleForm">
						<!-- <div class="form-group">
							<label>客户名称</label> <input type="text" class="form-control"
								placeholder="" name="custname">
						</div> -->
						<div class="form-group">
							<label>品牌型号</label> <input type="text" class="form-control"
								placeholder="" name="productor">
						</div>
						<div class="form-group">
							<label>车牌号</label> <input type="text" class="form-control"
								placeholder="" name="vehicleNO">
						</div>
						<div class="form-group">
							<label>车辆类型</label> <select id="seaType" class="form-control">
								<option value="">车辆类型</option>
								<option value="A1">大型客车</option>
								<option value="A2">牵引车</option>
								<option value="A3">公交车</option>
								<option value="B1">中型客车</option>
								<option value="B2">大型货车</option>
								<option value="C1">小型汽车</option>
								<option value="C2">小型自动挡汽车</option>
							</select>
						</div>
						<div class="form-group">
							<label>行驶公里数</label> <input type="text" class="form-control"
								placeholder="" name="mileage">
						</div>
						<div class="form-group">
							<label>发动机编号</label> <input type="text" class="form-control"
								placeholder="" name="engineNO">
						</div>
						<div class="form-group">
							<label>车架号</label> <input type="text" class="form-control"
								placeholder="" name="vinNO">
						</div>
						<div class="form-group">
							<label>行驶证编号</label> <input type="text" class="form-control"
								placeholder="" name="lisenceid">
						</div>
						<div class="form-group">
							<label>出厂日期</label> <input type="text" class="form-control"
								placeholder="" name="producedDate">
						</div>
						<div class="form-group">
							<label>描述</label> <input type="text" class="form-control"
								placeholder="" name="comments">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="saveBtn">保存</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



	<!-- jQuery -->
	<script src="/static/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/static/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/static/js/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/static/js/sb-admin-2.js"></script>
	<%-- DataTables JS--%>
	<script src="/static/js/datatables/media/js/jquery.dataTables.min.js"></script>
	<script
		src="/static/js/datatables/media/js/dataTables.bootstrap.min.js"></script>
	<script>
		$(function() {

			var table = $("#vehicle_table")
					.DataTable(
							{
								"processing" : true, //loding效果
								"serverSide" : true, //服务端处理
								"searching" : false,//不使用自带的搜索
								"order" : [[1, 'desc']],//默认排序方式
								"lengthMenu" : [10, 25, 50, 100],//每页显示数据条数菜单
								"ordering" : false,
								"ajax" : {
									url : "/vehicle/vehicles.json", //获取数据的URL
									type : "get", //获取数据的方式
									data : function(d) {
										d.seaVehicleNO = $("#seaVehicleNO")
												.val();
										d.seaType = $("#seaType").val();
										d.seaDate = $("#seaDate").val();
										d.seaSales = $("#seaSales").val();
									}
								},
								"columns" : [ //返回的JSON中的对象和列的对应关系
										{
											"data" : function(row) {
												return "<input type='checkbox'>";
											}
										},
										{
											"data" : "id",
											"name" : "id"
										},
										{
											"data" : function(row) {
												var result = "<a href='/vehicle/"+row.id+"'>"
														+ row.vehicleNo
														+ "</a>";
												if (!row.userid) {
													result += " <i class='fa fa-unlock text-muted'></i>";
												}
												return result;

											},
											"name" : "vehicleNo"
										}, {
											"data" : "vehicleType",
											"name" : "vehicleType"
										},

										{
											"data" : "productor",
											"name" : "productor"
										}, {
											"data" : "mileage",
											"name" : "mileage"
										}, {
											"data" : "produceddate"
										}, {
											"data" : "state",
											"name" : "state"
										}],
								"columnDefs" : [ //具体列的定义
								{
									"targets" : [1],
									"visible" : false
								}],
								"language" : {
									"lengthMenu" : "显示 _MENU_ 条记录",
									"search" : "搜索:",
									"info" : "从 _START_ 到 _END_ 共 _TOTAL_ 条记录",
									"processing" : "加载中...",
									"zeroRecords" : "暂无数据",
									"infoEmpty" : "从 0 到 0 共 0 条记录",
									"infoFiltered" : "(从 _MAX_ 条记录中读取)",
									"paginate" : {
										"first" : "首页",
										"last" : "末页",
										"next" : "下一页",
										"previous" : "上一页"
									}
								}
							});

			//自定义搜索
			$("#searchBtn").click(function() {
				table.draw(); // DataTables会自动的执行查询
			});

			//保存新客户
			$("#newVehilce").click(function() {
				$("#newVehilce_Modal").modal("show");
			});

			$("#saveBtn").click(
					function() {
						$
								.post("/vehicle/new",
										$("#newVehicleForm").serialize()).done(
										function(result) {
											if (result == "success") {
												$("newVehicleForm")[0].reset();
												$("#newVehilce_Modal").modal(
														'hide');
												table.ajax.reload();
											}
										}).fail(function() {
									alert("添加车辆信息异常");
								});
					});

		});
	</script>

</body>

</html>
