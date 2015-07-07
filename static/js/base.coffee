$analyze = document.getElementById('analyze')
showLoading = -> $analyze.innerHTML = 'analyzing...'
$analyze.addEventListener 'click', showLoading
