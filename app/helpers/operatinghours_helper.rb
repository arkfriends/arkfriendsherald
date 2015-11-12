module OperatinghoursHelper
  def select_hrmin(t)
    (select_tag t.to_s + 'hr', options_for_select(0..23, '8')) + ':' +
    (select_tag t.to_s + 'min', options_for_select(['00','15','30','45'], '00'))
  end
end
