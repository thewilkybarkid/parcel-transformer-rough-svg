# parcel-transformer-rough-svg

A [Parcel] transformer to rough up SVGs using [Rough.js] (and [rougher]).

## Installation

Add the library as a dependency:

```shell
npm install --save-dev parcel-transformer-rough-svg
```

Add the library to your `.parcelrc` file:

```json
{
  "extends": "@parcel/config-default",
  "transformers": {
    "*.svg": ["...", "parcel-transformer-rough-svg"]
  }
}
```

## Usage

Add a [`roughness` query string parameter][roughness] to your SVG paths, for example:

```html
<img src="image.svg?roughness=0.75" />
```

[parcel]: https://parceljs.org/
[rough.js]: https://roughjs.com/
[rougher]: https://www.npmjs.com/package/rougher
[roughness]: https://github.com/rough-stuff/rough/wiki#roughness
