<div align="center"><img src="https://user-images.githubusercontent.com/66263776/98416555-43fa9b80-204d-11eb-800a-df8e19b62655.jpg" width="700" height= "200"></div> 

# <img src="https://user-images.githubusercontent.com/66263776/98705433-b6b88f00-234b-11eb-97b7-cb193f7424f4.png" width="20" height= "30"> 0x00-Shell_basics <img src="https://user-images.githubusercontent.com/66263776/98705433-b6b88f00-234b-11eb-97b7-cb193f7424f4.png" width="20" height= "30">

## :scroll: Description :scroll:
It is important to know what is the different command that you can find in the Shell, in this way in this repository you are going to find some activity to practice this command

## :book: Source :book:
<details>
  <summary><b>Table command in the shell</b></summary>
  <br>
  <div align="center">
  <table>
    <tr>
      <th align="center"><center>Command</center></th>
      <th align="center"><center>Description</center></th>
      <th align="center"><center>Meaning</center></th>
      <th align="center" COLSPAN="2"><center>Aditional</center></th>
    </tr>
    <tr>
      <td align="center">cd</td>
      <td align="center"><b>C</b>hange <b>D</b>irectory</td>
      <td align="center">It is used to change the current working directory.</td>
      <td align="center" COLSPAN="2">--</td>
    </tr>
    <tr>
      <td align="center" ROWSPAN="2">ls</td>
      <td align="center"ROWSPAN="2"><b>L</b>ist</td>
      <td align="center"ROWSPAN="2">It is a Linux Shell comand that list directory content and directories.</td>
      <td align="center">-lS</td>
      <td align="center">Organice by size</td>
    </tr>
    <tr>
      <td align="center">-lSh</td>
      <td align="center">Organice by size and show the size in (kb,Mb etc)</td>
    </tr>
    <tr>
      <td align="center">pwd</td>
      <td align="center"><b>P</b>rint <b>W</b>orking <b>D</b>irectory </td>
      <td align="center">It prints the path of the working directory, starting from the root.</td>
    </tr>
    <tr>
      <td align="center">file</td>
      <td align="center">---</td>
      <td align="center">It is used to know the type of the a file</td>
    </tr>
    <tr>
      <td align="center">ln</td>
      <td align="center">make link between file</td>
      <td align="center">With this command you can make a symbol link</td>
    </tr>
  </table>
  </div>
</details>

<details>
  <summary><b>Other commands</b></summary>
  <div align="center">
  <table>
    <tr>
      <th><center>Command</center></th>
      <th><center>Description</center></th>
      <th><center>Examples</center></th>
    </tr>
    <tr>
      <td align="center">';'</td>
      <td align="center">Synchronous execution <br><b><i>Execute two command in the same time</i></b></td>
      <td align="center"><code>ls; mkdir holi; cal</code></td>
    </tr>
    <tr>
      <td align="center">'<code>&</code>'</td>
      <td align="center">Asynchronous execution<br><b><i>Execute the command one by one</i></b></td>
      <td align="center"><code>ls & date & cal</code></td>
    </tr>
    <tr>
      <td align="center">'<code>&&</code>'</td>
      <td align="center">Execute a command conditionally <br> <b><i>if the first command is execute then execute the second command</i></b></td>
      <td align="center"><code>mkdir test && cd test</code></td>
    </tr>
    <tr>
      <td align="center">'<code>||</code>'</td>
      <td align="center">Or operator <br> <b><i>Execute any of them, if the command is wrong continue with the next command</i></b></td>
      <td align="center"><code>mkdir test && cd test</code></td>
    </tr>
  </table>
</details>

**Links**
* <a href="http://linuxcommand.org/lc3_lts0010.php">What Is “The Shell”?</a>
* <a href="http://linuxcommand.org/lc3_lts0020.php">Navigation</a>
* <a href="http://linuxcommand.org/lc3_lts0030.php">Looking Around</a>
* <a href="http://linuxcommand.org/lc3_lts0040.php">A Guided Tour</a>
* <a href="http://linuxcommand.org/lc3_lts0050.php">Manipulating Files</a>
* <a href="http://linuxcommand.org/lc3_lts0060.php">Working With Commands</a>
* <a href="http://linuxcommand.org/lc3_man_pages/man1.html">Reading Man pages</a>
* <a href="https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/">Keyboard shortcuts for Bash</a>
* <a href="https://wiki.ubuntu.com/LTS">LTS</a>
* <a href="https://en.wikipedia.org/wiki/Shebang_%28Unix%29">Shebang</a>

### :ledger: Annexes :ledger:
If you like to continue learn you can go at the follow link:
* <a href="https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x01-shell_permissions/README.md">Shell permission</a>
* <a href="https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x02-shell_redirections/README.md">Shell redirection</a>

## :memo: Activities :memo:
### <a href="./0-current_working_directory">1. Current directory</a>



* **ln=** It is a standard UNix comand used to create a hard link or a symbolic link to an existing file.
  * **Symbol link=** It is a term for any file that conatain a reference to another file or directory.
  * **Path=** "'Directory'" is an enviromental variable in linux and other Unix-like operating systems that tells tje shell which drectories to search for executable file.