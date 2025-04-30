// app/javascript/controllers/helpers/debounce.js
export const debounce = (callback, delay = 200) => {
  let timeoutId

  return () => {
    clearTimeout(timeoutId)
    timeoutId = setTimeout(() => callback(), delay)
    return () => clearTimeout(timeoutId)
  }
}
