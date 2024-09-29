function getRecommendations() {
    const userId = document.getElementById("userId").value;

    // Wys³anie ¿¹dania do backendu (zak³adamy, ¿e backend udostêpnia API REST pod adresem /recommendations)
    fetch(`/recommendations?userId=${userId}`)
        .then(response => response.json())
        .then(data => {
            const movieList = document.getElementById("movieList");
            movieList.innerHTML = ''; // Wyczyœæ poprzednie rekomendacje

            data.forEach(movieTitle => {
                const listItem = document.createElement("li");
                listItem.textContent = movieTitle;
                movieList.appendChild(listItem);
            });
        })
        .catch(error => {
            console.error('B³¹d podczas pobierania rekomendacji:', error);
            alert('Wyst¹pi³ b³¹d. Spróbuj ponownie póŸniej.');
        });
}