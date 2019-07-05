# cctvproject
<h1>프로젝트 가이드</h1>
<h2>사용법</h2>
<p>1. spring/root-context.xml 설정파일에 있는 mysql 아이디값 맞춰놓기<p>
<p>2. 첫번째 페이지에있는 sql 쿼리문을 통하여 테이블 등록</p>
<p>3. insert into customer (C_ID,C_PASS,C_NAME,C_EMAIL,C_ADRESS,A_a) values('admin','admin','관리자','khs4637@naver.com','서울',1)</p>
<p> (위의 쿼리문을 통하여 Admin 계정 생성) </p>
<p> 4. mysql 커넥터는 최신버젼이 아닌 5.x 번때 를 사용 할것 </p>
<p>(만약 8.x때를 꼭사용해야 하는 이유가 있으면 root-context에 mysql 주소부분에 서비스타임을 일치시키는 옵션을 추가해야됨) </p>

<h2>진행 상황</h2>
<h3>07.05<h3>
 <p>1.메인 페이지에 3번쨰 섹터에서 Modal창을 통하여 서비스 신청</p>
<p>2.Admin 계정을 통해 서비스를 요청한 유저에게 서비스 IP 지정후 DB업로드</p>
<p>3.유저가 서비스를 신청안하고 콘솔 로그인시 alert 뜨면서 다시 메인으로 이동됨</p>
<p>(이때 서비스를 요청했지만 CCTVIP 배정이 안된사람은 서비스 진행이 안됬다고 알리고 서비스 신청도 안한사람이면 신청하라고 뜸)</p>
 <p>4.유저가 콘솔페이지에 접속하면 메인페이지 cctv영상 보여주는 부분에서 cctv목록 수만큼 버튼을 띄우고 ip주소값을 바꾸게 하여 cctv전환가능</p>
 <p style="font-size:10pt;">※버젼 기록은 3일간※</p>
  
  
