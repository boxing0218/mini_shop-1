
CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 2, 60, '2020-10-27 07:40:22', '出貨訂單'),
(2, 2, 135, '2020-10-27 07:50:35', '出貨訂單'),
(3, 2, 60, '2020-10-27 08:05:43', '出貨訂單'),
(4, 2, 60, '2020-10-27 08:13:15', '出貨訂單'),
(5, 2, 100, '2020-11-03 05:23:46', NULL),
(6, 2, 135, '2020-11-03 05:52:08', '已出貨'),
(7, 2, 40, '2020-11-03 06:19:10', NULL);


CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(1, 3, 1, 60),
(2, 1, 1, 40),
(2, 4, 1, 35),
(2, 3, 1, 60),
(3, 3, 1, 60),
(4, 3, 1, 60),
(5, 1, 1, 40),
(5, 3, 1, 60),
(6, 4, 1, 35),
(6, 3, 1, 60),
(6, 1, 1, 40),
(7, 1, 1, 40);



CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(7, '艾德華·紐蓋特(白鬍子)', '<p>能夠隨時引發震動的能力（範圍大小由自己控制），是能夠讓大氣震動、讓大海裂開，並且引發大海嘯，威力強大到足以彈指間毀滅一座島嶼。還能將其中空震的力量形成一個球罩，可以附帶到武器或手腳上發出帶有碎裂聲音的攻擊。</p>\r\n', 1600, 2, '2020-11-10 06:01:00'),
(5, '蒙其D魯夫 4檔彈跳人', '<p>彈跳人是四檔的基本形態，是修行的兩年間為對付猛獸而開發的。擁有怪力、飛行、速移、追擊等功能。招式名稱是橡膠+動物名和武器名。</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1500, 17, '2020-11-10 05:48:14'),
(6, '蒙其D魯夫 4檔蛇人', '<p>蛇人形態比彈跳人速度更快，能夠持續半個小時以上。</p>\r\n\r\n<p>將拳頭縮進身體裡並瞄準目標後打向敵方進行追踪，和普通大蛇炮一樣能轉彎，但速度要快的多，而且能夠橫向攻擊。</p>\r\n', 1800, 24, '2020-11-10 05:45:01'),
(8, '波特卡斯·D·艾斯', '<p>用雙手創造一圈一圈的炎戒，最後合成一個大火球，威力十分巨大，已知火拳的最強招式。</p>\r\n', 1700, 3, '2020-11-10 06:14:27'),
(9, '羅羅亞·索隆', '<p>把手上所拿的2把刀像風車般旋轉的姿態並產生強勁的風，並讓3把刀順著劃出來的疾風瞬間高速向前所使出的斬擊。</p>\r\n', 2000, 1, '2020-11-10 06:21:55'),
(10, '凱多', '<p>凱多擁有極其強硬的體質，曾被處刑40次而無傷，因此被世人稱為不死的怪物。</p>\r\n', 2300, 1, '2020-11-10 06:50:21');



CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(2, 'sam', '107b33571', '$2y$10$dLKA2YCfvePx9Cv9.NAibefCj.QlP50.dr.JmK4G0cdWyfuDjgIpq', '107b33571@mailst.cjcu.edu.tw', '先生', '0965570188', '640', '雲林縣', '斗六市', '長春路61號7樓');


ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);


ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);


ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);


ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號', AUTO_INCREMENT=8;


ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=12;


ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=3;
COMMIT;


