# Yunbi Chat

## Deploy

#### Rails
```ruby
# app/helpers/application_helper.rb
def chat_token
    payload = {
      jti: current_user.id.to_s,
      iss: current_user.nickname,
      sub: Digest::MD5.hexdigest(current_user.email)[0...3].upcase,
      adi: Settings.roles.chatroom.admin.include?(current_user.email)
    }
    JWT.encode payload, 'xxx', 'HS256'
  end
```
```html
# app/views/welcome/index.html.erb
<iframe frameborder="0" name="Iframe1" src="https://bcachat.com:4443/?xtoken=<%= chat_token %>" 
width="100%" height="350"></iframe>
```
#### Phoenix
```elixir
# web/controllers/page_controller.ex
{:ok, claims} = JsonWebToken.verify(jwt, %{key: "xxx"})
```
