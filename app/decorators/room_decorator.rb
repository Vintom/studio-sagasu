module RoomDecorator
  def speaker_label
    case speaker
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end

  def mixer_label
    case mixer
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end

  def cd_label
    case cd
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end

  def mp3_label
    case mp3
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end

  def md_label
    case md
    when 0
      '無'
    when 1
      '有'
    when 99
      '不明'
    end
  end
end
