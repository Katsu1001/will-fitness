test_user_1 = User.create(nickname: "太郎", email: "taro@taro", password: "tarotaro")
test_user_2 = User.create(nickname: "花子", email: "hanako@hanako", password: "hanakohanako")

column_1 = Column.new(
 name: "ラットプルダウン",
 category_id: 7,
 part_id: 3,
 user_id: test_user_1.id
 )
column_1.image.attach(io: File.open(Rails.root.join("./app/assets/images/Targets.png")), filename: 'Targets.png')
column_1.save

column_2 = Column.new(
 name: "ヨガ",
 category_id: 3,
 part_id: 5,
 user_id: test_user_2.id
 )
column_2.image.attach(io: File.open(Rails.root.join("./app/assets/images/Health & Fitness Guide.png")), filename: 'Health & Fitness Guide.png')
column_2.save

column_3 = Column.create(
 name: "ハイタッチ",
 category_id: 7,
 part_id: 8,
 user_id: test_user_2.id
 )
column_3.image.attach(io: File.open(Rails.root.join("./app/assets/images/sub_group.png")), filename: 'sub_group.png')
column_3.save