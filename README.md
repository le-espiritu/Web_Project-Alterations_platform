# 웹 프로젝트 - 수선집 정보 플랫폼 웹
멀티캠퍼스 '빅데이터를 활용한 iot 시스템 개발' 교육 과정 이수시 진행한 첫번째 프로젝트입니다.
<br/>
<br/>

+ ### 프로젝트 주제
  + 특정 지역에 위치한 수선집의 정보를 얻을 수 있고, 별점 리뷰를 통해 수선집간 실력을 비교해 볼 수 있는 플랫폼 웹 프로젝트

+ ### 주제 선정 배경
  + 평소 수선을 받아야 할때 어떤 수선집이 실력이 좋고 가격대가 합리적인지, 또 집 주변에 수선집은 몇군데나 있는지 정보를 얻기가 너무 힘들었던 경험을 토대로 본 주제를 선정하게 됨
  
<br/><br/>
## 프로젝트 구현 
+ ### 메인페이지
  ![20211105_180624](https://user-images.githubusercontent.com/88477839/148028566-1b1d4654-fdb5-44ba-85b3-22d29442a3c6.png)
  ![20211105_180659](https://user-images.githubusercontent.com/88477839/148029159-b06a931a-1bbe-4ed5-8ca7-40da8526a314.png)
  ![20211105_180741](https://user-images.githubusercontent.com/88477839/148029225-9f9fe59f-9ed8-47ea-9d32-fcfe3c1e7d9d.png)
  + 웹사이트에 대한 설명이 담긴 페이지<br/><br/>
+ ### 지도 및 수선집 검색 페이지
  ![20211105_180915](https://user-images.githubusercontent.com/88477839/148032575-744a668c-edf8-4dbf-99f5-88b4370bbd46.png)<br/><br/>
  + 카카오 api를 활용, 사용자가 현재 접속한 위치를 기반으로 지도가 작동하도록 구현함
  + 따라서 현재 위치 주변에 있는 수선집 위치 및 정보를 손쉽게 찾을 수 있음
  + 다른 지역 수선집 리스트를 보고자 할 때는 해당 지역명 검색을 통해 리스트를 얻을 수 있도록 구현함<br/><br/>
  ![20211105_180947](https://user-images.githubusercontent.com/88477839/148032668-1380aee1-1a7b-4809-99fe-31fb6c3a0623.png)
  + 검색한 지역명에 따라 수선집리스트가 조회됨<br/><br/>
+ ### 수선집 상세 페이지
  ![20211105_182159](https://user-images.githubusercontent.com/88477839/148048793-435ba929-7a6b-43a7-9230-0ca4b5de8d6d.png)
  + 조회된 목록에서 원하는 수선집을 클릭하면 상세보기를 할 수 있음.<br/><br/>
  ![20211105_182325](https://user-images.githubusercontent.com/88477839/148048905-630e479e-fc5c-4e36-ab11-9aaaf6a58945.png)
  + 별점과 댓글을 통해 후기를 남길 수 있으며, 어떤 품목을 수선 받았는지 카테고리를 선택하여 확인할 수 있음<br/><br/>
  ![20211105_182400](https://user-images.githubusercontent.com/88477839/148048924-8bd6f871-e61a-4497-b753-91340037e19d.png)
  + 사용자가남긴별점에따라해당스토어의평균별점이변하는것을확인할수있음<br/><br/>
+ ### 지역별 품목별 TOP5 확인 페이지
  ![20211105_182531](https://user-images.githubusercontent.com/88477839/148049599-a68934eb-363b-47cd-9fb1-0039d90aa702.png)
  + 지역별로 조회된 수선집 목록 페이지에서 해당 지역의 상위 랭킹에 해당하는 수선집들을 확인할 수 있음
  + 각 품목별로 어떤 수선집이 상위에 랭크되었는지 확인할 수 있음.<br/><br/>
  ![20211105_182556](https://user-images.githubusercontent.com/88477839/148049616-8d65b517-b3a2-4c66-b041-69c4bd01efc1.png)
  + ex) 강남구 삼성동의 바지 수선을 잘하는 TOP5 확인<br/><br/>
  ![20211105_182735](https://user-images.githubusercontent.com/88477839/148049624-3c1b7626-8577-448b-a101-a595f95f198e.png)
  + ex) 강남구 삼성동의 원피스 수선을 잘하는 TOP5 확인
  + 만약 후기 및 별점이 부족하여 해당 지역에서 별점을 받은 수선집이 5곳이 되지 않는다면, 그 미만으로 조회가 되도록 구현함.<br/><br/>
  ![20211105_182758](https://user-images.githubusercontent.com/88477839/148049633-566fc9a6-582a-45e7-bbac-61fa9750e3fd.png)
  + 만약 해당지역, 해당 품목에서 별점을 받은 수선집이 한군데도 없다면, '조회된 목록이 없습니다.’가 뜨도록 구현함.<br/><br/>
+ ### 전국 TOP5 확인 페이지
  ![20211105_182856](https://user-images.githubusercontent.com/88477839/148051287-f4c78dac-20ed-42d0-b549-ffd19b925c3f.png)
  + 지도 페이지 하단부에 지역별 TOP5뿐만아니라 전국 TOP5가 확인되도록 기능을 구현함<br/><br/>
  ![20211105_182919](https://user-images.githubusercontent.com/88477839/148051330-9912e65d-0b6f-4a40-afed-b4b4fde4d331.png)
  + ex) 전국에서 바지 수선을 제일 잘하는 TOP5 확인<br/><br/>
  ![20211105_183042](https://user-images.githubusercontent.com/88477839/148051338-74f76735-39f0-4b32-9600-450f3f969894.png)
  + 만약 전국 TOP5가 아니라 특정 지역 TOP5를 알고 싶으면 지역명 검색을 통해 확인할 수 있음<br/><br/>
  ![20211105_183115](https://user-images.githubusercontent.com/88477839/148051344-2e87e770-2568-4150-8494-e13d9665dd3a.png)
  + ex) 전국 TOP5에서 동안구 관양동 바지수선 TOP5페이지로 넘어온 것을 확인할 수 있음<br/><br/>
  ---
  
## 프로젝트 개발 환경
언어   |개발환경|웹|API|데이터베이스
------|------|---|-------|----------
Java|STS, Spring MVC|Html5,CSS,JS|카카오 지도 API|Oracle, mybatis
