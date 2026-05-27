# 用户综合管理系统

## 项目简介

本项目是一个基于Java Web的用户综合管理系统，实现了用户的增删改查（CRUD）功能。项目采用MVC架构设计，前端使用JSP页面，后端使用Java Servlet技术，数据库采用MySQL 8.0。

## 技术栈

| 技术 | 版本 | 说明 |
|------|------|------|
| JDK | 1.8+ | Java开发工具包 |
| MySQL | 8.0 | 数据库 |
| Tomcat | 8.0/9.0/10.0 | Web服务器 |
| JSP | 2.3 | 前端页面技术 |
| JDBC | - | 数据库连接技术 |

## 项目结构
UserManagement/
├── src/main/java/
│ ├── dbutil/
│ │ └── Dbconn.java # 数据库连接工具类
│ ├── entity/
│ │ └── User.java # 用户实体类
│ └── model/
│ └── Model.java # 业务逻辑处理类
└── webapp/
├── index.jsp # 主界面导航页
├── insert.jsp # 添加用户页面
├── insertShow.jsp # 添加用户处理页
├── update.jsp # 更新用户页面
├── updateShow.jsp # 更新用户处理页
├── dele.jsp # 删除用户页面
├── deleShow.jsp # 删除用户处理页
├── search.jsp # 查询用户页面
├── showUser.jsp # 显示用户详情页
├── allShow.jsp # 显示所有用户页
└── WEB-INF/
└── lib/
└── mysql-connector-j-8.0.31.jar # MySQL驱动

## 功能说明

| 功能 | 页面 | 描述 |
|------|------|------|
| 显示所有用户 | allShow.jsp | 以表格形式展示所有用户信息 |
| 查询用户 | search.jsp → showUser.jsp | 根据ID查询单个用户详细信息 |
| 添加用户 | insert.jsp → insertShow.jsp | 添加新用户到数据库 |
| 更新用户 | update.jsp → updateShow.jsp | 根据ID更新用户信息 |
| 删除用户 | dele.jsp → deleShow.jsp | 根据ID删除用户（带确认提示） |

## 环境配置

### 1. 安装MySQL 8.0

按照以下链接安装MySQL 8.0：
[https://cloud.tencent.com/developer/article/2307286](https://cloud.tencent.com/developer/article/2307286)

### 2. 创建数据库

登录MySQL后执行以下SQL脚本：

```sql
-- 创建数据库
CREATE DATABASE userdb CHARACTER SET utf8mb4;

-- 使用数据库
USE userdb;

-- 创建用户表
CREATE TABLE user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

-- 插入测试数据
INSERT INTO user (username, password, email) VALUES 
('张三', '123456', 'zhangsan@163.com'),
('李四', '123456', 'lisi@163.com'),
('王五', '123456', 'wangwu@163.com');
3. 配置数据库连接
修改 src/main/java/dbutil/Dbconn.java 中的数据库连接信息：


private static final String URL = "jdbc:mysql://localhost:3306/userdb?useSSL=false&serverTimezone=Asia/Shanghai&characterEncoding=utf8";
private static final String USER = "root";
private static final String PASSWORD = "你的密码";
4. 添加MySQL驱动
将 mysql-connector-j-8.0.31.jar 复制到 webapp/WEB-INF/lib 目录下。

运行指南
1. 启动MySQL服务
cmd
net start mysql80
2. 在IDEA中配置Tomcat
点击 Run → Edit Configurations

点击 + → Tomcat Server → Local

选择Tomcat安装目录

点击 Deployment → + → Artifact → 选择 UserManagement:war exploded

设置 Application context 为 /UserManagement

3. 启动项目
点击IDEA右上角的绿色三角形按钮 ▶ 运行项目。

4. 访问系统
打开浏览器，访问：http://localhost:8080/UserManagement/index.jsp
