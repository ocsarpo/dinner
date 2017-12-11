require 'sinatra'

get  '/' do
	send_file 'home.html'
end

get  '/me' do
	send_file 'me.html'
end

get '/dinner' do
	# 점심추천 로직
	# 1. 배열 만들어 메뉴 넣고
	# 2. 랜덤으로 하나 뽑아 출력	
	@choice = [ "참치", "성게알밥","스테이크"].sample
	@url = {
		"참치" => 'http://image.chosun.com/sitedata/image/201503/16/2015031602655_3.jpg',
		"성게알밥" => 'http://cfile3.uf.tistory.com/image/0353B14A51C900AF1FAC71',
		"스테이크" =>'http://t1.daumcdn.net/liveboard/jobsN/c0ea6cf632b6431f83e12b4d3d685252.JPG'
	}
	# src = "<h1>#{choice}<h1>" + 	"<img src=#{url[choice]}>"
	
	#루비는 가장 마지막을 반환한다.  return 뭐시기 라고 써도 됨

	# return src

	#erb : 임베디드 루비   정적인 html에 동적인 루비코드가 들어갈때.. 
	#새로운 폴더  이름은 반드시 views 라고 해야함. 
	# 그 밑에 dinner.erb

	erb :dinner

	#여기서 쓴 변수나 뭐시기를 erb에서 쓸 때에는 <%= %>를 쓴다
	#사용할 변수에  @를 붙혀준다. 안쓰고 하려하면 에라



end
