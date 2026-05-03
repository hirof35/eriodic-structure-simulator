class Element < ApplicationRecord
  # 1. リンクのIDとして atomic_number を使う
  def to_param
    atomic_number.to_s
  end

  # 2. カテゴリ名をCSSクラス名に変換する（以前作成したもの）
  def category_css_class
    case category
    when "alkali metal" then "alkali-metal"
    when "alkaline earth metal" then "alkaline-earth-metal"
    when "transition metal" then "transition-metal"
    when "post-transition metal" then "post-transition-metal"
    when "metalloid" then "metalloid"
    when "noble gas" then "noble-gas"
    when "reactive nonmetal" then "reactive-nonmetal"
    when "lanthanide" then "lanthanide"
    when "actinide" then "actinide"
    else "unknown"
    end
  end
end # ← このクラスを閉じる「end」が抜けていたのが原因です