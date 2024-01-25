# 박스히어로 UI 클론

+ Box Hero 홈 화면만 구현된 UI 클론 코딩 입니다.
+ 기능 부분은 구현되지 않았습니다.



> 간단한 실행 영상

https://github.com/baka9131/BoxHero-UI-Clone/assets/93738662/68e19225-834b-4ac8-be8a-38dee5f2f9fd



## 구현된 기능들

1. Splash Screen

2. 이메일 로그인 기능

   1. 이메일에 조건이 맞아야만 ***다음*** 버튼이 활성화

3. 회원가입 약관 동의 페이지

   1. 필수로 동의해야만 버튼이 체크되었을 경우만 ***가입하기*** 버튼이 활성되도록 구현
   2. 모두 동의 버튼을 눌렀을시에 클릭되지 않은 버튼이 체크가 되고 반대일 경우도 똑같이 동작
   3. 약관 동의 페이지에 대해 블로그 포스팅
      https://baka9131.tistory.com/15

4. 홈 화면

   1. BOX HERO 페이지와 비슷하게 UI를 구성하였습니다.

   2. 하단에는 BottomNavigation을 통하여 [ 홈 / 제품 / 입고/출고 설정] 페이지로 화면전환이 되도록 구현

   3. 스크롤이 지원되도록 하기 위하여 SingleChildScrollView를 사용

   4. 홈 화면에서 보여주는 Container부분은 똑같기 때문에 중복되는 코드를 줄이기 위하여 컴포넌트로 만듦

      1. ```dart
         // 기본적으로 렌더링 되는 Container의 틀을 만듦
         Widget renderContainer(Widget child, Color color) {
             return Container(
               decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     color: Colors.black.withOpacity(0.1),
                     spreadRadius: 0.1,
                     blurRadius: 10,
                     offset: const Offset(0, 3),
                   ),
                 ],
                 shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.circular(10.0),
                 color: color,
               ),
               width: double.infinity,
               height: null,
               child: Padding(
                 padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                 // Container안에 들어가야 할 내용을 자식으로 받기
                 child: child,
               ),
             );
           }
         ```

   5. 처음 보여주는 화면에서 PageView를 사용하여 좌우 화면 전환

      1. ![화면 기록 2024-01-25 오후 6 58 47](https://github.com/baka9131/BoxHero-UI-Clone/assets/93738662/34ba892b-4f85-4e4b-840e-fd5c76613376)
      2. 날짜는 DateTime.now()를 이용하여 현재 날짜를 가져와서 원하는 날짜로 포맷팅 함

   6. 제품 검색 페이지

      1. ![image](https://github.com/baka9131/BoxHero-UI-Clone/assets/93738662/6fa80839-4f35-4142-9686-4f0711406668)
      2. UI를 만드는 과정은 어렵지 않았지만 GestureDectector를 사용하는 과정에서 Hit 매커니즘에 대해서 새로운 사실을 알게 되었다.
         실제 클릭되는 부분은 실제 자기가 가지고 있는 최대 크기가 아니라 플러터에서 렌더링 될때 화면에 반영되는 부분만 클릭 범위인 것을 알게 되었다.
         위 부분은 블로그에 내용을 정리 하였다.
         https://baka9131.tistory.com/17
   
   7. 그외 나머지 부분</br>
      ![image](https://github.com/baka9131/BoxHero-UI-Clone/assets/93738662/785090ed-a006-47a2-bd7c-80760af069be)
      ![image](https://github.com/baka9131/BoxHero-UI-Clone/assets/93738662/7e2eaefa-ed28-4fcc-8442-18164a09b9ae)

