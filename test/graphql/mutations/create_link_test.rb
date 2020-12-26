require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase
    def perform(user: nil, **args)
        Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(args)
    end

    test 'create a new link' do
        link = perform(
            url: 'http://localhost:3000',
            description: 'description',
        )

        assert link.persisted?
        assert_equal link.description, 'description'
        assert_equal link.url, 'http://localhost:3000'
    end
end