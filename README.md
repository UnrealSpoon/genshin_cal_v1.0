# 原神圣遗物计算器v1.0
该文件为原神毕业圣遗物属性计算器+两件圣遗物比较计算器
bilibili@讲故事的勺子啊啊啊，内有详细程序讲解
圣遗物搭配教学+编程思路讲解传送门
https://space.bilibili.com/184421129
圣遗物搭配教学为【硬核原神1,2,3】三期内容
编程思路教学在【硬核原神3】的2P

excel文件使用方法：
1. 输入你目前角色的属性。
2. 输入你想脱掉的圣遗物的属性
3. 输入你想换上的圣遗物的属性
4. 比较结果中两个伤害期望。哪个高就戴哪个

matlab文件使用方法
1. 选择角色、武器、圣遗物套装
2. 定义圣遗物的初始等级syw_initial_level（初始等级为1代表初始5件圣遗物上共有一个数字攻击、一个百分攻击、一个暴击、一个暴伤。值得注意的是，只有在计算后期装备初始有3~4个有用副词条时才需要设置这个值，否则设置为0就可以了。因为成长的时候第一次成长也相当于从无到有的给了一个词条。这句话有点难理解，不懂的可以私信bilibili@讲故事的勺子啊啊啊）
    定义圣遗物的成长等级syw_growth_level（1级代表成长数值最低，4级代表成长数值最高。建议设置为2级）
    定义圣遗物的副词条数量syw_upgrade_no（这个数量代表5件圣遗物一共强化了多少次在有用词条上）
3. 设置输出的excel的文件及工作簿序号
4. 保存文件，运行main函数
5. 参照《输出的excel的内容含义模板》解读输出的文件

注意：每次运行后，下次运行前需要在command window输入clear+回车来清空上一次的运行数据，否则可能出错。
