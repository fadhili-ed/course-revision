const longest = (words) => {
    words.sort(function(firstEl, secondEl) {
        return secondEl.length - firstEl.length
    })
    return words[0]
}