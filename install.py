#coding:utf-8
import os
import shutil

def get_files(mypath):
  files = []
  for (dirpath, dirnames, filenames) in os.walk(mypath):
    for f in filenames:
      if f[0] == '.':
        files.append(f)
    break

  return files

def link_files(mypath, files):
  HOME = os.environ['HOME']
  oldDir = os.path.join(HOME, ".old_dotfiles")

  if not os.path.exists(oldDir):
    # Create oldDir directory
    os.mkdir(oldDir)

  elif not os.path.isdir(oldDir):
    # Abort, a non-directory
    print("Non-directory {} does already exists, please rename".format(oldDir))
    return

  for f in files:
    src = os.path.join(mypath, f)
    dst = os.path.join(HOME, f)

    if os.path.exists(dst) and os.path.isfile(dst):
      # Move file to oldDir
      shutil.move(dst, os.path.join(oldDir, f))

    if not os.path.exists(dst):
      cmd = "ln -s {} {}".format(src, dst)
      print(cmd)
      os.system(cmd)

if __name__ == "__main__":
  mypath = os.path.abspath("./")
  files = get_files(mypath)
  link_files(mypath, files)
