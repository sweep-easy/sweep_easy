InlineSvg.configure do |config|
  config.asset_file = InlineSvg::CachedAssetFile.new(
    paths: [
      "#{Rails.root}/app/assets/images"
    ],
    filters: /\.svg/
  )
  config.raise_on_file_not_found = true
end
