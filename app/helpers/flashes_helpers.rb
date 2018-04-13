module FlashesHelper
  FLASH_CLASSES =  { alert: "danger", notice: "success", warining: "warining"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym, key
  end

  def user_facint_flashes
    flash.to_hash.slice "alert", "notice", "warining"
  end
end
