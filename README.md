# ssm-crud

使用SSM(SpringMVC+Spring+MyBatis)框架实现员工信息的增删改查。

### 功能点
1. 分页
2. 数据校验：jquery前端校验+JSR303后端校验
3. ajax

### 技术点
1. 基础框架-ssm（SpringMVC+Spring+MyBatis）
2. 数据库-MySQL
3. 前端框架-bootstrap快速搭建前端界面
4. 项目的依赖管理-Maven
5. MyBatis的分页插件-PageHelper
6. 逆向工程-MyBatis Generator,通过数据库中的单表，自动生成java代码。

### 基础环境搭建
1. 创建一个maven工程
2. 编写pom.xml，引入项目依赖的jar包
• spring
• springmvc
• mybatis
• 数据库连接池，驱动包
• 其他（jstl，servlet-api）
3. 引入bootstrap前端框架
4. 编写ssm整合的关键配置文件
web.xml，spring,springmvc,mybatis，使用mybatis的逆向工程生成对应的bean以及mapper
