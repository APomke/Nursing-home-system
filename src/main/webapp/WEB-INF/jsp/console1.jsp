<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>控制后台</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/component/pear/css/pear.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/other/console1.css" />
	</head>
	<body class="pear-container">
		<div>
			<div class="layui-row layui-col-space10">
				<div class="layui-col-xs6 layui-col-md3">
					<div class="layui-card top-panel">
						<div class="layui-card-header">客户数量</div>
						<div class="layui-card-body">
							<div class="layui-row layui-col-space5">
								<div class="layui-col-xs8 layui-col-md8 top-panel-number" style="color: #28333E;" id="value1">
									${count}
								</div>
								<div class="layui-col-xs4 layui-col-md4 top-panel-tips">
									<svg t="1679906376643" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2095" width="200" height="200"><path d="M 172.603 851.409 a 479.989 479.989 0 1 0 678.795 -678.818 a 479.989 479.989 0 1 0 -678.795 678.818 Z" fill="#f0b477" p-id="2096"></path><path d="M 509.662 209.466 c -6.82484 65.0516 -33.1867 185.817 -134.163 230.891 c 44.6896 10.7153 91.7135 27.9556 136.788 55.0581 c 30.7024 -19.3495 65.4922 -35.821 104.913 -48.0364 c -62.3797 -28.6962 -110.622 -96.2231 -107.538 -237.913 Z" fill="#ffffff" p-id="2097"></path><path d="M 375.5 440.358 c -122.041 -29.2681 -226.701 -9.89981 -226.701 -9.89981 c 101.069 36.3179 174.034 33.4024 226.701 9.89981 Z M 875.203 430.449 c -102.71 -13.1153 -187.72 -4.86551 -258.013 16.9215 c 107.875 49.6301 258.013 -16.9215 258.013 -16.9215 Z" fill="#d8292b" p-id="2098"></path><path d="M 736.476 857.432 C 702.483 664.04 612.185 555.499 512.278 495.416 C 317.16 618.394 287.527 857.432 287.527 857.432 c 267.79 -280.437 448.949 0 448.949 0 Z" fill="#ffffff" p-id="2099"></path><path d="M 736.476 857.432 s -181.158 -280.437 -448.949 0 h 448.949 Z" fill="#e68221" p-id="2100"></path><path d="M 356.609 440.78 c -101.707 -11.3528 -188.92 -3.84366 -188.92 -3.84366 c 84.2324 14.0903 145.027 12.956 188.92 3.84366 Z M 856.182 439.477 c -87.5604 -4.95926 -160.027 -1.83745 -219.961 6.40298 c 91.9666 18.7589 219.961 -6.40298 219.961 -6.40298 Z" fill="#342c2b" p-id="2101"></path></svg>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-md3">
					<div class="layui-card top-panel">
						<div class="layui-card-header">护工人数</div>
						<div class="layui-card-body">
							<div class="layui-row layui-col-space5">
								<div class="layui-col-xs8 layui-col-md8 top-panel-number" style="color: #28333E;" id="value2">
									${empCount}
								</div>
								<div class="layui-col-xs4 layui-col-md4 top-panel-tips">
									<svg t="1679906471319" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2346" width="200" height="200"><path d="M607.9744 568.576c184.32 0 334.2848 147.712 334.2848 329.2416v19.3792c-0.0256 93.7472-145.1264 96.768-317.0048 96.8704h-232.1152C214.9632 1013.9648 76.8 1010.944 76.8 917.1968v-19.3792c0-181.5296 149.9648-329.216 334.2848-329.216h196.8896zM550.4 679.04h-76.8v89.6H384v76.8h89.6v89.6h76.8v-89.6H640v-76.8h-89.6v-89.6z m-50.7392-652.8c146.3552 0 265.344 117.248 265.344 261.4528 0 144.2048-119.04 261.504-265.344 261.504-146.3296 0-265.3184-117.2992-265.3184-261.504 0-144.1792 118.9888-261.4528 265.3184-261.4528z" fill="#000000" p-id="2347"></path></svg>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-md3">
					<div class="layui-card top-panel">
						<div class="layui-card-header">房间数量</div>
						<div class="layui-card-body">
							<div class="layui-row layui-col-space5">
								<div class="layui-col-xs8 layui-col-md8 top-panel-number" style="color: #28333E;" id="value3">
									${roomCount}
								</div>
								<div class="layui-col-xs4 layui-col-md4  top-panel-tips">
									<svg t="1679906531868" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3331" width="200" height="200"><path d="M765.979015 921.773958H337.734786c-1.125612 0-2.148896-0.102328-3.17218-0.204657h-67.332067c-1.432597 0-2.762866-0.102328-4.195464-0.306985-45.945438-6.549016-63.852903-51.982812-67.229739-77.871889-0.102328-1.125612-0.204657-2.353553-0.204656-3.479165l-2.865195-246.09973-69.890277-32.745079c-18.623763-8.697911-33.359049-22.819227-41.545318-39.601079-11.870091-24.354152-10.846807-52.08514 2.865194-78.178875 5.01409-9.516538 11.870091-18.009793 20.465674-25.479764l96.08634-82.88598V222.87119c0-33.154392 18.112122-63.545918 46.252423-77.462576 23.023883-11.358449 48.094334-10.949136 70.708904 1.22794 19.44239 10.437494 33.666034 28.344959 40.522035 49.62926l72.243829-62.727291c25.889078-25.684421 54.64335-38.680124 85.648846-38.680124h1.22794c47.275707 0.511642 81.044069 31.517138 88.309384 38.782452 15.349256 13.405016 228.089937 198.517038 300.538423 260.528031 37.963825 32.438093 54.950335 65.183172 50.447886 97.31428-5.832717 42.05696-45.536125 61.397022-50.140901 63.545918l-65.490157 32.028779-0.716299 51.778156c0 1.023284-0.102328 2.046567-0.204656 3.069851l-2.353553 198.210053c0 1.125612-0.102328 2.353553-0.204657 3.479164-3.376836 25.786749-21.386629 71.322874-67.229739 77.87189-1.432597 0.204657-2.865194 0.306985-4.297791 0.306985z m-67.332068-58.941141h64.569202c10.02818-2.865194 14.530629-20.874988 15.553912-25.786749l3.069851-262.165285c0-1.432597 0.102328-2.865194 0.409314-4.297791v-2.455881c0.204657-11.153792 6.549016-21.181973 16.474867-26.093734l82.374338-40.317378c3.581493-1.739582 15.860897-9.516538 16.98651-18.521435 0.511642-3.888478-0.204657-18.521435-30.391526-44.308184C792.686719 374.726491 568.178275 179.279304 565.927051 177.335065c-0.716299-0.61397-1.330269-1.22794-1.944239-1.944239-0.102328-0.102328-21.488958-21.591286-47.787349-21.693614h-0.204657c-15.246927 0-29.879884 7.265314-44.615169 22.102928-0.511642 0.511642-1.023284 1.023284-1.534925 1.432597L352.470071 279.151794c-8.697911 7.572299-21.079644 9.311882-31.517138 4.604776-10.539822-4.809433-17.191166-15.246927-17.191166-26.810033v-31.926451c0-11.563106-5.525732-21.898271-14.018987-26.503048-5.832717-3.172179-10.437494-3.274508-16.474868-0.306985-8.083941 3.990806-13.507345 13.916658-13.507344 24.661137v125.761567c0 8.595583-3.683821 16.679524-10.232837 22.307585l-106.319177 91.686219c-2.967523 2.558209-5.321075 5.423404-6.856001 8.390927-7.265314 13.81433-3.274508 22.0006-1.944239 24.763465 2.353553 4.707105 7.162986 9.004897 13.609673 12.074748l86.05816 40.317378c1.432597 0.61397 2.762866 1.432597 4.093135 2.251224 3.581493 2.251224 6.446687 5.218747 8.697911 8.697911 2.353553 3.479165 3.888478 7.572299 4.502448 11.97242 0.204657 1.432597 0.306985 2.967523 0.306985 4.502448l3.069851 261.551314c1.023284 4.707105 5.423404 22.819227 15.553913 25.786749h425.481363c0.716299-0.306985 1.841911-0.204657 2.865194-0.102328z" fill="#272636" p-id="3332"></path><path d="M604.402518 921.773958H425.737184c-16.270211 0-29.470571-13.20036-29.470571-29.47057V667.078645c0-38.066154 31.005496-69.07165 69.07165-69.07165h99.463176c38.066154 0 69.07165 31.005496 69.07165 69.07165v225.327071c0 16.167882-13.20036 29.368242-29.470571 29.368242z m-149.194763-58.941141h119.724193V667.078645c0-5.62806-4.502448-10.130509-10.130509-10.130509h-99.463176c-5.62806 0-10.130509 4.502448-10.130508 10.130509v195.754172z" fill="#272636" p-id="3333"></path></svg>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-md3">
					<div class="layui-card top-panel">
						<div class="layui-card-header">面积大小</div>
						<div class="layui-card-body">
							<div class="layui-row layui-col-space5">
								<div class="layui-col-xs8 layui-col-md8 top-panel-number" style="color: #28333E;" id="value4">
									780
								</div>
								<div class="layui-col-xs4 layui-col-md4 top-panel-tips">
									<svg t="1679906808895" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4366" width="200" height="200"><path d="M305.222589 369.323416l56.875454-56.875453 361.982812 361.984234-56.875454 56.875454z" p-id="4367"></path><path d="M1024.270294 292.685236V0H731.058696v103.422848H292.685236V0H0v292.685236h103.465526v438.629528H0v292.685236h292.685236v-103.422848h438.615302v103.422848H1023.985774V731.314764h-106.125783V292.685236zM825.988636 98.628694h99.752546v98.657145h-99.752546z m-728.469568-1.010045h97.547519v97.632876H97.519068z m97.547519 831.977772H97.519068V828.947639h97.547519z m731.314764-3.044359h-94.517387V828.947639h94.517387z m-88.95503-195.237298h-106.125783v103.422847H292.685236v-103.422847H189.205485V292.685236h103.451299V189.205485h438.401912v103.422847h106.367625z" p-id="4368"></path></svg>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-row layui-col-space10">
				<div class="layui-col-md9">
					<div class="layui-card">
						<div class="layui-card-header">入住记录</div>
						<div class="layui-card-body">
							<dl class="layuiadmin-card-status">
								<dd>
									<div class="layui-status-img"><a href="javascript:;"><img style="width: 32px;height: 32px;border-radius: 50px;"
											 src="../../admin/images/avatar.jpg"></a></div>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				<div class="layui-col-md3">

					<div class="layui-card">
						<div class="layui-card-header">
							寄语
						</div>
						<div class="layui-card-body" style="line-height:40px;">
							亲爱的朋友们，

							在我们不知不觉中，岁月已经悄然而至。当我们回首往事时，是否也有着对未来的担忧和迷茫呢？

							但是，我想告诉大家，无论你身处何时何地，都不要放弃对美好生活的追求。就像我们所熟知的那句话：“年轻不是资本，老年也不是负担。”

							养老院并不仅仅是一个名词，它更是一种精神和文化的象征。它既承载着社会的责任和担当，更传递着人类对美好生活的向往和追求。

							我们要相信，每一个老年人都有着自己的价值和意义。他们经历过风雨、沧桑，积累了丰富的人生经验和智慧。他们也需要我们的关爱和陪伴，为他们营造出一个舒适、温馨的生活环境。

							因此，让我们共同努力，把养老院建设成为一个充满理想和磅礴大气的场所，让每一个老年人都能够享受到尊严、快乐和幸福的晚年生活。

							谢谢。
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--</div>-->
		<script src="${pageContext.request.contextPath}/component/layui/layui.js"></script>
		<script src="${pageContext.request.contextPath}/component/pear/pear.js"></script>
		<script>
			layui.use(['layer', 'echarts', 'element', 'count'], function() {
				var $ = layui.jquery,
					layer = layui.layer,
					element = layui.element,
					count = layui.count,
					echarts = layui.echarts;



				var echartsRecords = echarts.init(document.getElementById('echarts-records'), 'walden');

				const colorList = ["#9E87FF", '#73DDFF', '#fe9a8b', '#F56948', '#9E87FF']
				var option = {
					backgroundColor: '#fff',
					tooltip: {
						show: false
					},
					grid: {
						top: '10%',
						bottom: '6%',
						left: '6%',
						right: '6%',
						containLabel: true
					},
					xAxis: [{
						type: 'category',
						boundaryGap: false,
						axisLine: {
							show: false
						},
						axisTick: {
							show: false
						},
						axisLabel: {
							margin: 10,
							//textStyle: {
								fontSize: 14,
								color: 'rgba(#999)'
							//}
						},
						splitLine: {
							show: true,
							lineStyle: {
								color: '#939ab6',
								opacity: .15
							}
						},
						data: ['10:00', '10:10', '10:10', '10:30', '10:40', '10:50']
					}, ],
					yAxis: [{
						type: 'value',
						offset: 15,
						max: 100,
						min: 0,
						axisTick: {
							show: false
						},
						axisLine: {
							show: false
						},
						axisLabel: {
							margin: 10,
							//textStyle: {
								fontSize: 14,
								color: '#999'
							//}
						},
						splitLine: {
							show: false
						}

					}],
					series: [{
						name: '2',
						type: 'line',
						z: 3,
						showSymbol: false,
						smoothMonotone: 'x',
						lineStyle: {
							width: 3,
							color: {
								type: 'linear',
								x: 0,
								y: 0,
								x2: 0,
								y2: 1,
								colorStops: [{
									offset: 0,
									color: 'rgba(59,102,246)' // 0% 处的颜色
								}, {
									offset: 1,
									color: 'rgba(118,237,252)' // 100% 处的颜色
								}]
							},
							shadowBlur: 4,
							shadowColor: 'rgba(69,126,247,.2)',
							shadowOffsetY: 4
						},
						areaStyle: {
							//normal: {
								color: {
									type: 'linear',
									x: 0,
									y: 0,
									x2: 0,
									y2: 1,
									colorStops: [{
										offset: 0,
										color: 'rgba(227,233,250,.9)' // 0% 处的颜色
									}, {
										offset: 1,
										color: 'rgba(248,251,252,.3)' // 100% 处的颜色
									}]
								}
							//}
						},
						smooth: true,
						data: [20, 56, 17, 40, 68, 42]
					}, {
						name: '1',
						type: 'line',
						showSymbol: false,
						smoothMonotone: 'x',

						lineStyle: {
							width: 3,
							color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
								offset: 0,
								color: 'rgba(255,84,108)'
							}, {
								offset: 1,
								color: 'rgba(252,140,118)'
							}], false),
							shadowBlur: 4,
							shadowColor: 'rgba(253,121,128,.2)',
							shadowOffsetY: 4
						},
						areaStyle: {
							color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
								offset: 0,
								color: 'rgba(255,84,108,.15)'
							}, {
								offset: 1,
								color: 'rgba(252,140,118,0)'
							}], false),
						},
						smooth: true,
						data: [20, 71, 8, 50, 57, 32]
					}, ]

				};
				echartsRecords.setOption(option);

				window.onresize = function() {
					echartsRecords.resize();
				}

			});
		</script>
	</body>
</html>
