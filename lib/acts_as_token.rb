require "acts_as_token/version"

module ActsAsToken
  extend ActiveSupport::Concern

  module ClassMethods

    def acts_as_token(column_name: :token_id, length: 10)
      unless column_names.include? column_name.to_s
        raise "#{ self.name } does not have a column #{ column_name }"
      else
        before_create do |record|
          record.ensure_token_id!(column_name, length)
        end
      end
    end

  end

  def ensure_token_id!(column_name, length)
    self.send("#{ column_name }=", generate_token_id(column_name, length))
  end

  def generate_token_id(column_name, length)
    loop do
      token = rand(10 ** length).to_s.rjust(length,'0')
      break token unless self.class.find_by("#{ column_name }" => token)
    end
  end

end

class ActiveRecord::Base
  include ActsAsToken
end
