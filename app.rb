require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num_sq = params[:number]
    "#{@num_sq.to_i * @num_sq.to_i}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase1 = params[:phrase]
    "#{@phrase1 * @num.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    case @operation
      when "add"
        "#{params[:number1].to_i + params[:number2].to_i}"
      when "subtract"
          "#{params[:number1].to_i - params[:number2].to_i}"
      when "divide"
          "#{params[:number1].to_i / params[:number2].to_i}"
      when "multiply"
          "#{params[:number1].to_i * params[:number2].to_i}"
    end
  end
end
