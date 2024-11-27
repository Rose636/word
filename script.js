document.addEventListener('DOMContentLoaded', function() {
    fetch('get_words.php')
        .then(response => response.json())
        .then(data => {
            const tableBody = document.querySelector('#wordTable tbody');
            data.forEach(word => {
                const row = document.createElement('tr');
                row.innerHTML = `
                    <td>${word.chinese}</td>
                    <td>${word.german_singular}</td>
                    <td>${word.german_plural}</td>
                `;
                tableBody.appendChild(row);
            });
        });
});

function checkWord() {
    const german = document.getElementById('german').value;
    const chinese = document.getElementById('chinese').value;
    
    fetch('check_word.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: `german=${encodeURIComponent(german)}&chinese=${encodeURIComponent(chinese)}`
    })
    .then(response => response.text())
    .then(result => {
        alert(result);
    });
}
