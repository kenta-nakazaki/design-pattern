require_relative 'framework/manager'
require_relative 'message_box'
require_relative 'underline_pen'

# 準備
manager = Framework::Manager.new
upen = UnderlinePen.new('-')
mbox = MessageBox.new('*')
sbox = MessageBox.new('/')

# 登録
manager.register('strong message', upen)
manager.register('warning box', mbox)
manager.register('slash box', sbox)

# 生成と使用
p1 = manager.create('strong message')
p1.use('Hello, world.')

p2 = manager.create('warning box')
p2.use('Hello, world.')

p3 = manager.create('slash box')
p3.use('Hello, world.')

# 同じ形式の出力方法を別の文字列で再利用
p4 = manager.create('strong message')
p4.use('Hello, Design Pattern.')

p5 = manager.create('warning box')
p5.use('Hello, Design Pattern.')

p6 = manager.create('slash box')
p6.use('Hello, Design Pattern.')
