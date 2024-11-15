<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부산 관광 홈페이지</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body>
    <header class="header">
        <!-- 브랜드 로고 -->
        <div class="logo-title">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA2MDhfNDAg%2FMDAxNjg2MjEwNTc1Mzc1.YHX42_CunHBl9LgQVZx-Not3zWsB-KbFX0YI2frgVPUg.d9ATNJR3lr7qmN6-8slnn4tuK10NK9NIprKSzEi8KRog.PNG.sewang1472%2F%25BA%25CE%25BB%25EA%25BD%25C3_%25BD%25C9%25B9%25FA%25B8%25B6%25C5%25A9_png.png&type=sc960_832" alt="부산 관광 로고" class="logo">
            <h2>부산엔</h2>
        </div>

        <!-- 검색창 -->
        <div class="search-container">
            <form action="search.jsp" method="GET">
                <input type="text" name="query" class="search-input" placeholder="어디로 떠날 계획 인가요?">
                <button type="submit" class="search-button">검색</button>
            </form>
        </div>

        <!-- 메뉴바 및 회원가입/로그인 -->
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">홈</a></li>
                <li><a href="events.jsp">이벤트</a></li>
                <li><a href="accommodation.jsp">숙소</a></li>
                <li><a href="login.jsp">로그인</a></li>
                <li><a href="signup.jsp">회원가입</a></li>
            </ul>
        </nav>
    </header>

    <main class="main-content">
        <h2> 가고 싶은 여행지는 어디인가요 ? </h2>
        <div class="slider-container">
            <!-- 화살표 버튼 -->
            <button class="arrow-button left-arrow" onclick="prevSlide()">&#9664;</button>
            <button class="arrow-button right-arrow" onclick="nextSlide()">&#9654;</button>
            
            <!-- 슬라이더 -->
            <div class="slider">
                <div class="slide" data-line="1" onclick="navigateToLine(1)">
                    <img src="line1_map.png" alt="1호선 노선도">
                    <h3>1호선</h3>
                </div>
                <div class="slide" data-line="2" onclick="navigateToLine(2)">
                    <img src="line2_map.png" alt="2호선 노선도">
                    <h3>2호선</h3>
                </div>
                <div class="slide" data-line="3" onclick="navigateToLine(3)">
                    <img src="line3_map.png" alt="3호선 노선도">
                    <h3>3호선</h3>
                </div>
                <div class="slide" data-line="4" onclick="navigateToLine(4)">
                    <img src="line4_map.png" alt="4호선 노선도">
                    <h3>4호선</h3>
                </div>
                <div class="slide" data-line="5" onclick="navigateToLine(5)">
                    <img src="line5_map.png" alt="부산김해선 노선도">
                    <h3>5호선</h3>
                </div>
                <div class="slide" data-line="6" onclick="navigateToLine(6)">
                    <img src="line6_map.png" alt="동해선 노선도">
                    <h3>6호선</h3>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
