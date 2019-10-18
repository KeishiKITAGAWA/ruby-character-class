# テストフレームワーク minitest を利用する
require 'minitest/autorun'

# テスト結果の見た目を良くする
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

# テスト対象のRubyスクリプトを読み込む
require_relative '../lib/enemy.rb'

# テストを実行するためのクラス
class EnemyTest < Minitest::Test
  # 【この class を書き換える】
  def setup
    @enemy_phys = Enemy.new('mafia_phys', 15)
  end
end
