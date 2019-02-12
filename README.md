# dir2dirtree

*dir2dirtree* is a Bash script that automatically generates a [dir2dirtree](https://ctan.org/pkg/dirtree?lang=en) hierarchy listing out of any specified directory.

Also, *dir2dirtree* employs some simple file name character checking so special characters in file names (e.g. "&") will be sanitized for further usage in a LaTeX document.

## How to launch dir2dirtree


``./dir2dirtree.sh [optional: directory]``

If no directory is specified, *dir2dirtree* will traverse beginning at the current working directory.

An example output would look like this:

```
.0 dir2dirtree.
.1 dir2dirtree.sh.
.1 .git.
.2 branches.
.2 COMMIT\_EDITMSG.
.2 FETCH\_HEAD.
.2 hooks.
.2 index.
.2 info.
.2 logs.
.3 HEAD.
.3 refs.
.4 heads.
.5 master.
.4 remotes.
.5 origin.
.6 master.
.2 objects.
.3 03.
.4 88842bde4fc1ea2a7ca81d3b518fc71f478802.
.3 04.
.4 e193545375bca8e614044be254aa22250baf11.
.3 0a.
.4 2a4c50285cf1722b0a3c05182bbb6273bb68b2.
.3 11.
.4 53d0af231bd82ff142dc9ba3c1a942dbad4bc3.
.3 13.
.4 117aeec65ebaa44c0255634230da42042c336e.
.3 24.
.4 3b6ebd024f38b0754f61f070ee868be640ca24.
.3 2b.
.4 958710254016d0de72c2832f9668eee32e21f8.
.3 32.
.4 8cb59e6542a75757bb41cd9cf1c6b4b2e814bf.
.3 33.
.4 2b3f5dd767b17ebf528feb545f42c05f9589c6.
.3 4c.
.4 fcba25f6f4a923551cb77bb20e303a7e31035e.
.3 73.
.4 ba46d080616ed0c78f969850bb8201b08add0f.
.3 74.
.4 ddeea2249e554a49f9aeb49c63ea6144d03982.
.3 81.
.4 62808a96ee620d6b2f590ecfe39c42f2fa3deb.
.3 87.
.4 9863401d6aa6dbf7c9971115509f71b8541f42.
.3 93.
.4 570c835fc6858495a3231af24b46c377534602.
.3 a1.
.4 5a9687e6b85729b857168e1336d4ca99206f1f.
.3 b0.
.4 0ad47c0a8379e96505851e66348251a5a2635d.
.3 b8.
.4 d20c29f93cd332a500ebd1175a2020723eceba.
.3 ce.
.4 fedde9f1fca8a959a010b24deb60ffc7579ae2.
.3 d0.
.4 e454833405e1504830c5460e0f39dabfa0b949.
.3 dd.
.4 436bd0c710d69625e241599348dd5fdd66b93e.
.3 e6.
.4 9de29bb2d1d6434b8b29ae775ad8c2e48c5391.
.3 f0.
.4 6e774ff04872ec17437b7fccf8671621d1a28d.
.3 f6.
.4 2f7f976020399e01dce154fbbe9712e68d58c3.
.2 ORIG\_HEAD.
.2 refs.
.3 heads.
.4 master.
.3 remotes.
.4 origin.
.5 master.
.3 tags.
.1 .gitignore.
.1 .gitlab-ci.yml.
.1 Hüllö.
.1 LICENSE.
.1 lol.
.2 ok1.
.2 ok2.
.1 README.md.
.1 test.
.1 test.html.
.1 test.tex.
```