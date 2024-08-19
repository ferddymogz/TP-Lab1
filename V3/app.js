document.getElementById('medalForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const formData = new FormData(this);

    fetch('process.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            loadMedals();
            this.reset();
        } else {
            alert('Hubo un error al registrar las medallas.');
        }
    })
    .catch(error => console.error('Error:', error));
});

function loadMedals() {
    fetch('fetch_medals.php')
    .then(response => response.json())
    .then(data => {
        const tableBody = document.querySelector('#medalTable tbody');
        tableBody.innerHTML = '';

        data.forEach(row => {
            const newRow = document.createElement('tr');
            newRow.innerHTML = `
                <td>${row.pais}</td>
                <td>${row.oro}</td>
                <td>${row.plata}</td>
                <td>${row.bronce}</td>
            `;
            tableBody.appendChild(newRow);
        });
    })
    .catch(error => console.error('Error:', error));
}

// Cargar las medallas cuando se carga la página
document.addEventListener('DOMContentLoaded', loadMedals);

