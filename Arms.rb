class Arms
  def initialize name 
    @nameArms = name
    @sumArms = rand(1000)+1000
    @goldArms = rand(25000)+3789
    @lvlArms = 1
    @expArms = 1
    puts "Создана армия "+@nameArms+", численность солдат: "+@sumArms.to_s+", золото в распоряжении: "+@goldArms.to_s+"."
  end
  def event keyArms
    if keyArms == 0
      @byeArm = rand(10)+20
      @byeArms = @goldArms/@byeArm
      @sumArms += @byeArms
      @goldArms -= @byeArms*@byeArm
      @randexpArms = rand(@byeArms)+30*@lvlArms
      @expArms += @randexpArms
      puts "Твоя армия "+@nameArms+" пополнилась на "+@byeArms.to_s+" воинов, золота в остатке: "+@goldArms.to_s+", воинов: "+@sumArms.to_s+"."
    end
    if keyArms == 1
      @goldKing = rand(300000)+150000
      @defArms = rand(@sumArms)
      @goldArms += @goldKing
      @sumArms -= @defArms
      puts "После нападения на противника твоих воинов стало: "+@sumArms.to_s+", а золота: "+@goldArms.to_s+"." 
    end
  end
  
end

war = Arms.new "Мятежники"
count = 1
while count!=256
war.event 0
war.event 1
count+=1
end
