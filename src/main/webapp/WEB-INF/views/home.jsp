<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>客户关系管理系统</title>

<!-- Bootstrap Core CSS -->
<link href="/static/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/static/js/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/static/css/sb-admin-2.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="/static/css/core.css" rel="stylesheet">
<link href="/static/css/type.css" rel="stylesheet">
<link href="/static/css/css.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="/static/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/static/js/morris/morris.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<%@ include file="include/nav.jsp"%>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="page-header">
							<h4>
								<i class="fa fa-home"></i> 我的首页
							</h4>
						</div>

					</div>
					<!-- /.col-lg-12 -->

					<h3 class="text-center">
						<i class="fa fa-medium m-r-5"></i>客户生命周期
					</h3>
					<hr class="arrow">

					<div class="row">
						<div class="col-xs-2">
							<div class=" cycle-one">
								<div class="icon-box">
									<i class="glyphicon glyphicon-tint  text-gray  f-s-28"></i>
									<h4>
										<b>基础信息</b>
									</h4>
								</div>
								<div class="icon-box b-l-1">
									<p class=" f-s-12">0/0</p>
									<h4>0</h4>
									<p class="text-gray f-s-12">三日新增</p>
								</div>
							</div>
						</div>
						<div class="col-xs-4 ">
							<div class="cycle-tow">
								<div class="icon-box">
									<a href="/xcrm/customer/customer/?tt=1&amp;pv=1"> <i
										class=" typcn typcn-leaf text-dark f-s-28"></i>
										<h4>
											<b>潜在客户</b>
										</h4>
									</a>
								</div>
								<div class="icon-box b-l-1">
									<p class="f-s-12">0/0</p>
									<h4>1</h4>
									<p class=" f-s-12">
										<a
											href="/sys/stat/list.xt?d=91@1^5`@IXZt9GdzV3Y&amp;w=f9@1^5`@@1^5`@QMgQmbhByJ4ATLyETL2EDMycCIk5WYgciNw0iMx0iNxAjMnAiblV2d0VmYgUGdhRGdhVmcjBCZuFGIpEDLwgibpBSZmlGb&amp;m=ebcd8c84"
											target="_blank" class="text-gray">三日新增</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-xs-6">
							<div class="cycle-tow">
								<div class="icon-box">
									<a href="/xcrm/customer/customer/?tt=2&amp;pv=1"> <i
										class="glyphicon glyphicon-tree-deciduous   f-s-28"></i>
										<h4>
											<b>签约客户</b>
										</h4>
									</a>
								</div>
								<div class="icon-box b-l-1">
									<p class="f-s-12">0/0</p>
									<h4>0</h4>
									<p class=" f-s-12">
										<a
											href="/sys/stat/list.xt?d=91@1^5`@IXZt9GdzV3Y&amp;w=8c@1^5`@@1^5`@QMgQmbhByJ4ATLyETL2EDMy@1^6`@CIk5WYg@1^6`@iNw0iMx0iNxAjMnAiblV2d0VmYgUGdhRWexBCZuFGIy0TZmlGb&amp;m=a0738c76"
											target="_blank" class="text-gray">三日新增</a>
									</p>
								</div>
								<div class="icon-box b-l-1">
									<p class="f-s-12">0元/0元</p>
									<h4>0元</h4>
									<p class="f-s-12">
										<a
											href="/sys/stat/list.xt?d=80@1^5`@Q3YhJHdu92Y&amp;w=1exACZuFGIngDMtITMtYTMwIzJgQmbhByJ2ATLyETL2EDMycCIuVWZ3RXZiBSZ0FGZgQmbhBSKywCMoAibpBSbylmZu92Y&amp;m=c470d58b"
											target="_blank" class="text-gray">三日签约</a>
									</p>
								</div>
								<div class="icon-box b-l-1">
									<p class="f-s-12">0元/0元</p>
									<h4>0元</h4>
									<p class="f-s-12">
										<a
											href="/sys/stat/list.xt?d=20@1^5`@UGdv52Xn5WayVGa@1^6`@F2Z&amp;w=74xACZuFGIngDMtITMtYTMwIzJgQmbhByJ2ATLyETL2EDMycCIuVWZ3RXZiBSZ0FGZ&amp;m=ec5812e8"
											target="_blank" class="text-gray">三日回款</a>
									</p>
								</div>
								<div class="again">
									<a href="/xcrm/customer/customer/?tt=3&amp;pv=1"> <i
										class="glyphicon  glyphicon-tree-conifer"
										style="font-size: 20px;"></i>
										<p>
											<b>重复购买</b>
										</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row text-center row-display-box" id="menu1">
						<div class="col-xs-2 b-r-d">
							<i class="fa fa-angle-double-up fa-3x text-gray m-t-20"></i>
							<div class="menu">
								<div class="text-box bg-white">
									<span class="dialog-box">基础信息</span>商机
									<ul class="f-s-16">
										<li class="three-none"><a href="/jk/"></a></li>
										<li>客户信息
											<ul class="list-unstyled">
												<li><a href="/websetup/"><i class="fa fa-gear"></i>客户录入</a>
												</li>
												<li><a href="/xcrm/desktop/telnote/"><i
														class="glyphicon glyphicon-tint"></i>信息查询</a></li>
											</ul>
										</li>
										<li>车辆信息
											<ul class="list-unstyled">
												<li><a href="/websetup/"><i class="fa fa-gear"></i>信息录入</a>
												</li>
												<li><a href="/xcrm/desktop/telnote/"><i
														class="glyphicon glyphicon-tint"></i>业务查询</a></li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xs-4 b-r-d">
							<i class="fa fa-angle-double-up fa-3x text-gray m-t-20"></i>
							<div class="menu">
								<div class="text-box bg-white">
									<span class="dialog-box">售前</span>跟单
									<ul>
										<li class="three-none m-b-30"><a
											href="/xcrm/customer/customer/?tt=1&amp;pv=1">预约</a></li>
										<li class="three-none m-b-30"><a
											href="/xcrm/customer/customer/?tt=1&amp;pv=1">报价</a></li>

										<!-- <li class="three-none"><a href="/xcrm/customer/cu_care/">客户关怀</a>
										</li> -->
										<!-- <li>客户工具
											<ul class="list-unstyled">
												<li><a href="/usetup/import.xt"><i
														class="md  md-assignment-returned"></i>客户导入 </a></li>
												<li><a href="/sys/customermerge/merge.xt"><i
														class="fa fa-compress"></i>客户合并 </a></li>
												<li><a href="/sys/chcus/viewchlog.xt"><i
														class="fa fa-plane"></i>客户转移日志</a></li>
												<li><a href="/sys/chcus/"><i
														class="fa fa-share-alt-square"></i>批量共享/转移</a></li>

											</ul>
										</li> -->
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xs-4 b-r-d">
							<i class="fa fa-angle-double-up fa-3x text-gray m-t-20"></i>
							<div class="menu">
								<div class="text-box bg-white">
									<span class="dialog-box">售中</span>合约执行
									<ul>
										<li class="m-b-30 three-none"><a
											href="/xcrm/customer/customer/?tt=2&amp;pv=1">签约客户</a></li>
										<li class="">合同/订单
											<ul class="list-unstyled">
												<li class="m-b-20"><a href="/xcrm/contract/contract/"><i
														class="fa fa-file-text"></i>合同/订单 </a></li>
												<li><a href="/xcrm/contract/goods/"><i
														class="ion-code"></i>交付计划/订单明细 </a></li>
												<li><a href="/xcrm/contract/delinote/"><i
														class="ion-code-download"></i>交付记录/发货明细 </a></li>
												<li><a href="/xcrm/contract/sendgoods/"><i
														class="ion-funnel"></i>发货单</a></li>
											</ul>
										</li>

										<li class="m-t-30">订单退货
											<ul class="list-unstyled">
												<li><a href="/xcrm/contract/sendgoods/"><i
														class="fa fa-file-text-o"></i>退货单 </a></li>
												<li><a href="/lib/return/listitem.xt"><i
														class="fa fa-navicon "></i>退货明细 </a></li>
												<li><a
													href="/xcrm/contract/gather_n/index.xt?tt=1&amp;bwhere=40@1^5`@ATP@1^1`@kXZu9Wb"><i
														class="fa fa-money"></i>退款</a></li>
											</ul>
										</li>
										<li>客户工具
											<ul class="list-unstyled">
												<li><a href="/usetup/import.xt"><i
														class="md  md-assignment-returned"></i>客户导入 </a></li>
												<li><a href="/sys/customermerge/merge.xt"><i
														class="fa fa-compress"></i>客户合并 </a></li>
												<li><a href="/sys/chcus/viewchlog.xt"><i
														class="fa fa-plane"></i>客户转移日志</a></li>
												<li><a href="/sys/chcus/"><i
														class="fa fa-share-alt-square"></i>批量共享/转移</a></li>
											</ul>
										</li>
									</ul>
								</div>
							</div>
							<img src="/img/kh.png">
							<div class="bar-widget m-b-20">

								<div class="table-box">
									<div class="table-detail text-center">
										<a class="btn btn-link p-0" href="#">
											<div class="iconbox bg-primary s">
												<i class="fa fa fa-hand-lizard-o"></i>
											</div>
											<p class="p-r-20 text-black">应收</p>
										</a>
										<ul>
											<li><a href="/xcrm/contract/gathering/">计划回款/应收</a></li>

										</ul>
									</div>

									<div class="table-detail text-center">
										<a class="btn btn-link p-0" href="#">
											<div class="iconbox bg-primary s">
												<i class="fa fa-cc-visa"></i>
											</div>
											<p class="p-r-20 text-black">回款</p>
										</a>
										<ul>
											<li><a
												href="/xcrm/contract/gather_n/index.xt?tt=1&amp;bwhere=40@1^5`@ATP@1^1`@kXZu9Wb">回款</a>
											</li>
											<li><a href="/xcrm/contract/bill/">开票</a></li>

										</ul>
									</div>

									<div class="table-detail text-center">
										<a class="btn btn-link p-0" href="#">
											<div class="iconbox bg-lightblack">
												<i class="glyphicon glyphicon-gift"></i>
											</div>
											<p class="p-r-20 text-black">产品</p>
										</a>
										<ul>
											<li class="m-b-20"><a href="/xcrm/market/product/">产品</a>
											</li>
											<li class="three">导入
												<ul class="list-unstyled">
													<li><a href="/sys/csstree/setup.xt?tid=1"><i
															class="glyphicon glyphicon-compressed"></i>分类维护 </a></li>
													<li><a href="/sys/productin/"><i
															class="glyphicon glyphicon-floppy-save"></i>产品导入 </a></li>
													<li><a href="/sys/productsnin/"><i
															class="glyphicon glyphicon-barcode"></i>编号/条码导入</a></li>
												</ul>
											</li>
											<li class="three">权限：
												<ul class="list-unstyled">
													<li><a href="/sys/usersetup/role.xt"><i
															class="glyphicon glyphicon-gift"></i>产品权限 </a></li>
													<li><a href="/setup/setup.xt?func=s_pprice"><i
															class="md md-attach-money"></i>成本权限 </a></li>
													<li><a href="/setup/setup.xt?func=s_spec"><i
															class="md md-format-size"></i>多规格权限</a></li>
												</ul>
											</li>

											<li class="three m-b-20 m-t-20">采购
												<ul class="list-unstyled top">
													<li><a href="/lib/purchase/"><i
															class="md md-add-shopping-cart"></i>采购单 </a></li>
													<li class="m-b-20"><a href="/lib/purchase/listitem.xt"><i
															class="md md-receipt"></i>采购明细 </a></li>
													<li><a href="/lib/pay/pay_plan_list.xt"><i
															class="ion-cash"></i>计划付款</a></li>
													<li><a
														href="/lib/pay/pay_note_list.xt?tt=1&amp;bwhere=40@1^5`@ATP@1^1`@kXZu9Wb"><i
															class="fa fa-paypal"></i>付款</a></li>
													<li class="m-b-20"><a href="/lib/pay/pay_bill_list.xt"><i
															class="md md-receipt"></i>付款发票</a></li>
													<li class="three m-b-20"><i
														class="fa fa-mail-reply-all "></i>采购退货
														<ul class="list-unstyled">
															<li><a href="/lib/return/purlistitem.xt">退货明细 </a></li>
															<li><a
																href="/lib/pay/pay_note_list.xt?tt=2&amp;bwhere=a8@1^5`@@1^5`@AM@1^6`@kXZu9Wb">退款
															</a></li>

														</ul></li>
												</ul>
											</li>

										</ul>

									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-2">
							<i class="fa fa-angle-double-up fa-3x text-gray  m-t-20"></i>
							<div class="menu">
								<div class="text-box bg-white">
									<span class="dialog-box">售后</span>服务
									<ul>
										<li class="three-none m-b-30"><a
											href="/xcrm/customer/customer/?tt=3&amp;pv=1">重复购买</a></li>

										<li>客服
											<ul class="list-unstyled top">
												<li><a href="/qa/qa.xt"><i
														class="md md-perm-phone-msg"></i>客服控制台</a></li>
												<li><a href="/xcrm/service/lodge/"><i
														class="fa fa-warning"></i>投诉 </a></li>
												<li><a href="/xcrm/service/service/"><i
														class="fa fa-whatsapp"></i>客服 </a></li>
												<li><a href="/qa/"><i class="md md-live-help"></i>QA库
												</a></li>

											</ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<script>
							if ($.isFunction($('.selectpicker').selectpicker)) {
								$('.selectpicker').selectpicker({
									'style' : 'btn-white',
									'liveSearch' : true
								});
							}
							if ($
									.isFunction($('[data-toggle="tooltip"]').tooltip)) {
								$('[data-toggle="tooltip"]').tooltip();
							}
							if ($
									.isFunction($('[data-toggle="table"]').bootstrapTable)) {
								$('[data-toggle="table"]').bootstrapTable();
							}
						</script>
					</div>
					<div class="row text-center">
						<!-- 						<div class="col-xs-10  col-xs-offset-2">
							<div class="text-box2 bg-white p-0" id="menu2">
								<div class="menu2">
									<span class="iconbox2 bg-gray text-white m-r-5"><i
										class="md md-directions-walk"></i></span>行动
									<ul class="list-unstyled">
										<li><a href="/xcrm/desktop/action/">任务/行动</a></li>
										<li><a href="/xcrm/b_trip/index.xt">差旅 </a></li>
										<li><a href="/tx/action/">工单 </a></li>
										<li><a href="/xcrm/cost/cost/">销售费用 </a></li>

									</ul>
								</div>

								<div class="menu2">
									<span class="iconbox2 bg-gray text-white m-r-5 m-l-20"><i
										class="fa fa-users"></i></span>联系人
									<ul class="list-unstyled">
										<li><a href="/xcrm/customer/contact/">联系人</a></li>
										<li><a href="/xcrm/customer/memday/">纪念日 </a></li>

									</ul>
								</div>

								<div class="menu2">
									<span class="iconbox2 bg-gray text-white m-r-5 m-l-20"><i
										class="fa fa-tv"></i></span>市场
									<ul class="list-unstyled">
										<li><a href="/xcrm/market/market/">市场活动</a></li>
										<li><a href="/xcrm/market/ad/">广告发布</a></li>
										<li class="three">印刷品
											<ul class="list-unstyled">
												<li><a href="/xcrm/market/sheetdr/"><i
														class="md md-now-widgets"></i>印刷品管理</a></li>
												<li><a href="/xcrm/market/sheet/"><i
														class="fa fa fa-hand-lizard-o"></i>印刷品领用</a></li>

											</ul>
										</li>
										<li class="three">礼品
											<ul class="list-unstyled">
												<li><a href="/xcrm/market/gift/"><i
														class="fa fa-gift"></i>礼品管理</a></li>
												<li><a href="/xcrm/market/giftdr/"><i
														class="fa fa fa-hand-lizard-o"></i>礼品领用</a></li>

											</ul>
										</li>

									</ul>
								</div>
								<script>
									if ($
											.isFunction($('.selectpicker').selectpicker)) {
										$('.selectpicker').selectpicker({
											'style' : 'btn-white',
											'liveSearch' : true
										});
									}
									if ($
											.isFunction($('[data-toggle="tooltip"]').tooltip)) {
										$('[data-toggle="tooltip"]').tooltip();
									}
									if ($
											.isFunction($('[data-toggle="table"]').bootstrapTable)) {
										$('[data-toggle="table"]')
												.bootstrapTable();
									}
								</script>
							</div>
							<div class="col-xs-4  col-xs-offset-2 m-t-20">
								<div class="text-box2 border-r m-t-15 p-0">
									<div class="menu2">
										<span class="iconbox2 bg-gray text-white m-r-5"><i
											class="fa fa-eye"></i></span> 业务工具
										<ul class="top">
											<li class="m-b-20"><a href="/xcrm/dayrep/detail.xt">日周月报</a>
											</li>
											<li><a href="/usetup/smss.xt">发短信/群发短信</a></li>
											<li><a href="/wizard/sendmail/">群发邮件</a></li>
											<li><a href="/usetup/smslog.xt">充值点消费日志</a></li>
											<li class="m-b-20"><a href="/sys/selcus/">客户联系人筛选方案</a>
											</li>
											<li class="m-b-20"><a href="/sys/approval/">审批</a></li>
											<li><a href="/sys/billprint/">快递单打印模板</a></li>
											<li><a href="/xcrm/km/">知识库</a></li>

										</ul>
									</div>
								</div>
							</div>
							<div class="col-xs-2 m-t-20">
								<div class="font-box bg-gray">
									<i class="glyphicon glyphicon-user f-s-40 m-t-20"></i>
								</div>
								<div class="menu2 p-20" style="margin-top: -10px;">
									<p>
										boss <i class="fa fa-gear s"></i>
									</p>
									<ul class="top f-s-16">
										<li><a href="/usetup/inishow.xt?func=passwd">密码</a></li>
										<li><a href="/usetup/inishow.xt?func=uploadPhoto">头像</a>
										</li>
										<li class="m-b-20"><a
											href="/usetup/inishow.xt?func=desktop_role">优先角色</a></li>
										<li><a href="/usetup/inishow.xt?func=mphone">我的手机</a></li>
										<li class="m-b-20"><a
											href="/usetup/inishow.xt?func=email">发邮件参数</a></li>


										<li><a href="/usetup/recycle.xt?pv=1">回收站</a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-4  m-t-20">
								<div class="text-box2 p-0 border-l  m-t-15">
									<div class="menu2">
										<span class="iconbox2 bg-gray text-white m-r-5"><i
											class="fa fa-users"></i></span> 团队工具
										<ul class="top">
											<li><a href="/xcrm/desktop/bulletin/">内部公告</a></li>
											<li><a href="/sys/cause/view.xt?type=1">销售目标</a></li>
											<li><a href="/sys/dayrep/cale.xt">周月排名</a></li>
											<li><a href="/xcrm/desktop/action/actiondo.xt">跟单行动计数器</a>
											</li>

										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
 -->
					</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="/static/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/static/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="/static/js/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/static/js/sb-admin-2.js"></script>
	<script src="/static/js/morris/raphael-min.js"></script>
	<script src="/static/js/morris/morris.min.js"></script>
	<script src="/static/js/local-zhcn.js"></script>
</body>
</html>
