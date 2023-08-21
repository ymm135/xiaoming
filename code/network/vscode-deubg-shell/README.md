- # vscode调试shell脚本

## 安装插件
- $(shellman) https://marketplace.visualstudio.com/items?itemName=Remisa.shellman
- $(BashDebug) https://marketplace.visualstudio.com/items?itemName=rogalmic.bash-debug

## 配置及调试

源码文件: [当前目录](./)

调试配置文件`launch.json`  
```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "bashdb",
            "request": "launch",
            "name": "Bash-Debug (simplest configuration)",
            "program": "${file}"
        }
    ]
}
```

调试脚本
```sh
#!/usr/bin/env bash

test_str="test string demo"

if [[ "${test_str}" == *"test"* ]]; then
    echo "${test_str} contains: test"
fi

test_arr=(a b c d)

for item in ${test_arr[@]}; do
    echo "${item}"
done
```