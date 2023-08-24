->**/УзУ/ - Уютнaя Зaвapyшкa нa Укpaинe**<-
->**Гайд для ру-анонов с проблемами с CloudFlare и капчей**<-

Для решения данной проблемы вам понадобится добавить дополнительный айпи в имеющийся список хостов:
>104.20.22.46 sys.4chan.org
На Windows Vista, 7, 8 и 10 это делается следующим образом:
>От имени администратора запускаем блокнот
>Открываем в нем файл со следующим расположением: `c:\Windows\System32\Drivers\etc\hosts`
>Добавляем вышеприведенный в список айпи без хешей
>Сохраняем
На Пингвине это делается следующим образом:
>Oткpывaeм тepминaл и ввoдим кoмaндy `sudo sh -c 'echo "104.20.22.46 sys.4chan.org" >>/etc/hosts'`
После всех манипуляций необходимо перезапустить машину.

->**General guide for catbox issues**<-

Chrome and Brave:
>Settings > System > "Use hardware acceleration when available" – OFF, then restart the browser.
Pale Moon:
>Tools > Preferences > Content > Video – disabled, everyhting worked
Opera:
>Settings>System "Use hardware acceleration when available" - OFF (didn't work, you're SOL, get new a browser)
You can put URL into VLC or download video and watch with any player.