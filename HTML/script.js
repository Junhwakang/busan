let currentSlide = 0; // 현재 슬라이드 인덱스
let isTransitioning = false; // 슬라이드 전환 중인지 추적

// 슬라이더 이동 함수
function updateSlider() {
    const slider = document.querySelector('.slider');
    slider.style.transition = "transform 0.5s ease-in-out"; // 부드러운 전환 효과
    slider.style.transform = `translateX(-${currentSlide * 100}%)`;
}

// 이전 슬라이드
function prevSlide() {
    if (isTransitioning) return; // 슬라이드 전환 중에는 동작 금지
    isTransitioning = true;

    const totalSlides = document.querySelectorAll('.slide').length;
    currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
    updateSlider();

    setTimeout(() => {
        isTransitioning = false; // 전환 완료 후 다시 활성화
    }, 500); // 전환 지속 시간 (transition과 동일)
}

// 다음 슬라이드
function nextSlide() {
    if (isTransitioning) return; // 슬라이드 전환 중에는 동작 금지
    isTransitioning = true;

    const totalSlides = document.querySelectorAll('.slide').length;
    currentSlide = (currentSlide + 1) % totalSlides;
    updateSlider();

    setTimeout(() => {
        isTransitioning = false; // 전환 완료 후 다시 활성화
    }, 500); // 전환 지속 시간 (transition과 동일)
}

// 노선 페이지로 이동
function navigateToLine(lineNumber) {
    window.location.href = `line${lineNumber}.jsp`;
}

// 슬라이드 클릭 이벤트 등록
document.querySelectorAll('.slide').forEach((slide, index) => {
    slide.addEventListener('click', () => {
        // 슬라이드 클릭 시 페이지로 이동
        if (!isTransitioning) {
            navigateToLine(index + 1);
        }
    });
});

// 화살표 버튼 이벤트
document.querySelector('.left-arrow').addEventListener('click', (event) => {
    event.stopPropagation(); // 이벤트 버블링 방지
    prevSlide();
});

document.querySelector('.right-arrow').addEventListener('click', (event) => {
    event.stopPropagation(); // 이벤트 버블링 방지
    nextSlide();
});
