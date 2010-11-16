if Rails.v3?
  RSpec::Matchers.define :render_404 do
    match do |response|
      response.code.should == '404'
    end
  end
end

if Rails.v2?
  def render_404
    simple_matcher("render a 404 page") do |given, matcher|
      matcher.failure_message = "expected #{given.inspect} to render a 404 page"
      matcher.negative_failure_message = "expected #{given.inspect} not to render a 404 page"
      given.code.should == '404'
      given.should render_template('public/404')
    end
  end
end