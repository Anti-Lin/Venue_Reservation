# 免责声明
**本项目仅供学习交流使用，请勿用于非法用途，不得在任何商业使用，本人不承担任何法律责任。**

# 项目来源
[复旦大学场馆预约脚本](https://github.com/ProgramEverything/fdu-auto-reservation)
[Text_select_captcha](https://github.com/MgArcher/Text_select_captcha)

# 如何使用
``` bash
1、准备运行环境：
pip install -r requirements.txt
2、运行图片识别服务
python service.py
3、运行命令：
python main.py --username <学号> --password <密码> --reservation-arena <场馆名称> --reservation-date YYYY-MM-DD --reservation-time hh:mm
```  