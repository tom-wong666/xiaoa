#!/bin/bash

# 导入环境变量
source /etc/profile

# 定义当前脚本全局变量
WORK_DIR="/javaXiaoa"
RUN_DIR="${WORK_DIR}/dev"
LOG_DIR="${RUN_DIR}/log"
APP_NAME="xiaoa-0.0.2.jar"
SERVER="120.77.182.31"
PORT="8090"
DATE_N=`date "+%Y-%m-%d %H:%M:%S"`
USER_N=`tom`

# 检测IP端口是否能连接的方法
check_ip_port_connect(){
    server=$1
    port=$2
    result=`echo -e "\n" | telnet ${server} ${port} 2>/dev/null | grep Connected | wc -l`
    if [[ ${result} -eq 1 ]]; then
        echo "${DATE_N} ${USER_N} execute $0 [INFO] Network ${server}:${port} is Open."
        return 0
    else
        echo "${DATE_N} ${USER_N} execute $0 [WARN] Network ${server}:${port} is Close."
        return 6
    fi
}

# 0.检测日志目录LOG_DIR
if [[ -d "${LOG_DIR}" ]];then
    echo "${DATE_N} ${USER_N} execute $0 [INFO] RUN_DIR already exists."
    echo -e "\n\n${DATE_N} ${USER_N} execute $0 [INFO] RUN_DIR already exists." >>${LOG_DIR}/start.log
else
    mkdir -p ${LOG_DIR}
    echo "${DATE_N} ${USER_N} execute $0 [INFO] create LOG_DIR:${LOG_DIR}"
    echo -e "\n\n${DATE_N} ${USER_N} execute $0 [INFO] create LOG_DIR:${LOG_DIR}" >>${LOG_DIR}/start.log
fi

# 1.检测 并停掉APP_NAME 进程
PID=`ps -ef | grep java |grep ${APP_NAME} |awk '{print $2}'`
if [[ -n "${PID}" ]];then
   kill -9 ${PID}
   sleep 2s
   echo "${DATE_N} ${USER_N} execute $0 [INFO] stop old ${APP_NAME} processing,sleep 2s"
   echo "${DATE_N} ${USER_N} execute $0 [INFO] stop old ${APP_NAME} processing,sleep 2s" >>${LOG_DIR}/start.log

   # 如果没有停掉 就报错退出
   ps -elf| grep ${APP_NAME} | grep -v grep > /dev/null
   if [[ $? -eq 0 ]];then
        echo "${DATE_N} ${USER_N} execute $0 [ERROR] stop old ${APP_NAME} processing fail,please check"
        echo "${DATE_N} ${USER_N} execute $0 [ERROR] stop old ${APP_NAME} processing fail,please check" >>${LOG_DIR}/start.log
        exit -1
   fi

   # 进程停止成功
   echo "${DATE_N} ${USER_N} execute $0 [INFO] stop old ${APP_NAME} processing success"
   echo "${DATE_N} ${USER_N} execute $0 [INFO] stop old ${APP_NAME} processing success" >>${LOG_DIR}/start.log
fi

# 判断并创建执行目录 RUN_DIR
if [[ -d "${RUN_DIR}" ]];then
#    rm -rf ${RUN_DIR}/*
    echo "${DATE_N} ${USER_N} execute $0 [INFO] clear RUN_DIR:${RUN_DIR}"
    echo "${DATE_N} ${USER_N} execute $0 [INFO] clear RUN_DIR:${RUN_DIR}" >>${LOG_DIR}/start.log
else
    mkdir -p ${RUN_DIR}
    echo "${DATE_N} ${USER_N} execute $0 [INFO] create RUN_DIR:${RUN_DIR}"
    echo "${DATE_N} ${USER_N} execute $0 [INFO] create RUN_DIR:${RUN_DIR}" >>${LOG_DIR}/start.log
fi

# 判断服务包 并移动到运行目录
if [[ -f "${WORK_DIR}/${APP_NAME}" ]];then
    cp -rf ${WORK_DIR}/${APP_NAME} ${RUN_DIR}
    echo "${DATE_N} ${USER_N} execute $0 [INFO] target file copy to work space"
    echo "${DATE_N} ${USER_N} execute $0 [INFO] target file copy to work space" >>${LOG_DIR}/start.log
else
    echo "${DATE_N} ${USER_N} execute $0 [ERROR] target file ${WORK_DIR}/${APP_NAME} is not exit"
    echo "${DATE_N} ${USER_N} execute $0 [ERROR] target file ${WORK_DIR}/${APP_NAME} is not exit" >>${LOG_DIR}/start.log
    exit 1;	
fi

# 进入服务运行目录 并进行服务启动
cd ${RUN_DIR}
echo -e "\n\n" >>${LOG_DIR}/server_run.log
nohup java -Xdebug -Xrunjdwp:transport=dt_socket,address=8866,server=y,suspend=n -jar ${RUN_DIR}/${APP_NAME} > ${LOG_DIR}/server_run.log 2>&1 &

# 服务启动监控
for((i=0;i<=60;i++));do
    check_ip_port_connect ${SERVER} ${PORT}
    if [[ $? -eq 0 ]]; then
        echo "${DATE_N} ${USER_N} execute $0 [INFO] start processing ${APP_NAME} end,success"
        echo "${DATE_N} ${USER_N} execute $0 [INFO] start processing ${APP_NAME} end,success" >>${LOG_DIR}/start.log
        exit 0
    else
        sleep 1s
        echo "${DATE_N} ${USER_N} execute $0 [WARN] check processing ${APP_NAME} is not OK,sleep 1s"
        echo "${DATE_N} ${USER_N} execute $0 [WARN] check processing ${APP_NAME} is not OK,sleep 1s" >>${LOG_DIR}/start.log
    fi
done

echo "${DATE_N} ${USER_N} execute $0 [ERROR] start processing ${APP_NAME} error,time out"
echo "${DATE_N} ${USER_N} execute $0 [ERROR] start processing ${APP_NAME} error,time out" >>${LOG_DIR}/start.log
