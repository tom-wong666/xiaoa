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
    'http://120.77.182.31:90/data/img/sex/sexPhoto00001.gif',
        0,
        0
); 
#插入一段测试内容-3
INSERT INTO content VALUES(
    '',
    'http://120.77.182.31:90/data/audio/music/muAudio_bitMe_00001.mp3&http://120.77.182.31:90/data/audio/music/muAudio_bitMe_00001.ogg&http://120.77.182.31:90/data/audio/music/muAudio_bitMe_00001.wav',
        0,
        0
); 
#插入一段测试内容-4
INSERT INTO content VALUES(
    '',
    'http://120.77.182.31:90/data/video/humor/hlVideo_TBBT_00001.mp4&http://120.77.182.31:90/data/video/humor/hlVideo_TBBT_00001.avi&http://120.77.182.31:90/data/video/humor/hlVideo_TBBT_00001.Ogg',
        0,
        0
); 
#插入一段测试内容-5
INSERT INTO content VALUES(
    '',
    'http://120.77.182.31:90/data/img/humor/hlPhoto00001.gif',
        0,
        0
); 
#插入一段测试内容-6
INSERT INTO content VALUES(
    '',
    'http://120.77.182.31:90/data/video/terrifying/kbVideo00001.mp4&http://120.77.182.31:90/data/video/terrifying/kbVideo00001.avi&http://120.77.182.31:90/data/video/terrifying/kbVideo00001.Ogg',
        0,
        0
);    
#插入一段测试内容-7
INSERT INTO content VALUES(
    '',
    '小时候家里开小卖部，但是不准我吃零食。收的零钱都放在书桌的柜子里，因为自家打的柜子，侧面有个手指大小的虫洞，我有时间就用个铁勾子从里面偷钱。每天都能偷几毛钱。在学校买东西和妹妹一起吃。妹妹就很好奇，我大方的把生财之路透露给她了。结果她上去搞了个一百的。九几年啊，100的啊。晚上我爸查账发现不对了，一逼问妹妹就招了。因为妹妹第一次偷就放过了，然后我跪着被藤条子抽。妹妹在旁边帮我爸计数。',
        0,
        0
); 
#插入一段测试内容-8
INSERT INTO content VALUES(
    '',
    '中学时暗恋班花，被同班的女汉子知道了，
    连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
    结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
    不该说什么这是男人之间的约定。',
        0,
        0
); 
#插入一段测试内容-9
INSERT INTO content VALUES(
    '',
    '在非洲大草原上，一只雄狮在巡察自己的地盘，一边走着一边撒尿做标记，别的动物闻到狮子的味道都得躲得远远的。一只野母猪看到十分亢奋，立即也模仿狮子的行为，结果不几天就招来狮子。野母猪死了之后问上帝，为什么狮子可以那样做，我为什么不可以？上帝笑笑，这世界强者和弱者的区别就是脑容量的不同，猪的地盘只有餐桌，而狮子的地盘却是整个草原。',
        0,
        0
); 
#插入一段测试内容-10
INSERT INTO content VALUES(
    '',
    '中学时暗恋班花，被同班的女汉子知道了，
    连忙请她保密，本以为向来爽朗不羁的她是不屑告密的，
    结果丫飞快的把我出卖了。 后来想想，也可能是我拜托她的方式不对，
    不该说什么这是男人之间的约定。',
        0,
        0
);                                 