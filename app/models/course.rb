class Course
  include Mongoid::Document
  include ElasticsearchSimple::Concerns::StandardSearch

  field :name, type: String
  field :desc, type: String

  # 经典搜索，包含 name , desc 两个字段
  standard :name, :desc
  pinyin :name

  mapping dynamic: false do
    indexes :name
    indexes :tag
  end
end