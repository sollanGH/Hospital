$(function() {
	var imgs = ["img/g1.png","img/g2.png",];
	//1.获取滑动条id=silder_ul，图片标签ad_img
	var silder_ul = $("#silder_ul");
	var ad_img = $("#ad_img");

	//根据数组元素个数创建对应 下面滑动条 
	$.each(imgs, function() {
		silder_ul.append("<li>");
	});
	//获取所有的滑动条的li1111111111111111111111
	var lis = silder_ul.children();
	//console.log(lis);

	//默认显示第一张图片和让第一个 圆圈高亮
	ad_img.attr("src", imgs[0]);

	lis.eq(0).attr("id", "selected_li");

	var objIndex = {index:1};

	//开启定时器，让较短图切换图片
	var interval = setInterval(function() {
		//循环滑动的li，如果是当前位置，为li加上高亮样式对应的id值，如果不是，删除高亮样式
		silderFun(lis,ad_img,imgs,objIndex);

	}, 3000);

	//切换按钮下一页放上去清除定时器
	$("#next").mouseover(function() {
		//清除定时器
		clearInterval(interval);
	});
	//用户鼠标离开定时器继续
	$("#next").mouseout(function() {
		interval = setInterval(function() {
			silderFun(lis,ad_img,imgs,objIndex);
		}, 3000);
	});
	//用户点击按钮切换
	$("#next").click(function() {
		//循环所有的li。判断哪一个li当前有 高亮的id，从它的位置向下移动一位即可
		$.each(lis, function(i, li) {
			//根据有id=selected_li 判断出当前显示第几章图片的位置的位置
			//计算出下一张图片对应的位置索引
			if("selected_li" == li.id) {
				objIndex.index = i + 1;
				if(objIndex.index == lis.length) {
					objIndex.index = 0;
				}
			}
		});
		//计算好下一张图片要跳转的位置，开始跳转
		//循环滑动的li，如果是当前位置，为li加上高亮样式对应的id值，如果不是，删除高亮样式
		silderFun(lis,ad_img,imgs,objIndex);
	});
});
/**
 * 滑动切换图片的方法
 * @param {Object} lis 滑动条对应的li 列表
 * @param {Object} ad_img 广告图
 * @param {Object} imgs 所有的图片
 * @param {Object} objIndex 当前图片位置对应的索引对象
 */
function silderFun(lis,ad_img,imgs,objIndex) {
	//console.log(objIndex);
	//循环滑动的li，如果是当前位置，为li加上高亮样式对应的id值，如果不是，删除高亮样式
	$.each(lis, function(i, li) {
		if(objIndex.index == i) {
			li.id = "selected_li";
		} else {
			li.id = "";
		}
	});
	//切换对应的图片
	ad_img.attr("src", imgs[objIndex.index]);

	objIndex.index++;
	//如果偏移位置到了元素总长度，从头开始
	if(objIndex.index == imgs.length) {
		objIndex.index = 0;
	}
}