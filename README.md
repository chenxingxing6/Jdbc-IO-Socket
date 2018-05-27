# Jdbc-IO-Socket
用Socket传送数据，了解一下底层的原理

![这里写图片描述](https://img-blog.csdn.net/2018052722033233?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L20wXzM3NDk5MDU5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)
```html
-- ----------------------------
-- sql file
-- ----------------------------
DROP TABLE IF EXISTS `tb_file`;
CREATE TABLE `tb_file` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focntent` blob,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
```
---
#项目结构
![这里写图片描述](https://img-blog.csdn.net/20180527220613959?watermark/2/text/aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L20wXzM3NDk5MDU5/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70)

---

#项目源码[csdn下载](https://download.csdn.net/download/m0_37499059/10441394)
