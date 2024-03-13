InlineSvg.configure do |config|
  config.asset_file = InlineSvg::CachedAssetFile.new(
    paths: [
      Rails.root.join("app/assets/images").to_s,
      Rails.root.join("app/assets/images/icons").to_s
    ],
    filters: /\.svg/
  )
  config.raise_on_file_not_found = true
end
