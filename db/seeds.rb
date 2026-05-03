require 'open-uri'
require 'json'

puts "既存データを削除中..."
Element.destroy_all

# 信頼性の高いソースURL
url = "https://raw.githubusercontent.com/neelpatel05/periodic-table-api/master/data.json"

begin
  data = JSON.parse(URI.open(url).read)
  puts "#{data.length}元素のデータを取得しました。インポートを開始します..."

  data.each do |e|
    # 外部データのキー名(atomicNumber等)を、作成したカラム名に変換して保存
    Element.create!(
      atomic_number: e['atomicNumber'],
      symbol:        e['symbol'],
      name:          e['name'],
      xpos:          e['group'],        # 族 (横位置)
      ypos:          e['period'],       # 周期 (縦位置)
      category:      e['groupBlock'],   # カテゴリ（"transition metal"等）
      melt:          e['meltingPoint'], # 融点
      boil:          e['boilingPoint'],  # 沸点
      atomic_weight: e['atomicMass']    # 原子量（文字列で入っている場合があるため、必要に応じて調整）
    )
  end
  puts "全118元素のインポートが完了しました！"

rescue => e
  puts "エラーが発生しました: #{e.message}"
end