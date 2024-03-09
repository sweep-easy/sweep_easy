# frozen_string_literal: true

class Card::Component < ApplicationViewComponent

  style do
    variants {
      wrapper {
        default { %w[ w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700 ] }
      }
      content {
        default { %w[ p-6 space-y-4 md:space-y-6 sm:p-8 ] }
      }
    }
    defaults {
      { wrapper: :default, content: :default }
    }
  end
end
