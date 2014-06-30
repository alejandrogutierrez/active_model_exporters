require 'ostruct'
require 'action_controller'
require 'active_model_exporters'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'
require 'fixtures/models'
require 'fixtures/exporters'

module TestHelper
  Routes = ActionDispatch::Routing::RouteSet.new
  Routes.draw do
    get ':controller(/:action(/:id))'
    get ':controller(/:action)'
  end

  ActionController::Base.send(:include, Routes.url_helpers)
end

class ActionController::TestCase
  def setup
    @routes = TestHelper::Routes
  end
end