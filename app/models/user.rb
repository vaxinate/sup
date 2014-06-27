class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable,
         :validatable, :registerable, :omniauthable

  acts_as_token_authenticatable # devise friendly token auth

  acts_as_followable
  acts_as_follower
  acts_as_messageable

  has_many :sent_sups, class_name: 'Sup', foreign_key: 'sender_id'
  has_many :recieved_sups, class_name: 'Sup', foreign_key: 'recipient_id'

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.build_profile_from_omniauth(auth) if user.new_record?
    end
  end

  # Carries over the fields from oauth to the registration form so that we
  # can present appropriate errors to the user
  def self.new_with_session(params, session)
    if session['devise.user_attributes']
      new(session['devise.user_attributes']) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  # Copy the omniauth hash to the given user
  def build_profile_from_omniauth(auth)
    self.provider = auth.provider
    self.uid = auth.uid
    self.name = auth.info.name
    self.email = auth.info.email
    parse_description(auth)
    self
  end

  def password_required?
    super && self.try(:provider).blank?
  end

  # If the user doesn't have a password (oauth), don't require one in order to
  # edit the user
  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

  protected

  def confirmation_required?
    super && self.try(:provider).blank?
  end
end
