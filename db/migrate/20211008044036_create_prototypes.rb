class CreatePrototypes < ActiveRecord::Migration[6.1]
  def change
    create_table :prototypes do |t|
      t.string :title,null: false
      t.text :catch_copy,null: false
      t.text :concept,null: false
      t.references :user,foreign_key:true
      # references参照すると言う意味、ユーザーを参考にする、誰がプロトタイプを投稿したのか？情報を持つカラム
      # foreign外のキーを参照するのをtrueする
      t.timestamps
    end
  end
end
