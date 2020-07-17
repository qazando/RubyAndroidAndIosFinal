# frozen_string_literal: true


require 'rspec/expectations'


class LoginPage
  include RSpec::Matchers


  def initialize
    get_screen_mappings 'login', 'core'
  end

  def escrever_email
  fill_in @mappings['campo_email'], ('qazando@gmail.com')
  end

  def escrever_senha
    fill_in @mappings['campo_senha'], ('1234567')
  end

  def clicar_em_login
    click @mappings['btn_login']
  end

  def valido_elemento_logado
    element_exists? @mappings['logado']
  end


end
