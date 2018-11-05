#重建数据库newxiaoa
    SET NAMES UTF8;
    DROP DATABASE IF EXISTS newxiaoa;
    CREATE DATABASE newxiaoa CHARSET=UTF8;
    USE newxiaoa;
#栏目1 
    #创建表content:
    #cid--内同容排序id
    #content--主内容块
    #isDel--是否删除
    #isDan--是否是危险内容
    CREATE TABLE content(
        cid INT PRIMARY KEY AUTO_INCREMENT,
        content VARCHAR(1024) NOT NULL,
        isDel INT NOT NULL DEFAULT 0,
        isDan INT NOT NULL DEFAULT 1
    );
        #插入一段测试内容-1
        INSERT INTO content VALUES(
            '',
            '中学时暗恋班花，被同班的女汉子知道了，
            连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
            结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
            不该说什么这是男人之间的约定。',
             0,
             0
        );    
        #插入一段测试内容-2
        INSERT INTO content VALUES(
            '',
            '中学时暗恋班花，被同班的女汉子知道了，
            连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
            结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
            不该说什么这是男人之间的约定。',
             0,
             0
        ); 
        #插入一段测试内容-3
        INSERT INTO content VALUES(
            '',
            '中学时暗恋班花，被同班的女汉子知道了，
            连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
            结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
            不该说什么这是男人之间的约定。',
             0,
             0
        ); 
        #插入一段测试内容-4
        INSERT INTO content VALUES(
            '',
            '中学时暗恋班花，被同班的女汉子知道了，
            连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
            结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
            不该说什么这是男人之间的约定。',
             0,
             0
        ); 
        #插入一段测试内容-5
        INSERT INTO content VALUES(
            '',
            '中学时暗恋班花，被同班的女汉子知道了，
            连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
            结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
            不该说什么这是男人之间的约定。',
             0,
             0
        );                                 