# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mark_facets}
  s.version = "0.1.6.20101224143420"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["markbates"]
  s.date = %q{2010-12-24}
  s.description = %q{mark_facets was developed by: markbates}
  s.email = %q{mark@markbates.com}
  s.extra_rdoc_files = ["README", "LICENSE"]
  s.files = ["lib/mark_facets/rails/rails.rb", "lib/mark_facets/rails/test/authlogic.rb", "lib/mark_facets/rails/test/decode_json.rb", "lib/mark_facets/rails/test/delivered_emails.rb", "lib/mark_facets/rails/test/enable_ssl.rb", "lib/mark_facets/rails/test/rspec/all.rb", "lib/mark_facets/rails/test/rspec/should/have_same_elements.rb", "lib/mark_facets/rails/test/rspec/should/render_404.rb", "lib/mark_facets/rails/test.rb", "lib/mark_facets/rails/time_zones.rb", "lib/mark_facets/ruby/big_decimal.rb", "lib/mark_facets/ruby/file.rb", "lib/mark_facets/ruby/hash.rb", "lib/mark_facets/ruby/magic_attributes.rb", "lib/mark_facets/ruby/math.rb", "lib/mark_facets/ruby/ruby.rb", "lib/mark_facets/ruby/string.rb", "lib/mark_facets/ruby/will_paginate.rb", "lib/mark_facets.rb", "README", "LICENSE"]
  s.homepage = %q{http://www.metabates.com}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{magrathea}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{mark_facets}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
    else
      s.add_dependency(%q<hashie>, [">= 0"])
    end
  else
    s.add_dependency(%q<hashie>, [">= 0"])
  end
end
