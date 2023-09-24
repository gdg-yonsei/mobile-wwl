# disneyplus_clone

## Requirements

1. **MediaQuery 사용**
    - MediaQuery 위젯을 쓰는 가장 대표적인 이유는 현재 기기의 **화면 크기**를 구할때 찾기 위함입니다. 모바일 앱을 구현할 때 가장 기본적이면서도 가장 중요한 것 중에 하나인데, 모든 디바이스 크기에 맞추어 개발을 진행할 수 없기 때문입니다. 기초적으로 반응형으로 구현하는 연습을 해봅시다.
    - 어떤 위젯들을 구현할 때 MediaQuery를 사용하여 구현해야 할지 고민해보고 적절히 사용해보세요.

1. **animated_splash_screen 패키지 사용**
    - 스플래시 스크린은 본래 두 가지 정도의 목적을 가지고 제작합니다. 앱이 구동될 때 **로딩**을 위한 1,2초 정도의 시간 동안 빈 화면을 보여주면 유저는 앱의 로딩이 느리다고 느끼기 때문에 불쾌한 사용자 경험을 줄이기 위해 처음 시작하게 되었습니다. 여기에, 최근에는 앱 로고를 통해 지속적으로 앱의 이미지를 심어주는 **앱 브랜딩**의 역할 역시 수행합니다.
    - 플러터에서 원래는 이미지 파일을 직접 설정해주어 Android와 IOS에 직접 네이티브로 스플래시 스크린을 적용할 수 있습니다.
    - 그렇지만, 우리의 목적은 패키지를 사용해보는데 익숙해지는 것이기도 하고 네이티브는 gif 지원을 안해주므로 이번에는 pub.dev에서 **animated_splash_screen** 패키지를 찾아 사용해 볼 겁니다.
    - 처음이니 사용 방법을 조금 설명해드리겠습니다.
        1. pub.dev에서 사용할 패키지와 버전 정보를 확인합니다.
        2. 프로젝트의 pubspec.yaml 파일 dependencies에 추가한 후 flutter pub get을 합니다.
        3. 패키지의 github README를 참고하며 import해 사용하시면 됩니다.
    - 아래 링크에서 스플래시 스크린에서 사용하실 디즈니 gif를 다운받으시면 됩니다.

   [LottieFiles: Download Free lightweight animations for website & apps.](https://lottiefiles.com/)


1. **bottom_navigation_bar 구현**
    - Scaffold bottomNavigationBar에 위젯을 넣어주면서 구현할 수 있습니다. Icon 위젯으로 내장된 아이콘을 사용하세요.
    - BottomAppBar, BottomNavigationBar 등 어떤 것을 사용하는 것이 적절할 지 고민해보고 사용해주시면 됩니다.
    - 선택된 페이지와 선택되지 않은 페이지는 색으로 구분되어야 합니다.
    - 바텀 네비게이션바의 배경색도 바꾸어주세요.

1. **carousel_slider 패키지 사용**

1. **ListView 사용**
    - 디즈니+ 최신작과 취향 저격 콘텐츠 추천 부분에 나오는 포스터들은 List로 imagePath를 저장한 후 list의 length에 따라 계속 증가할 수 있어야 합니다.
    - horizontal하게 scroll이 가능해야 하며 포스터 사이에 공간을 띄워주세요.