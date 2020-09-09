import os
template = '''\t\t{
                    "name": "NAME",
                    "path": "PATH",
                    "description": {
                        "zh-CN": "NAME"
                    }
                },
            '''
path = input("enter file folder: ")
filelist = os.listdir(path)
for file in filelist:
    if not os.path.isdir(file):
        temp = template
        name = os.path.splitext(file)[:-1][0]
        temp = temp.replace('NAME', name)
        temp = temp.replace('PATH', file)
        print(temp)
