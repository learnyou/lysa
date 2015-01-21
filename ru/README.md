Copyright © 2014-2015 Peter Harpending. `<peter@harpending.org>`

Копирование и распространение этого файла, с или без изменения, разрешено в
любой среде без выплат правообладателю при сохранении ссылки на правообладателя и
этого сообщения. Этот файл предоставляется как есть, без каких-либо гарантий.

# Original book

<<<<<<< HEAD
This is a russian translation of project [Learn You Some Algebras for Glorious Good!](https://gitlab.com/lysa/lysa)
=======
This is a math book, licensed under the GNU FDL. It is written in English. There
is an unofficial [Russian translation](https://github.com/gazay/lysa)
>>>>>>> c35f3bc56d0c57f436fb62306ff5b858d0627543

# Изучай алгебру во имя добра!

Это книга по математике, лицензирована по GNU FDL.

# Сборка

Для сборки проекта из исходников необходим установленный TeX и несколько других пакетов.
Список может быть найден в соответствующей секции файла `contributing` в папке `docs/`.
Я уверен, что проект может быть собран на Windows, но я не знаю как
(большинство из нас на Linux).

```
git clone https://github.com/gazay/lysa.git
cd lysa/book
./build
```

Если вы не используете git, вы можете скачать [архив](https://github.com/gazay/lysa/archive/master.zip).

Скрипт для сборки безопасен, вы можете убедиться в этом
[сами](https://github.com/gazay/lysa/blob/master/book/build) если хотите.
Он собирает книгу и генерирует файл с названием `lysa.pdf` в папке `book/`.
Если ваш компьютер достаточно медленный, это может занять около 30 секунд
или около того, чтобы собрать книгу. На быстрых компьюторах сборка займет меньше секунды.
Мы не включаем PDF файл в гит, потому что он бинарный и вызовет конфликты
при попытке прослеживать изменения.

Если вам нравится общаться в IRC, приходите пообщаться с нами в `#lysa` на FreeNode.
Общение происходит на английском, но вы всегда можете написать мне (gazay) и,
если возникнет необходимость – мы создадим свой канал на русском языке.
Если вы не знаете, что такое IRC, или вы не знаете как настроить клиент – вы можете
зайти в чат через [вебчат FreeNode][webchat].

Если вы заметили ошибку, не стесняйтесь рассказать нам о ней в [issue tracker](https://github.com/gazay/lysa/issues).
Если у вас есть какие-либо идеи об улучшении LYSA, вы также можете писать о них в issue tracker
(или поговорить о них в IRC чате).

Если у вас возникли любые вопросы по LYSA (или математике), пожалуйста задавайте их в чате или
в issue tracker.

[webchat]: http://webchat.freenode.net/?channels=lysa


# Лицензия

LYSA лизцензирована по [GNU Free Documentation License][gfdl].
Лицензию вы можете найти в файле [LICENSE](https://github.com/gazay/lysa/LICENSE) в корне проекта.

[gfdl]: https://gnu.org/licenses/fdl.html
