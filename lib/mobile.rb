require "mobile/version"

module Mobile
  extend ActiveSupport::Concern

  MOBILE_USER_AGENTS =  'palm|blackberry|nokia|phone|midp|mobi|symbian|chtml|ericsson|minimo|' +
                          'audiovox|motorola|samsung|telit|upg1|windows ce|ucweb|astel|plucker|' +
                          'x320|x240|j2me|sgh|portable|sprint|docomo|kddi|softbank|android|mmp|' +
                          'pdxgw|netfront|xiino|vodafone|portalmmm|sagem|mot-|sie-|ipod|up\\.b|' +
                          'webos|amoi|novarra|cdm|alcatel|pocket|ipad|iphone|mobileexplorer|' +
                          'mobile'

  included do
    helper_method :is_mobile_device?
    helper_method :is_device?
  end

  def is_mobile_device?
    request.user_agent.to_s.downcase =~ Regexp.new(Mobile::MOBILE_USER_AGENTS)
  end

  def is_device?(type)
    request.user_agent.to_s.downcase.include?(type.to_s.downcase)
  end
end

ActionController::Base.send(:include, Mobile)
