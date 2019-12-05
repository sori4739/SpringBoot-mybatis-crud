#### Springboot + MyBtis + CRUD 
#### Login, Join, Intercepter, FileUpload

#### 사용자 생성 및 권한 주기 및 DB 생성
- create user 'iu'@'%' identified by 'bitc5600';
- GRANT ALL PRIVILEGES ON *.* TO 'iu'@'%';
- create database iu;
- use iu;

#### 테이블

```sql
CREATE TABLE user(
    id int auto_increment primary key,
    username varchar(100) not null unique,
    password varchar(100) not null,
    email varchar(100), 
    userProfile varchar(200) default '/images/iu3.jpg',
    createDate timestamp
) engine=InnoDB default charset=utf8;
```

```sql
CREATE TABLE board(
    id int auto_increment primary key,
    userId int,
    title varchar(100) not null,
    content longtext,
    createDate timestamp,
    foreign key (userId) references user (id) 
) engine=InnoDB default charset=utf8;
```

#### yml file
```yml
server:
  port: 8080
  servlet:
    context-path: /
    
spring:
  mvc:
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp
      
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://localhost:3306/iu?serverTimezone=Asia/Seoul&useSSL=false&allowPublicKeyRetrieval=true
    username: iu
    password: bitc5600
    
  http:
    encoding:
      charset: UTF-8
      enabled: true
      force: true
      
file:
  path: C:\src\springwork\mybatis-crud-project\src\main\webapp\images\
        
  
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<parent>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-parent</artifactId>
		<version>2.2.1.RELEASE</version>
		<relativePath /> <!-- lookup parent from repository -->
	</parent>
	<groupId>com.iu</groupId>
	<artifactId>mybatis-crud-project</artifactId>
	<version>0.1</version>
	<name>mybatis-crud-project</name>
	<description>Spring crud Project</description>

	<properties>
		<java.version>1.8</java.version>
	</properties>

	<dependencies>
		<!--개인 설정 라이브러리 시작 -->
		<!-- https://mvnrepository.com/artifact/javax.servlet/jstl -->
		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
			<version>1.2</version>
		</dependency>

		<!-- https://mvnrepository.com/artifact/org.apache.tomcat/tomcat-jasper -->
		<dependency>
			<groupId>org.apache.tomcat</groupId>
			<artifactId>tomcat-jasper</artifactId>
			<version>9.0.22</version>
		</dependency>
		<!--개인 설정 라이브러리 끝 -->
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-web</artifactId>
		</dependency>
		<dependency>
			<groupId>org.mybatis.spring.boot</groupId>
			<artifactId>mybatis-spring-boot-starter</artifactId>
			<version>2.1.1</version>
		</dependency>

		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-devtools</artifactId>
			<scope>runtime</scope>
			<optional>true</optional>
		</dependency>
		<dependency>
			<groupId>mysql</groupId>
			<artifactId>mysql-connector-java</artifactId>
			<scope>runtime</scope>
		</dependency>
		<dependency>
			<groupId>org.projectlombok</groupId>
			<artifactId>lombok</artifactId>
			<optional>true</optional>
		</dependency>
		<dependency>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-test</artifactId>
			<scope>test</scope>
			<exclusions>
				<exclusion>
					<groupId>org.junit.vintage</groupId>
					<artifactId>junit-vintage-engine</artifactId>
				</exclusion>
			</exclusions>
		</dependency>
	</dependencies>

	<build>
		<plugins>
			<plugin>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-maven-plugin</artifactId>
			</plugin>
		</plugins>
	</build>

</project>

```