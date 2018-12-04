import os
import shutil


def recurAdd(path, moveFiles):
    files = os.listdir(path)
    for file in files:
        file = path + os.sep + file
        if os.path.isdir(file):
            recurAdd(file, moveFiles)
        else:
            if os.path.getsize(file) > 50*1024*1024:  # 50Mb
                moveFiles.append(file)


oldPath = os.getcwd()

while True:
    targetPath = input("请输入移动目的路径:")
    if not os.path.exists(targetPath):
        print("该路径不存在")
        continue
    break


moveFiles = []
recurAdd(oldPath, moveFiles)

for file in moveFiles:
    size=str(os.path.getsize(file)/1024/1024) + 'MB'
    shutil.move(file,targetPath)
    print(file, size, "已移动")

