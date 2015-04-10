# Serverkit::Karabiner
[Serverkit](https://github.com/r7kamura/serverkit) plug-in for [Karabiner](https://pqrs.org/osx/karabiner/).

## Resources
### karabiner
Write a key-value pair with karabiner

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
