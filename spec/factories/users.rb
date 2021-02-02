FactoryBot.define do
  factory :user do
    name                  {"test"}
    email                 {"test@example"}
    password              {"0a0000"}
    password_confirmation {password}
    first_name            {'晶也'}
    last_name             {'水出'}
    first_name_f          {'マサヤ'}
    last_name_f           {'ミズイデ'}
    birthday              {'2000-05-10'}
  end
end