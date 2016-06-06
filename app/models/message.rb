class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :content
   validates :name, :email, :subject, :content, presence: true

   def headers
    {
      :subject => "My Contact Form",
      :to => 'knopfler42@gmail.com',
      :from => %("#{name}" <#{email}>)
    }
  end

end