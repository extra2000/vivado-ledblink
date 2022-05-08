# Changelog

## [2.0.0](https://github.com/extra2000/vivado-ledblink/compare/v1.1.1...v2.0.0) (2022-05-08)


### ⚠ BREAKING CHANGES

* LED blink timing and duration has been redesigned
* **constr:** constraint file has changed into example file to allow user customization

### Styles

* **constr:** re-order pins and voltage ([7f0f5ce](https://github.com/extra2000/vivado-ledblink/commit/7f0f5ce8f8e9e9840f54d378049cc637e3010ba4))


### Documentations

* **README:** add instruction to create constr file ([160cef9](https://github.com/extra2000/vivado-ledblink/commit/160cef918fd32b2a5f81ca2401c84c0b8b1cb330))
* **README:** update description ([7d48a59](https://github.com/extra2000/vivado-ledblink/commit/7d48a59ac850187d72e4b674c9243582a1c4c218))


### Code Refactoring

* **constr:** change to example file to allow user customization ([8bb133f](https://github.com/extra2000/vivado-ledblink/commit/8bb133f5e32d2eca86b383ddaec07cb623223e6d))
* redesign to LED blink every 1s for 0.1s ([2434ab2](https://github.com/extra2000/vivado-ledblink/commit/2434ab28bee1d12a96881d1e04560fc776109053))

### [1.1.1](https://github.com/extra2000/vivado-ledblink/compare/v1.1.0...v1.1.1) (2022-04-26)


### Code Refactoring

* **vivado:** remove `Processor System Reset` IP ([d03a9b3](https://github.com/extra2000/vivado-ledblink/commit/d03a9b3ffa65d9deae249b7d3bceb3f4e7f22b86))


### Documentations

* **README:** label `./petalinux` as `container_file_t` ([82997b1](https://github.com/extra2000/vivado-ledblink/commit/82997b159bd62a731041c88e1e8d263cdd776da7))

## [1.1.0](https://github.com/extra2000/vivado-ledblink/compare/v1.0.0...v1.1.0) (2022-04-23)


### Features

* **vivado:** add Block Design and PetaLinux ([6dc8261](https://github.com/extra2000/vivado-ledblink/commit/6dc82611a62e8a367fac58b23ac2c0f438ca5897))


### Documentations

* **README:** add PetaLinux instructions ([430492b](https://github.com/extra2000/vivado-ledblink/commit/430492bbb914cff61195406abf68a8b13ac91e1d))

## 1.0.0 (2022-04-23)


### Features

* initial implementations ([1b22d14](https://github.com/extra2000/vivado-ledblink/commit/1b22d147853b4ecf7d6550b0b86c30540c454b79))


### Documentations

* **README:** update `README.md` ([2e68843](https://github.com/extra2000/vivado-ledblink/commit/2e68843ffcd70b3d7d10419113bc0ba52e5c6bec))


### Continuous Integrations

* add AppVeyor with `semantic-release` ([dd82f15](https://github.com/extra2000/vivado-ledblink/commit/dd82f15449cfcf567695cab5578f744c1b350ca7))
