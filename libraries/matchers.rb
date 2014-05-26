if defined?(ChefSpec)
  def download_and_extract_package(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:ark, :install, resource)
  end
end