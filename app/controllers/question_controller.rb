class QuestionController < ApplicationController
  def index
    
    @questions = Question.all
    
  end

  def show
    @name = params[:name]
    @question = params[:question]
    
    Question.create(
      name: @name,
      question: @question
      )
  end

  def sign_up
  end
  
  def sing_up_process
    params[:email]
    params[:name]
    params[:password]
    
    User.create(
      email: @email,
      name: @name, 
      password: @password
    )
    
  end
  
  def login
    
  end
  
  def login_process
    @email = params[:@email]
    @password = params[:@password]
    @message = ""
    
    # 유저 인증
    user = User.find_by(email: @email)
    # => nil
    # => email: dkfldjfkjd , name: akjdkfj, password: dkjfadfj
    #해당하는 email을 가진 user가 있다면?
    if user # 존재한다, nil이 아닌 값은 모두 True가 된다. 
      if user.password == @password
        session[:user_email] = user.email
        redirect_to '/'
      else
        @message = "비밀번호가 틀렸습니다."
      end
    else
      @message = "가입이 되어있지 않거나, 이메일이 틀렸습니다."
    end
    
    def logout
      session.clear
      
      redirect_to '/'
    end
    
    
    
  end
  
  
end
