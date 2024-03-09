class ApplicationViewComponent < ViewComponentContrib::Base
  extend Dry::Initializer

  include ViewComponentContrib::StyleVariants
  include ViewComponentContrib::WrappedHelper

  # You can provide either a proc or any other callable object
  style_config.postprocess_with do |classes|
    # classes is an array of CSS classes
    # NOTE: This is an abstract TailwindMerge class, not to be confused with existing libraries
    TailwindMerge.call(classes).join(" ")
  end
end
