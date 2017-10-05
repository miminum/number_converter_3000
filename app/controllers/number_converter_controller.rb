class NumberConverterController < ApplicationController
  def index
    safe_params = params.permit(:number, :base)
    # if we are submitting the fom
    if !params.empty?
      number = safe_params[:number]
      base = safe_params[:base]
      @number_conversion = NumberConversion.new(number: number, base: base)
      # conversion.input_number = @number
      # conversion.base = @base
      @number_conversion.save
    end

    @past_conversions = NumberConversion.all.order(created_at: :desc)
  end

  def base
    @base = params[:base]
    @base = @base.to_i
  end

  # def create
  #   @conversion = Conversion.new(conversion_params)
  #   @conversion.save
  #   if @conversion.save
  #     redirect_to :back
  #   end
  # end

  private
  def conversion_params
    params.require(:conversion).permit(:number, :base)
  end
end
