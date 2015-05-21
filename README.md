# serverkit-karabiner
[Serverkit](https://github.com/serverkit/serverkit) plug-in for [Karabiner](https://pqrs.org/osx/karabiner/).

- [Install](#install)
- [Resource](#resource)
  - [karabiner](#karabiner)
    - [Attributes](#attributes)
    - [Example](#example)

## Install
```rb
gem "serverkit-karabiner"
```

## Resource
### karabiner
Make sure the key-value pair is set on Karabiner.

#### Attributes
- key (required)
- value (requird)
- karabiner_executable_path (default: `"/Applications/Karabiner.app/Contents/Library/bin/karabiner"`)

#### Example
```yml
resources:
  - type: karabiner
    key: repeat.wait
    value: 100
```
