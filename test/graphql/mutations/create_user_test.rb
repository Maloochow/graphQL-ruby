require 'test_helper'

class Mutations::CreateUserTest < ActiveSupport::TestCase
    def perform(args = {})
        Mutations::CreateUser.new(object: nil, field: nil, context: {}).resolve(args)
    end

    test 'create new user' do
        user = perform(
            name: 'test User',
            auth_provider: {
                credentials: {
                    email: 'email@gmail.com',
                    password: 'test'
                }
            }
        )

        assert user.persisted?
        assert_equal user.name, 'test User'
        assert_equal user.email, 'email@gmail.com'
    end
end