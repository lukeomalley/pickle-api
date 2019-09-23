# frozen_string_literal: true

class Mutations::BaseMutation < GraphQL::Schema::RelayClassicMutation
  def secret_key
    'fdsa-87DJf.e*.d##=?fdaf./32al-u3#ekf-#324&^2343'
  end

  # given some payload, I want to return a token
  def encode(payload)
    JWT.encode(payload, secret_key, 'HS512')
  end

  # given a token, I want to return the original payload
  def decode(token)
    JWT.decode(token, secret_key, true, {algorithm: "HS512"})[0]
  end
end
