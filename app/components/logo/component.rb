# frozen_string_literal: true

class Logo::Component < ApplicationViewComponent
  style do
    variants {
      size {
        sm { %w[ h-6 ] }
        md { %w[ h-9 ] }
        lg { %w[ h-12 ] }
      }
    }
  end
end
