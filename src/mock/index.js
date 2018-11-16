import Mock from 'mockjs'
import MyInfo from './MyInfo.js'
Mock.mock('http://127.0.0.1/main.php?cid=1', 'post', () => {
  return MyInfo.page1
})
