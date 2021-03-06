require 'digest'

class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :email, :password, :password_confirmation, :username
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :username, :presence => true
  validates :email, :presence => true,
            :format => { :with => email_regex },
            :uniqueness => true
  validates :password, :presence => true, 
            :confirmation => true           
  
  before_save :encrypt_password
  
  # return true if the user's password matches the submitted password
  def has_password?(submitted_password)
    # compare encrypted_password with the encrypted version of
    # submitted password
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end  
  
  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end
    
  private 
  
    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end
    
    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end
    
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
  
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
    
end
