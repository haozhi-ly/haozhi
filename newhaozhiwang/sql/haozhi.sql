select * from userinfo;
select * from admin;
select * from course;
select * from courseType;
select * from courseManage;
select * from courseAssess;
select * from courseQuestion;
select * from courseNote;
select * from courseAnswer;
select * from attention;
select * from studyCourse;
select * from selfMessage;
select * from cgroup;

drop table userinfo;
drop sequence seq_userid cascade constraints;
delete from userinfo;
----------------1.用户表
create table userinfo(
       userid int primary key,
       uname varchar2(20),
       email varchar2(20), 
       upassword varchar2(50),
       gender varchar2(10),
       photo varchar2(60),--头像
       usign varchar2(100),--个性签名
       introdution varchar2(300),--自我介绍
       status int ,--状态（是否激活）
       score int ,--学分
       signDate date ,  --签到       
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段    
);
select * from UserInfo where uname='超超' and upassword=123456
create sequence seq_userid start with 1;

insert into userinfo values(seq_userid.nextval,'ly','123456@qq.com','123456','男',null,'我就是我，颜色不一样是烟火','一只会飞的鱼',1,0,null,null,null);
insert into userinfo values(seq_userid.nextval,'超超','23456@qq.com','123456','女',null,'我就是我，颜色不一样是烟火','我很傻很天真',1,0,null,null,null);
insert into userinfo values(seq_userid.nextval,'仗剑画江湖','345678@qq.com','123456','男',null,'我就是我，颜色不一样是烟火','我很傻很天真',1,0,null,null,null);
insert into userinfo values(seq_userid.nextval,'雨落画汀珘','634607145@qq.com','123456','女',null,'我就是我，颜色不一样是烟火','想成为超人',1,0,null,null,null);
insert into userinfo values(seq_userid.nextval,'萧山','1234566@qq.com','123456','男',null,'我就是我，颜色不一样是烟火','我很傻很天真',1,0,null,null,null);

commit;

drop table admin;
drop sequence seq_aid ;
--------------2.管理员
create table  admin(
       aid int primary key,
       aname varchar2(20),
       email varchar2(20), 
       apassword varchar2(20),
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段  
);
create sequence seq_aid start with 1;
insert into admin values(seq_aid.nextval,'管理员','123456@qq.com','123456',null,null,null);

drop table course;
drop sequence seq_courseid ;
delete from course;
select * from course;
-----------------3.课程表
create table course(
       courseid int primary key,
       ctitle varchar2(100),--标题
       cintrodution varchar2(500),--课程简介
       ctid int 
            constraint FK_courseType_ctid references courseType(ctid),--课程类别（外键）
       courseting varchar2(100),--应用于课程关键字搜索
       coursephoto varchar2(100),--课程图片
       userId int 
              constraint FK_userinfo_userid references userinfo(userid),--外键 课程的创建者
       cview int ,--浏览量
       createTime date,--创建时间
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段  
)
ALTER TABLE haozhi.course RENAME COLUMN temp01 TO createTime --修改表列名 
ALTER TABLE haozhi.course MODIFY createTime date  --修改字段类型 

update course set createTime = to_date('2016-7-20','yyyy-mm-dd');
create sequence seq_courseid start with 1;

insert into course values(seq_courseid.nextval,'人像摄影高级教程','由摄影师杨最醉主讲的人像摄影高级教程，从人像摄影器材到主题策划、光线捕捉、后期调色、磨皮等各个角度讲解。',
1,'人像 摄影',null,3,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'AI之全程揭秘美图秀秀UI设计','以 ios系统手机app为例，全程揭秘美图秀秀UI设计。从图标到启动界面，再到功能界面，一步一步重现美图秀秀的绘制过程。从临摹开始，零基础也可以快速掌握手机app的UI设计方法。',
2,'创意 设计 UI',null,5,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'吉他自学入门 ','本课程通俗易懂，按照由浅入深、循序渐进的学习规律，把乐理基础、乐感训练和弹奏技巧三者有机结合起来，为吉他初学者提供一条科学规范合理的学习途径',
3,'声乐 吉他',null,3,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'跆拳道品势教学 ','跆拳道品势教学，跆拳道品势与跆拳道竞技腿法同为跆拳道运动的重要组成部分，品势动作包含跆拳道各类技法的精髓，长期练习可以很好的训练个人的协调性和发力，加深对跆拳道精神的理解。',
4,'运动 跆拳道',null,2,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'html,div+css视频教程(2014最新,带多个企业级项目实战) ','本课程讲解细腻，加入了作者很多付出，希望能够对大家的学习产生很大帮助',
5,'IT html',null,4,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'如何自制冷萃咖啡/冰滴咖啡  ','炎炎夏日，很多人喜欢在咖啡里加冰块以图凉爽。然而近期由于星巴克的推广，让冷萃咖啡走进了大家的视线。冷萃咖啡和普通的冰咖啡有什么不同？
冰镇咖啡或冰咖啡是指用热水快速萃取、然后加冰块或急速降温后的冷饮咖啡。冷萃咖啡是指用低于摄氏5度的水长时间低温浸泡萃取的咖啡饮料。',
6,'兴趣 咖啡',null,3,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'韩语零基础入门','标准韩国语第一册(修订版) 1-13课',
7,'语言 韩语',null,5,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'15分钟与陌生人成为朋友 ','什么？你还是单身？那快快点击这个课程，纯干货方法，观看后立即成为交际达人。',
8,'职场 朋友',null,2,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
insert into course values(seq_courseid.nextval,'腾飞五千年之《塞北三朝之金》全22集 ','　公元1125年，曾经幅员万里的大辽帝国，被原本附属于自己的女真人消灭了。那么女真是一个什么样的民族？他们起源于何方？又是怎样从一个原始部落逐渐发展壮大，如何创造了仅用12年就灭辽平宋的奇迹？',
9,'公开课 五千年',null,4,0,to_date('2016-7-20','yyyy-mm-dd'),null,null);
commit;

select s.*,(select count(1) from studyCourse where courseid = s.courseid ) memberCount,
		(select avg(assess) from studyCourse where courseid = s.courseid) assessAvg,
		(select * from userinfo where userid = s.userid ) users from course s 

select * from courseType;
-------4.课程类别表
create table courseType(
       ctid int primary key,
       typename varchar2(20),
       temp01 varchar2(200)  --备用字段
);
create sequence seq_ctid start with 1;
insert into courseType values(seq_ctid.nextval,'摄影课堂',null);
insert into courseType values(seq_ctid.nextval,'创意设计',null);
insert into courseType values(seq_ctid.nextval,'声乐器乐',null);
insert into courseType values(seq_ctid.nextval,'运动健身',null);
insert into courseType values(seq_ctid.nextval,'IT互联网',null);
insert into courseType values(seq_ctid.nextval,'兴趣爱好',null);
insert into courseType values(seq_ctid.nextval,'语言学习',null);
insert into courseType values(seq_ctid.nextval,'职场技能',null);
insert into courseType values(seq_ctid.nextval,'公开课',null);

drop table courseManage;
drop sequence seq_cmid ;
--------------5.课时管理表
create table courseManage(
       cmid int primary key ,
       courseid int 
                 constraint FK_course_courseid references course(courseid),
       type int ,--(o/1，表示视频或图文)
       title varchar2(50),--课时标题
       courseseq int ,--课时序号
       pathOrContetn varchar2(2000),--课时内容（路径或者内容）
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段  
);
create sequence seq_cmid start with 1;
insert into courseManage values(seq_cmid.nextval,6,1,'L1:超级简单的冷萃咖啡制作方... ',1,'<p>冷萃咖啡听起来高大上，但实际上制作非常简单。</p><p><strong>你需要准备的材料有：</strong>
</p><p>咖啡粉（建议使用单品咖啡）</p><p>冷藏过的纯净水（据说矿泉水会不利于风味萃取）</p><p>过滤设备（滤纸或法压壶或挂耳咖啡）</p><p>杯子</p>
<p><strong>冲泡步骤：</strong></p><p>以法压壶冲泡为例</p><p><img src="http://f1.howzhi.com/course/2016/07-05/0951004c19aa105897.jpg" alt="">
</p><p> </p><p>1、把10~12g咖啡粉放入法压壶</p><p>2、倒入180ml左右的冷藏纯净水</p><p>3、把滤网下压到法压壶中部</p><p>4、放到冰箱5摄氏度以下冷藏12小时左右即可</p>
<p>是不是超级简单？</p><p>实际如果使用挂耳咖啡更简单，只要准备一个杯子，把挂耳咖啡包丢进去，注入适量冷水，再冷藏12个小时即可！</p><p>
<img src="http://f1.howzhi.com/course/2016/07-05/094900c9e831099088.jpg" alt=""></p><p>甚而还可以进行大量制作</p><p>
<img src="http://f1.howzhi.com/course/2016/07-05/0952022f0dcc504072.jpg" alt=""></p><p><img src="http://f1.howzhi.com/course/2016/07-05/09520338f95e750367.jpg" alt="">
</p><p><img src="http://f1.howzhi.com/course/2016/07-05/09520331395c632441.jpg" alt=""></p><p> </p>',null,null,null);
insert into courseManage values(seq_cmid.nextval,6,1,' L2:高大上的冰滴法 ',1,'
<p>冰滴咖啡的制作相对会比较麻烦，因为需要使用专用的冰滴装置。</p><p><img src="http://f1.howzhi.com/course/2016/07-05/0955539d7214579669.jpg" alt="">
</p><p><strong>材料</strong></p><p>冰滴式滴滤器、深培咖啡豆、矿泉水、冰块。</p><p><strong>制作步骤</strong></p><p>1 将咖啡豆用磨豆机2-3刻度研磨。
<br>2 把滤网放入萃取瓶底部。<br>3 咖啡粉倒入萃取瓶中，并将咖啡粉整平。<br>4 将萃取瓶置于收集瓶上方，再将滴盘放在萃取瓶上方。<br>5 准备冰块与过滤纯水，用1：1之比例倒入储水球。
<br>6 打开控制开关均匀的将咖啡粉表面淋湿。<br>7 调整节流阀以每分钟约40~60滴最适合 。<br>8 制作完成，享用。</p><p>
<img src="http://f1.howzhi.com/course/2016/07-05/095710640539833562.jpg" alt=""><br><em>正在萃取中的冰滴咖啡</em></p><p><strong>萃取秘诀</strong>
</p><p>1 咖啡粉与冰水的比例约为1：12~20，可随个人喜好而定。<br>2 为使咖啡粉增加与水接触面积，故咖啡粉研磨程度约在虹吸式与滤压式间为佳。
<br>3 因萃取时间长，故适合使用深焙咖啡豆、高级纯咖啡或冰滴专用咖啡豆。<br>4 冰滴式咖啡先浓后淡，故需等待冰水全部滴完后才能饮用最佳风味。<br>
5 水滴式咖啡的一个成败关键则是滴滤速度，以10秒七滴左右的慢速滴滤为佳。水与咖啡粉有较长的时间融合，咖啡口感较饱和;若滴滤时间太快，味道太淡
，同时会产生积水外溢，反之，太慢会使得咖啡发酵，产生酸味及酒味。</p>',null,null,null);

-----------------6.课程评价表
create table courseAssess(
       csid int primary key ,
       userid int 
              constraint FK_userinfo_uid references userinfo(userid),--用户id(外键)
       cmid int 
              constraint FK_courseManage_cmid references courseManage(cmid),--课时管理id(外键)
       content varchar2(500),--评价内容
       time date, --评价时间
       readstatus int, --0或1表示未读或已读
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段  
);
create sequence seq_csid start with 1;
insert into courseAssess values(seq_csid.nextval,1,1,'老师讲的非常好！',sysdate,0,null,null,null);
insert into courseAssess values(seq_csid.nextval,1,2,'今天终于学会了做咖啡！',sysdate,0,null,null,null);

--------------------7.课程提问表
create table courseQuestion(
       cqid int primary key,
       userid int 
              constraint FK_userinfo_userid01 references userinfo(userid),--提问人  用户id(外键)
       cmid int 
              constraint FK_courseManage_cmid01 references courseManage(cmid),--课时id(外键)
       cqcontent varchar2(500),--评价内容
       cqtime date,--提问时间
       cqview int ,---浏览次数
       qreadstatus int, --0或1表示未读或已读
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段 
);
create sequence seq_cqid start with 1;
insert into courseQuestion values(seq_cqid.nextval,1,1,'虽然讲的很仔细，但还是不太会！',sysdate,1,0,null,null,null);
insert into courseQuestion values(seq_cqid.nextval,4,1,'水的分量还是把握不好，老师教教技巧吧！',sysdate,1,0,null,null,null);

drop table courseNote;
drop sequence seq_coursenoteId ;
---------------------8.课程笔记表
create table courseNote(
       courseNoteId int primary key ,
       userid int 
              constraint FK_userinfo_userid02 references userinfo(userid),-- 用户id(外键)
       cmid int 
              constraint FK_courseManage_cmid02 references courseManage(cmid),--课时id(外键)
       praiseNumber varchar2(500) ,--赞的人，拼接
       noteContent varchar2(500),--笔记内容
       ntime date,
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段 
);
create sequence seq_courseNoteId start with 1;
insert into courseNote values(seq_courseNoteId.nextval,2,1,null,'冷萃咖啡，最重要的是把握好水的分量以及咖啡的量',sysdate,null,null,null);


----------------------9.课时问题问答表
create table courseAnswer(
       caid int primary key ,
       cqid int 
            constraint FK_courseQuestion_cqid references courseQuestion(cqid),-- 用户id(外键)
       userid int 
              constraint FK_userinfo_userid04 references userinfo(userid),-- 回答问题的人 用户id(外键)
       answerContent varchar2(100),
      answertime date ,--回答时间
        temp01 varchar2(200),--备用字段
        temp02 varchar2(200),--备用字段
        temp03 varchar2(200)--备用字段 
);
create sequence seq_caid start with 1;
insert into courseAnswer values(seq_caid.nextval,1,3,'多多联系一下就好了，相信自己！',sysdate,null,null,null);


--------------------------10.关注表（保留意见）
create table attention(
       atid  int  primary key,  
       attention int 
                 constraint FK_userinfo_userid05 references userinfo(userid),-- 被关注的人 用户id(外键)
       userid int 
              constraint FK_userinfo_userid06 references userinfo(userid),-- 关注发起者 用户id(外键)
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段 
);
create sequence seq_atid start with 1;
insert into attention values(seq_atid.nextval,3,1,null,null,null);
insert into attention values(seq_atid.nextval,1,3,null,null,null);

select * from (select s.*,(select count(1) from studyCourse where courseid = s.courseid ) memberCount,
(select avg(assess) from studyCourse where courseid = s.courseid) assessAvg from course s order by memberCount desc) where rownum<=3 ;

select * from studyCourse
---------------------11.学习课程表
create table studyCourse(
       scid int primary key,
       userid int 
              constraint FK_userinfo_userid07 references userinfo(userid),
       courseid int 
               constraint FK_course_courseidd references course(courseid), 
       begintime date ,----加入时间
       assess int ,---评价等级（1~5星）
       studyPeriod varchar2(500),---已学习的课时（拼接（可做学习进度）
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段
);
create sequence seq_scid start with 1;
insert into studyCourse values(seq_scid.nextval,5,5,to_date('2016-8-1','yyyy-mm-dd'),2,null,null,null,null);
insert into studyCourse values(seq_scid.nextval,4,6,to_date('2016-8-10','yyyy-mm-dd'),4,null,null,null,null);
insert into studyCourse values(seq_scid.nextval,2,5,to_date('2016-8-1','yyyy-mm-dd'),4,null,null,null,null);
commit;
update studyCourse set userid=5 where scid=3;
-------------12.私信表  or   留言表
create table selfMessage(
       smid int primary key ,
       sendman int 
               constraint FK_userinfo_userid08 references userinfo(userid),--发信人
       receiveman int
                  constraint FK_userinfo_userid09 references userinfo(userid),--收信人
       scontent varchar2(500),
       smtime date,--发信时间
       sendType int ,---(0/1,o:代表留言，1：代表私信)
       sreadstatus int, --0或1表示未读或已读
       temp01 varchar2(200),--备用字段
       temp02 varchar2(200),--备用字段
       temp03 varchar2(200)--备用字段
);
create sequence seq_smid start with 1;
insert into selfMessage values(seq_smid.nextval,1,3,'哈喽halo！！',sysdate,0,0,null,null,null);
insert into selfMessage values(seq_smid.nextval,3,1,'你好呀！！',sysdate,0,0,null,null,null);


-----------------13.小组表
create table cgroup(
       gid int primary key ,
       groupname varchar2(50),---小组名
       createman int
                 constraint FK_userinfo_userid001 references userinfo(userid),--创建人 
       createtime date,---创建时间
       groupnumber varchar2(500),---小组成员（拼接）
       peoplecount int,--小组成员总数
       pic varchar2(200),--小组头像
       introduction varchar2(400)--小组简介
);
drop table cgroup;
create sequence seq_gid start with 1;
insert into cgroup values(seq_gid.nextval,'摄影公社',3,sysdate,'3,1,2',1000,null,'摄影爱好者的天堂');
insert into cgroup values(seq_gid.nextval,'绘画世界',2,sysdate,'2,1,4',2000,null,'灵感来自于生活');
commit;

------------------话题表 topic
