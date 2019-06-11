module StudioDecorator
  def late_night_label
    case late_night
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end

  def locker_room_label
    case locker_room
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end
  
  def parking_label
    case parking
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end
end
