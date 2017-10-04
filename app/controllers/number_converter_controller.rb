class NumberConverterController < ApplicationController
  def index
    safe_params = params.permit(:number, :base)
    # if we are submitting the fom
    if !params.empty?
      @number = safe_params[:number].to_i
      @base = safe_params[:base].to_i
      conversion = Conversion.new(input_number: @number, base: @base)
      # conversion.input_number = @number
      # conversion.base = @base
      conversion.save
    end

    @conversions = Conversion.all.reverse
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
    params.require(:conversion).permit(:input_number, :base)
  end
end
