const { Transformer } = require('@parcel/plugin')
const rougher = require('rougher')

exports.default = new Transformer({
  async transform({ asset }) {
    if (!asset.query.roughness) {
      return [asset]
    }

    const input = await asset.getCode()

    asset.setCode(rougher(input, { roughness: asset.query.roughness }))

    return [asset]
  },
})
