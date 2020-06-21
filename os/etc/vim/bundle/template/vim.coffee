module.exports = =>


if not module.parent
  do =>
    await module.exports()
    process.exit()

# module.exports = {

# }
