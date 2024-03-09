# frozen_string_literal: true

require "test_helper"

class Card::ComponentTest < ViewComponent::TestCase
  def test_renders
    component = build_component

    render_inline(component)

    assert_selector "div"
  end

  private

  def build_component(**options)
    Card::Component.new(**options)
  end
end
