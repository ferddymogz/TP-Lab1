document.getElementById('medalForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const country = document.getElementById('country').value;
    const gold = parseInt(document.getElementById('gold').value);
    const silver = parseInt(document.getElementById('silver').value);
    const bronze = parseInt(document.getElementById('bronze').value);

    const tableBody = document.querySelector('#medalTable tbody');
    const newRow = document.createElement('tr');

    newRow.innerHTML = `
        <td>${country}</td>
        <td>${gold}</td>
        <td>${silver}</td>
        <td>${bronze}</td>
    `;

    tableBody.appendChild(newRow);

    // Limpiar el formulario
    document.getElementById('medalForm').reset();
});

