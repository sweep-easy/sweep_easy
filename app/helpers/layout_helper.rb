module LayoutHelper
  def sidebar_link(label, href, icon: nil)
    render partial: "components/sidebar_link"
    link_to href, class: "flex items-center p-2 w-full text-base font-medium text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700" do
      if icon
        inline_svg_tag "#{icon}", class: "w-5 h-5 mr-2"
      end
      label
    end
  end
end
