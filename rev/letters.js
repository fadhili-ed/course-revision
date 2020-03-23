const letter = (str) => {
    return str.split(" ").map(el => el[0].toUpperCase() + el.substring(1).toLowerCase()).join(" ")
}