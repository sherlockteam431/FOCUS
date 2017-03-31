module UsersHelper
    def gravatar_for(user)
        gravatar_id = user.userId
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
        image_tag(gravatar_url, alt: user.firstName, class: "gravatar")
    end
end
