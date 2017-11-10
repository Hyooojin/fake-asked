### sign_up
#### Database 유저 정보를 저장하는 것
1. User 테이블 생성
    -User model
2. User 정보를 저장
    -회원정보를 받아, DB에 저장

### login
#### session 유저 정보를 검증을 거친 후 저장하는 것
1. User 정보를 받는다.
2. 받은 User 정보와 DB의 User 정보가 일치하는지 확인
3. if 일치, session에 유저 정보를 넣는다. 
    else, 이유를 말해주고 로그인 안시킨다.
    session[:email] = 유저 정보를 넣는다. 
4. 로그아웃
    session.clear

