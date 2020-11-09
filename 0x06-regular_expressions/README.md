<img src="https://user-images.githubusercontent.com/66263776/98416555-43fa9b80-204d-11eb-800a-df8e19b62655.jpg" width="700" height= "200"> 

# 0x06. Regular expression :book:

## :books: Libraries :books:
In this section tou can find some link that you can read that you can learn the topic ***Regular Expression***
* [Learn regular expresion](https://regexone.com/lesson/optional_characters)
* [Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/)
* [Rubular is your best friend](https://rubular.com/)
* [Regular expressions - advanced](https://www.slideshare.net/neha_jain/advanced-regular-expressions-80296518)
* [Regular expressions - basics](https://www.slideshare.net/neha_jain/introducing-regular-expressions)


## :memo: Description Activities :memo:
In this repositories we are going to find varieties of question about how you can use Regular expression or **Regex**. 
1) [Simply matching Holberton ](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x06-regular_expressions/0-simply_match_holberton.rb "exercise1")
You need to use a regular expression that you can do the the next function in your code
	```
	user@ubuntu$ ./0-simply_match_holberton.rb Holberton | cat -e
	Holberton$
	user@ubuntu$ ./0-simply_match_holberton.rb "Holberton School" | cat -e
	Holberton$
	user@ubuntu$ ./0-simply_match_holberton.rb "Holberton School Holberton" | cat -e
	HolbertonHolberton$
	user@ubuntu$ ./0-simply_match_holberton.rb "Grace Hopper" | cat -e
	$
	```
2) [Repetition Token #0](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x06-regular_expressions/1-repetition_token_0.rb "hola")
Use regular expression to do this funciton:
	```
	user@ubuntu$ ./1-repetition_token_0.rb hbn | cat -e
	$
	user@ubuntu$ ./1-repetition_token_0.rb hbn | cat -e
	```
3) [Repetition Token #1 ](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x06-regular_expressions/2-repetition_token_1.rb)
4) [Repetition Token #2](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x06-regular_expressions/3-repetition_token_2.rb) 
5) [Repetition Token #3](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x06-regular_expressions/4-repetition_token_3.rb)
6) [Not quite HBTN yet ](https://github.com/CBarreiro96/holberton-system_engineering-devops/blob/master/0x06-regular_expressions/5-beginning_and_end.rb)
Use the regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between beside, you need to create a Ruby script that accepts one argument and pass it to a regular expression matching method
	```
	user@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
	$
	user@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
	hbn$
	user@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
	$
	user@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
	h8n$
	sylvain@ubuntu$
	$

	```
7) [Call me maybe]()
	```
	user@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
	4155049898$
	user@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
	$
	user@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
	$
	user@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
	$
	user@ubuntu$
	```
8) [OMG WHY ARE YOU SHOUTING?]()
	```
	user@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
	ILOVESYSADMIN$
	user@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
	WHATSAY$
	user@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
	$
	user@ubuntu$
	```


# Author
:man_technologist: Camilo Barreiro / [CBarreiro96](https://github.com/CBarreiro96 "Github User")

