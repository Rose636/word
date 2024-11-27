let currentWordIndex = 0;
let currentPhase = 0; // 0 - 检测原形, 1 - 检测复数

document.addEventListener('DOMContentLoaded', function() {
    fetch('get_words.php')
        .then(response => response.json())
        .then(data => {
            // 存储数据到全局变量
            window.wordsData = data;
            displayWords(data);
            displayNextWord();
        });
});

function displayWords(words) {
    const tableBody = document.querySelector('#wordTable tbody');
    words.forEach(word => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${word.chinese}</td>
            <td>${word.german_singular}</td>
            <td>${word.german_plural}</td>
        `;
        tableBody.appendChild(row);
    });
}

function displayNextWord() {
    const currentWord = window.wordsData[currentWordIndex];
    const currentWordElement = document.getElementById('currentWord');
    currentWordElement.textContent = `正在检测：${currentWord.chinese}`;
    document.getElementById('germanInput').value = '';
}

function checkWord() {
    const germanInput = document.getElementById('germanInput').value;
    const currentWord = window.wordsData[currentWordIndex];

    let correctAnswer = '';
    if (currentWord.german_plural && currentWord.german_plural !== '/') {
        // 名词两次检测
        if (currentPhase === 0) {
            correctAnswer = currentWord.german_singular;
            currentPhase = 1; // 下一次检测复数形式
        } else {
            correctAnswer = currentWord.german_plural;
            currentPhase = 0; // 复位检测阶段
            currentWordIndex++; // 检测下一个单词
        }
    } else {
        // 其他词性只检测一次
        correctAnswer = currentWord.german_singular;
        currentWordIndex++;
    }

    if (germanInput === correctAnswer) {
        alert('正确！');
    } else {
        alert(`错误！正确答案是：${correctAnswer}`);
    }

    if (currentWordIndex < window.wordsData.length) {
        displayNextWord();
    } else {
        document.getElementById('currentWord').textContent = '所有单词已检测完毕！';
    }
}
