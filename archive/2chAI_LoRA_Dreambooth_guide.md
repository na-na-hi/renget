# Гайд по LoRA
-> by anons <-
-> последнее обновление: 22.01.2023 <-
-> [**English version**](https://rentry.org/2chAI_LoRA_Dreambooth_guide_english) <-
***
[TOC2]
!!! note
	Присоединяйтесь к [обсуждениям](https://github.com/anon-1337/LoRA-scripts/discussions) на GitHub если вам есть что добавить.
***
!!! warning Нативная поддержка в WebUI
	22.01.2023 в 16:15 AUTOMATIC1111 добавил [нативную поддержку LoRA нетворков](https://github.com/AUTOMATIC1111/stable-diffusion-webui/commit/855b9e3d1c5a1bd8c2d815d38a38bc7c410be5a8) в WebUI.
	Но kohya-ss (автор скрипта, используемого в гайде) говорит, что сети, натренированные с помощью скрипта версии 0.4.0 (22.01.2023 16:03), а также обученные на основе SD 2.x чекпоинтов **пока в WebUI не работают**, и советует тренировать на версии скрипта 0.3.2, либо использовать его расширение [sd-additional-networks.](https://github.com/kohya-ss/sd-webui-additional-networks)
!!! danger Критический баг (kohya-ss/sd-scripts)
	[21.01.2023 была поднята тема по поводу бага, вызывающего антипереполнение весов слоёв при обучении (значения весов, близкие к нулю округлялись до нуля).](https://github.com/kohya-ss/sd-webui-additional-networks/issues/49)
	На момент обновления гайда баг пофикшен: был добавлен новый аргумент ```--network_alpha``` для предотвращения данного поведения.
	**С новой переменной скорее всего нужен другой ```learning_rate```** (автор скрипта как временное решение предлагает значение ```1e-3``` для ```network_dim = 128; network_alpha = 1```). Ждём обновлений.
	Плохие новости – скорее всего ваши сети, натренированные до этого фикса "поломанные". Но если вас устраивает результат, делать ничего необязательно.
	[Скрипт](https://raw.githubusercontent.com/anon-1337/LoRA-scripts/main/%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9/train_network.ps1) обновлен.
	Если у вас не работает обученная LoRA (выдаёт ошибку NaN или нет изменений на изображении) – обновитесь до версии sd-scripts не ниже 0.4.0 и перетренируйте.
	Также вы можете проверить свои старые сети: по пути *sd-scripts\networks\\* находится скрипт *check_lora_weights.py*. Пример использования:
	```.\venv\Scripts\activate```
	```python .\networks\check_lora_weights.py "X:\LoRA\LoRA_network.safetensors"```
	**Внимание!** Если вы использовали ```Clip Skip = 2``` при обучении, значения ```lora_te_text_model_encoder_layers_11_*``` будут 0.0, это нормально. Эти слои при данном значении Clip Skip не обучаются.
***
## Что это

[LoRA (Low-rank Adaptation for Fast Text-to-Image Diffusion Fine-tuning)](https://github.com/cloneofsimo/lora), согласно официальному репозиторию — метод файн-тьюнинга Stable Diffusion чекпоинтов, который имеет следующие особенности:

- вдвое быстрее чем метод DreamBooth;
- маленький размер выходного файла;
- результаты иногда лучше, чем у традиционного файн-тьюнинга.

Требования для обучения: видеокарта Nvidia, не меньше 6Гб видеопамяти.
***
## Использование

На данный момент есть три способа использования сети LoRA:
1. Использовать нативную поддержку A1111-WebUI
2. Использовать расширение sd-additional-networks
3. Замерджить вместе с SD чекпоинтом

#### Cпособ 1 – использование в промте WebUI
!!! danger Внимание!
	По состоянию на 22.01.2023 19:49 по МСК сети, натренированные на версии sd-scripts 0.4.0, а также SD 2.x сети этим способом работать не будут.
	Используйте способ 2.
	
1. Нажать **Show extra networks** и выбрать вкладку **Lora**, выбрать интересующую сеть | 2. LoRA появится в промте (отредактируйте значение после ```:``` для изменения веса)
------ | ------
![](https://i.imgur.com/Jl6oUJg.png) | ![](https://i.imgur.com/ohIJxWu.png)

#### Cпособ 2 – расширение sd-additional-networks
!!! note По состоянию на 22.01.2023 19:49 по МСК это рекомендованный способ использования LoRA.
Установить [расширение от kohya-ss](https://github.com/kohya-ss/sd-webui-additional-networks) для A1111-WebUI.
По умолчанию файлы сетей хранятся в папке *stable-diffusion-webui\models\lora\\*
Пользоваться просто:
1. Открыть новую панель | 2. Включить, выбрать модель, настроить веса по вкусу
------ | ------
![](https://i.imgur.com/GvJhlWg.png) | ![](https://i.imgur.com/Ur9iFWk.png)

#### Cпособ 3 – патч модели
Установить [расширение от d8ahazard](https://github.com/d8ahazard/sd_dreambooth_extension) для A1111-WebUI.
!!! error CKPT vs SAFETENSORS
    Файлы safetensors (пока) не поддерживаются! Из хороших новостей: обычно ckpt можно скачать там же, где качали safetensors.
Для начала удостоверьтесь, что исходный файл сети *<model_name>.ckpt* лежит по пути *stable-diffusion-webui\models\Stable-diffusion\\*, а файл LoRA *<lora_name>.pt* в *stable-diffusion-webui\models\lora\\*, затем:

1. Открыть новую вкладку | 2. Открыть вкладку Settings, нажать чекбокс Use LORA
------ | ------
![](https://i.imgur.com/LZzQvw1.png) | ![](https://i.imgur.com/OVPcD71.png)

3. Перейти на вкладку Create, выбрать исходную модель "Source Checkpoint", выбрать слева "Lora Model" и нажать наверху "Generate Ckpt" |
------ |
![](https://c2n.me/4hzbzyn.jpg) |

***

## Подготовка датасета

#### Общие советы

!!! info Совет №1
	Если тренируете на основе аниме моделей (NAI, AnythingV3), описание делать строго в стиле Danbooru/Gelbooru тэгов. Например, *1girl, short hair, green eyes, black hair, school uniform...*
	Если тренируете на основе SD 1.x/2.x, в описаниях пишите что вы видите на изображении. Например, если изображение – рисунок бородатого рыбака за работой, пишите *pencil art of a man fishing, beard*; если это фото вашего улыбающегося друга в очках и красной рубашке на фоне заката, пишите *photo of friend_name, smiling, wearing glasses, red shirt, sunset in the background*)
!!! info Совет №2
	Если тренируете персонажа/человека, желательно чтобы датасет состоял только из изображений, где он присутствует. И чтобы во всех описаниях было ключевое слово, описывающее этого персонажа/человека. Например, 1.txt: *photo of AndrewFriend, jacket, jeans*; 2.txt: *photo of AndrewFriend, shorts, t-shirt*. Вызывать вы данного человека в промте будете соответственно через тег *AndrewFriend*. Тоже самое работает и для аниме моделей – в этом случае это будет имя персонажа. Например, *1girl, shiina mayuri, short hair, green eyes* и т.д. Вызов через *shiina mayuri* соответственно.
	Если тренируете авторский стиль, как и в предыдущем абзаце желательно чтобы датасет состоял только из изображений, нарисованных данным автором. Пример описания: *ArtistName, mountains, night, moon, snowy peaks, stars* и т.д. Вызов стиля художника через *ArtistName*.
!!! info Совет №3
    Все ошметки чужих конечностей, непонятные объекты на картинке, подписи художников, ссылки – все, что вы **не** хотите видеть в генерациях, лучше обрезать или замазать в фотошопе.
!!! info Совет №4
    Для ускорения ручного тегирования можно использовать [мокропиську](https://github.com/arenatemp/sd-tagging-helper/).
	Еще есть [отдельная софтина](https://github.com/starik222/BooruDatasetTagManager) и расширения ([1](https://github.com/toshiaki1729/stable-diffusion-webui-dataset-tag-editor), [2](https://github.com/toriato/stable-diffusion-webui-wd14-tagger), [3](https://github.com/SesuMoe/sd-tagger-webui)) для A1111-webui.
	Для скачивания изображений с различных booru-досок вместе с тегами можно использовать [Grabber](https://github.com/Bionus/imgbrd-grabber/releases) с [такими настройками](https://i.imgur.com/VH5HOcQ.png) (скопируйте и вставьте: ```%all:unsafe,separator=^,^ %```).
	
***

#### Для скрипта

Датасету необходима определённая структура папок:

-> ![Пример структуры папок](https://i.imgur.com/hJsmBzK.png) <-
-> Пример структуры папок <-

Где **n** – количество *повторений* данного концепта; **conceptA**, **conceptB** – имена концептов. Имя концепта может быть любое, оно нигде не используется (кроме особого случая, см. *Важные замечания*), это скорее заметка для вас, что в этой папке находится. Между количеством повторений и именем концепта обязательно наличие нижнего подчеркивания. Внутри каждой папки концепта должны присутствовать изображения вместе с файлами описания в формате \*.txt, их имена должны совпадать. Внутри текстовых файлов должно быть, собственно, описание. Папок концептов может быть сколько угодно, но хотя бы одна должна присутствовать. **Обрезать изображения необязательно**.
[Пример хорошего датасета](https://mega.nz/folder/lMQyDTTB#0XM9piheaxg-a9TI7vuDJQ/folder/8cw2nKbT)
!!! warning Важные замечания
	Если у файла *image.png* не будет соответствующего *image.txt*, скрипт [выдаст ему описание в виде имени концепта](https://github.com/kohya-ss/sd-scripts/blob/main/library/train_util.py#L513). Например, если папка концепта называется *6_photo*, будет считаться, что у файла *image.png* описание *photo*.
	Поддерживаемые форматы изображений: *\*.png, \*.jpg, \*.jpeg, \*.webp, \*.bmp*. 

**Повторения** нужны чтобы придать больше *веса* той или иной папке. Например, у вас есть папка *2_HighRes* с 20 изображениями внутри и папка *1_LowRes* с 10 изображениями внутри. Суммарно это даст 50 (2 \* 20 + 1 \* 10) изображений, и нейронная сеть будет обучаться 80% (2 \* 20 / 50) времени на первой папке и 20% (1 \* 10 / 50) времени на второй, тем самым уменьшая влияние папки с низкокачественными изображениями.

Папка *regularization_images* может быть пустой, наличие регуляризационных изображений необязательно.
В теории, [**регуляризационные изображения**](https://github.com/d8ahazard/sd_dreambooth_extension/wiki/Basics#dreambooth) помогают улучшить точность тренировки.
Регуляризационные изображения позволяют "отделить" тренируемый объект (**концепт**) от стилистики изображения. Во время тренировки сеть будет "параллельно" (на самом деле последовательно, по-хорошему в присутствии регуляризационных изображений количество шагов обучения должно быть увеличено вдвое) обучаться тому, как **концепт** не должен выглядеть. Переносимость между различными по рисовке моделями такой сети LoRA должна быть лучше (в теории).
Если вы не знаете, нужны ли вам регуляризационные изображения или нет, **я советую не использовать их**, кроме случаев, когда вы знаете что делаете.

!!! info Как с ними работать
	Например, если вы тренируете лицо человека (мужчины) и в каждом файле описания есть слова *photo of a PersonName*, хорошей идеей будет открыть WebUI и нагенерировать изображений по запросу *photo of a man*. Сколько? Не меньше чем количество изображений лица мужчины из примера. Больше – лучше.
	Запаситесь папками с двухстами изображениями *1boy, 1girl, photo of a man, photo of a woman* и будет вам счастье.

***
#### Для sd_dreambooth_extension

!!! warning В интерфейсе поддерживается до 3 концептов включительно
    Если вы хотите тренировать больше концептов, придется возиться с JSON.  [Пример JSON](https://pastebin.com/kq02jzHD) больше, чем на 3 концепта. Обратите внимание на **отстуствие** запятой после последнего концепта.

У датасета для sd_dreambooth_extension нет особых требований к структуре папок.
Правило одно - на каждый концепт (объект, персонажа, стиль, тег) которому вы учите модель - отдельная папка.
В папке может быть любое количество изображений в формате PNG (не обязательно, но почему-то строго рекомендуется).
Изображения **должны** быть квадратными, без прозрачности, разрешение - 512х512.
К каждому изображению должен прилагаться текстовый файл с описанием (тегами).
Наличие нижних подчеркиваний в тегах значения не имеет, но поскольку они жрут токены, рекомендую от всех нижних подчеркиваний отказаться.
-> ![Пример содержимого папки концепта](https://c2n.me/4hz6XA5.jpg) <-
-> Пример содержимого папки концепта <-

***

## Тренировка

#### С помощью скрипта

1. Клонировать репозиторий [sd-scripts от kohya-ss](https://github.com/kohya-ss/sd-scripts) или скачать его
2. Скачать [скрипт (ПКМ \-> "Сохранить как...")](https://raw.githubusercontent.com/anon-1337/LoRA-scripts/main/%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9/train_network.ps1) (иногда обновляется)
	(либо можете попробовать [тестовый GUI](https://github.com/anon-1337/LoRA-train-GUI/releases))
!!! info PowerShell
	Данный скрипт предназначен для PowerShell, но это не значит что он доступен только пользователям последних версий Windows. Не все знают, но [PowerShell доступен для всех версий Windows начиная с XP, на Linux, а также на macOS](https://github.com/PowerShell/PowerShell/releases).
3. Открыть PowerShell и поочерёдно выполнить следующие команды:
```powershell
Set-Location <путь к папке sd-scripts> # Переходим в каталог репозитория

python -m venv venv # Создаём виртуальное окружение
.\venv\Scripts\activate # Активируем его

# Устанавливаем torch и torchvision, xformers, а также необходимые зависимости
pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116
pip install --upgrade -r requirements.txt
pip install -U -I --no-deps https://github.com/C43H66N12O12S2/stable-diffusion-webui/releases/download/f/xformers-0.0.14.dev0-cp310-cp310-win_amd64.whl

# Копируем скомпилированные под Windows CUDA библиотеки. На Linux этот шаг не обязателен
cp .\bitsandbytes_windows\*.dll .\venv\Lib\site-packages\bitsandbytes\
cp .\bitsandbytes_windows\cextension.py .\venv\Lib\site-packages\bitsandbytes\cextension.py
cp .\bitsandbytes_windows\main.py .\venv\Lib\site-packages\bitsandbytes\cuda_setup\main.py

accelerate config
```
4. После последней команды терминал начнёт задавать вопросы, выбрать следующее:
In which compute environment are you running? 
– **This machine**
Which type of machine are you using?
– **No distributed training**
Do you want to run your training on CPU only (even if a GPU is available)?
– **NO**
Do you wish to optimize your script with torch dynamo?
– **NO**
Do you want to use DeepSpeed?
– **NO**
What GPU(s) (by id) should be used for training on this machine as a comma-seperated list?
–  **0** или **all**
Do you wish to use FP16 or BF16 (mixed precision)?
– **fp16** или **bf16**
!!! info BF16 > FP16
    Если железо поддерживает BF16, лучше выбрать его.
!!! info Если PowerShell сыпет ошибками при нажатии на стрелочки
	Выключить NumLock на клавиатуре, выбирать варианты при помощи кнопок 8 и 2 на нампаде. [Если нампада нет](https://i.imgur.com/ARViwie.png).

5. Редактирование скрипта
Открыть скрипт любым текстовым редактором и изменить переменные вверху файла под свои нужды. Все переменные достаточно понятно прокоментированы, поэтому пройдёмся по не самым очевидным из них:

```powershell
$train_batch_size = 1
$num_epochs = 10
$max_token_length = 75
$clip_skip = 1
```

**$train_batch_size**: при увеличении данного значения, вероятно также требуется [увеличение *$learning_rate*](https://github.com/cloneofsimo/lora/discussions/53#discussioncomment-4437440).
**$num_epochs**: с помощью этой переменной расчитывается количество шагов обучения. Чем больше эпох, тем дольше обучается сеть. Что касаемо результата на больших и малых значениях, см. описание переменной *$learning_rate*. Универсального ответа нет.
**$max_token_length**: откройте свой самый большой файл описания, скопируйте его содержимое и поместите в промт WebUI. Справа на счетчике отобразится длина токена. Если меньше 75, ставим 75. Если больше 75 – ставьте 150. Если больше 150 – ставьте 225. Значения больше 225 скрипт не поддерживает.
**$clip_skip**: 1 для SD-основанных чекпоинтов, 2 для NAI-основанных.

```powershell
$learning_rate = 1e-4
$unet_lr = $learning_rate
$text_encoder_lr = $learning_rate
$scheduler = "cosine_with_restarts"
$save_precision = "fp16"
$mixed_precision = "fp16"
$network_dim = 128
```

**$learning_rate**: значение 1e-4 рекомендовано для чекпоинтов, основанных на SD 1.x. Для 2.x – непонятно, кто-то говорит что [получил ужасные результаты с такими настройками](https://github.com/d8ahazard/sd_dreambooth_extension/issues/486#issuecomment-1345884109). Но у меня получались достойные лица и на рекомендованных настройках.
В чем отличие высокой и низкой скорости? 
- низкая скорость и малое количество шагов приводят к недонасыщению сети. У сети будут проблемы с воспроизведением концепта.
- большая скорость и количество приводят к перенасыщению сети. У вас не получится сгенерировать ничего кроме концепта, независимо от промта, который вы используете.

Существует [сайт](https://losslandscape.com/explorer) с наглядной демонстрацией.
Далее идут таблицы со сравнением различных *learning_rate*. Все сети были натренированы на одном и том же [датасете](https://drive.google.com/drive/folders/1JjIV61fMUyJKYOxZpYokx7cd81awtBWc) ([pixiv автора рисунков](https://www.pixiv.net/en/users/32808113)), все изображения были сгенерированы на одном сиде с разными промтами. Обратите внимание на то, как сети при различных настройках обучились следующим тегам: *harusameriburo* (стиль художника), *jacket*, *cloudy sky*, *shoes*, *ligne claire*, *backpack*, *blush stickers*.
![](https://files.catbox.moe/dh3c0w.png)
-> learning_rate = **X**, unet_lr = learning_rate, text_encoder_lr = learning_rate, scheduler = linear <-

**$unet_lr**: скорость обучения U-Net. U-Net отвечает за преобразование шума в изображение. [Поле для экспериментов](https://github.com/cloneofsimo/lora/discussions/69).
![](https://files.catbox.moe/wmue60.png)
-> learning_rate = 1e-4, unet_lr = **X**, text_encoder_lr = learning_rate, scheduler = linear <-

**$text_encoder_lr**: скорость обучения текстового энкодера CLIP. Благодаря текстовому энкодеру изображение соответствует текстовому описанию. Есть мнение, что стоит уменьшать скорость обучения текстового энкодера в два раза относительно *learning_rate* (т.е. до значения 5e-5) для улучшения конечного результата. Также есть информация, что обучение текстового энкодера [благоприятно влияет на лица](https://huggingface.co/blog/dreambooth#fine-tuning-the-text-encoder). Поле для экспериментов.
![](https://files.catbox.moe/py6lq3.png)
-> learning_rate = 1e-4, unet_lr = learning_rate, text_encoder_lr = **X**, scheduler = linear <-

**$scheduler** — планировщик кривой *learning_rate*:

- [constant](https://www.kaggle.com/code/rhtsingh/guide-to-huggingface-schedulers-differential-lrs#Constant-Schedule): скорость обучения не изменяется во времени с начала и до конца обучения. Единственный планировщик, который не использует переменную *lr_warmup_ratio*. ==Планировщик по умолчанию==.

Все остальные планировщики используют переменную *lr_warmup_ratio* и имеют следующие формулировки:
После периода разогрева, длящегося *lr_warmup_ratio%* шагов, в течение которого скорость обучения линейно увеличивается между 0 и *learning_rate*:
- [linear](https://www.kaggle.com/code/rhtsingh/guide-to-huggingface-schedulers-differential-lrs#Linear-Schedule-with-Warmup): скорость обучения линейно уменьшается от значения *learning_rate* до 0.
- [cosine](https://www.kaggle.com/code/rhtsingh/guide-to-huggingface-schedulers-differential-lrs#Cosine-with-Warmup): скорость обучения уменьшается вслед за значением косинусной функции между *learning_rate* и 0.
- [cosine_with_restarts](https://www.kaggle.com/code/rhtsingh/guide-to-huggingface-schedulers-differential-lrs#Cosine-With-Hard-Restarts): скорость обучения уменьшается вслед за значением косинусной функции между *learning_rate* и 0, с несколькими жёсткими перезапусками.
- [polynomial](https://www.kaggle.com/code/rhtsingh/guide-to-huggingface-schedulers-differential-lrs#Polynomial-Decay-with-Warmup): скорость обучения уменьшается как полиномиальный распад со значения *learning_rate* до значения 1e-7.
	- [constant_with_warmup](https://www.kaggle.com/code/rhtsingh/guide-to-huggingface-schedulers-differential-lrs#Constant-Schedule-with-Warmup): ведёт себя как **constant**.
![](https://files.catbox.moe/pp1zdz.png)
-> learning_rate = 1e-4, unet_lr = learning_rate, text_encoder_lr = learning_rate, scheduler = **X** <-

**$lr_warmup_ratio**: процент шагов начиная с первого, в течении которых скорость обучения линейно увеличивается от 0 до значения *learning_rate*. Малые значения или 0 позволяют захватить большое количество информации в начале тренировки и перейти к более тонкой "достройке" к концу. Значения больше могут помочь с проблемой, когда [сеть очень быстро перенасыщается в начале обучения](https://stackoverflow.com/a/55942518). Здесь нужно эксперементировать, датасет играет очень важную роль.
Данный параметр не актуален для *constant* планировщика.

**$network_dim**: значения могут быть разные (видел кто-то тренировал на 1024), но было установлено, что выше 128/256 особого смысла лезть нет. Чем больше значение, тем больше расход видеопамяти.

**$save_precision, $mixed_precision**: как было сказано ранее, bf16 > fp16, поэтому если позволяет железо – ставьте.

**$keep_tokens**: если включена опция перемешивания текстовых описаний, данная переменная позволяет защитить первые *keep_tokens* токенов от перемешивания.

!!! note Совет
	Откройте [список всех уникальных однотокеновых слов до 4 символов](https://github.com/2kpr/dreambooth-tokens/blob/main/all_single_tokens_to_4_characters.txt), выберите любой из них (для персонажа *Tomoe Koga* я нашел удачный токен *tk*, например), удалите из всех описаний полное имя персонажа, вставьте во все описания самым первом тегом токен, который вы выбрали. Установите *shuffle_captions = 1*, *keep_tokens = 1*. Вы великолепны.

6. Запуск скрипта
!!! note Если не открывается по двойному щелчку
	В папке со скриптом ПКМ в свободном месте \-> "Открыть в Терминале" \-> ввести *.\train_network.ps1* и нажать Enter.

***

#### С помощью sd_dreambooth_extension

!!! warning Гайд основан на версии [c5cb58328c555ac27679422b1da940a9b19de6f2.](https://github.com/d8ahazard/sd_dreambooth_extension/tree/c5cb58328c555ac27679422b1da940a9b19de6f2)
    Новые версии не влезают в 8ГБ VRAM и могут иметь другие проблемы.
!!! error CKPT vs SAFETENSORS
    Файлы safetensors (пока) не поддерживаются! Из хороших новостей: обычно ckpt можно скачать там же, где качали safetensors.

Установите дополнение sd_dreambooth_extension из вкладки Extensions, перезапустите webui и выключите его после.
Скачайте версию c5cb58328c555ac27679422b1da940a9b19de6f2 [здесь](http://c2n.me/4hArEi5.zip) или на [GitHub.](https://github.com/d8ahazard/sd_dreambooth_extension/tree/c5cb58328c555ac27679422b1da940a9b19de6f2)
Извлеките содержимое папки sd_dreambooth_extension-c5cb58328c555ac27679422b1da940a9b19de6f2 в stable-diffusion-webui\extensions\sd_dreambooth_extension\ **с заменой файлов.**

Для начала удостоверьтесь, что исходный файл сети, на которой будем учиться, <name>.ckpt лежит по пути *stable-diffusion-webui\models\Stable-diffusion\\*, затем:

1. Открыть новую вкладку | 2. Нажать кнопку "Performance Wizard (WIP)"
:----: | :----:
![](https://i.imgur.com/LZzQvw1.png) | ![](https://c2n.me/4hArOym.jpg)
**3. Придумать название, выбрать исходную модель "Source Checkpoint" и нажать Create** |
![](https://c2n.me/4hArRs9.jpg)

->  **4. Проверить настройки во вкладке "Parameters" (сверху вниз):** <-

**Intervals**
- Training Steps Per Image (Epochs): от 25 до 150.
!!! info Больше – лучше, но дольше. Количество итераций **НА КАЖДОЕ** изображение.
    LoRA может быть **пере**тренирована так же, как и ембед с гипернетворкой. Слишком сильно накручивать продолжительность обучения не нужно.
- Max Training Steps: 0
- Pause After N Epochs: 0
- Amount of time to pause between Epochs (s): 60
- [x] Use Lifetime Steps/Epochs When Saving
- [ ] Save Preview/Ckpt Every Epoch
- Save Checkpoint Frequency: от 2000
`Чем чаще сохраняется модель, тем больше выбор из младших версий, если более новые начали идти по пизде. Жрут место на диске!`
- Save Preview(s) Frequency: от 500
 `Чем чаще сохраняются превью, тем быстрее можно увидеть, что модель перетренирована и начала идти по пизде`
!!! info Оба пункта "Save" замедляют обучение, потому что по-сути приостанавливают его для своих дел.

**Batch**
- Batch Size 1
- Class Batch Size 1

**Learning Rate**
!!! note Весь раздел "Learning Rate" оставляем без изменений.

**Image Processing**
- Resolution 512
- [ ] Center Crop
`Изображения должны быть заранее и осмысленно обрезаны`
- [x] Apply Horizontal Flip
`Не рекомендуется для несимметричных персонажей`

**Miscellaneous**
- Pretrained VAE Name or Path оставляем пустым.
- [ ] Use Concepts List
!!! warning Галка "Use Concepts List" имеет приоритет перед настройками во вкладке "Concepts".
    "Use Concepts List" нужно **убрать** для 3 и меньше концептов и их настройки через интерфейс, как описано далее. Если используете JSON на 3+ концептов, вставляйте полный путь до файла в "Concepts List" и ставьте галку.

-> **5. РАЗВОРАЧИВАЕМ внизу подменю Advanced и сверяем настройки:** <-
!!! info BF16 > FP16
    Если железо поддерживает BF16, лучше выбрать его.
!!! info Max Token Length
    Откройте свой самый большой файл описания, скопируйте его содержимое и поместите в промт WebUI. Справа на счетчике отобразится длина токена. Если меньше 75, ставим 75. Если больше 75 – ставьте 150. Если больше 150 – ставьте 225. Максимальное значение – 300.
-> ![](https://c2n.me/4hAs2Z5.jpg) <-

-> **6. Переходим во вкладку Concepts и настраиваем концепты:** <-

[Пример настроенного концепта](http://c2n.me/4hAs5Ir.jpg) (длинный скриншот), устанавливаем только путь до папки с изображениями и [filewords] в поля "Instance Token", "Instance Prompt" и "Sample Image Prompt". Все остальные настройки оставляем (но на всякий случай сверьте со скриншотом).

!!! note После этого нажимаем наверху "Save Settings" и запускаем обучение кнопкой "Train".
    Превью сохраняются в папку stable-diffusion-webui\models\dreambooth\НАЗВАНИЕМОДЕЛИ\samples\. Файлы pt ложатся в stable-diffusion-webui\models\lora\.

-> **Какие настройки могут покрутить бояре с 10ГБ VRAM и более:** <-
!!! warning Обучение вылетело с ошибкой - перестарались, не хватило VRAM, откатываемся.
    Вы ведь закрыли все фоновые приложения, которым тоже нужна VRAM, да?..

Продолжая обучать LORA:
- [x] Train Text Encoder
`Должен заметно улучшить результат.`
- [x] Use 8bit Adam
`Может незначительно улучшить результат.`
- [ ] Don't Cache Latents
`Должен незначительно ускорить обучение.`

Обучение полноценного dreambooth (генерирует полновесные модели, осторожно со свободным местом):
- [ ] Use LORA
`Скорее всего не взлетит, если нет 24ГБ VRAM.`
- [x] Use EMA
`Должен незначительно улучшить результат.`

***

## Решение проблем

#### Скрипт

Q: Какие-то проблемы с CUDA.
A: Вероятно не установлен [CUDA Toolkit](https://developer.nvidia.com/cuda-11-6-0-download-archive?target_os=Windows&target_arch=x86_64&target_version=11).

Q: У меня карточка 10-й серии и у меня вываливает ошибку при запуске тренировки. Что делать?
A: Скачать [альтернативные библиотеки cuda](https://github.com/james-things/bitsandbytes-prebuilt-all_arch), файл *libbitsandbytes_cudaall.dll* переименовать в *libbitsandbytes_cuda116.dll*, поместить по пути *sd-scripts\venv\Lib\site-packages\bitsandbytes\\* с заменой.

Q: Не работает расширение для подгрузки сетей.
A: Проверьте, чтобы не было аргумента *--lowvram* в *webui-user.bat*. С ним пока не работает.

Q: У меня Windows 7 и PowerShell крашится.
A: Установите [PowerShell 6](https://github.com/PowerShell/PowerShell/releases/tag/v6.2.6).

Q: Сыпятся красные ошибки в консоли при выполнении скрипта!
A: Обновите [PowerShell](https://github.com/PowerShell/PowerShell/releases).

Q: Установил всё по гайду, но все равно не находит модули! Мне что, каждую зависимость устанавливать вручную?
A: Нет, процесс подготовки был отредактирован, а конкретно убран флаг *--system-site-packages*. Этот флаг отвечал за учёт системных библиотек, установленных по стандартному системному пути, и это нередко приводило к конфликтам (в т.ч. у автора). Удалите папку *venv* из *\sd-scripts* и пройдитесь по командам заново.

#### sd_dreambooth_extension

!!! note Новая и старая версии
    Строго говоря, новая версия *может* работать нормально. Но на 15.01.2023 у автора гайда не получилось обучить на ней ничего, кроме мусора (на двух разных ПК), в то время как старая версия работает нормально. Настройки в новой версии примерно те же - можете попробовать ее.

Q: На превью вместо [нормальных изображений](http://c2n.me/4hzOvG8.png) генерируется [мусор.](http://c2n.me/4hzOx6o.png)
A: Проверьте, что откатили версию на старую согласно гайду. Если это не помогает, скорее всего вы напердолили слишком новый xformers, torch или torchvision. Создайте отдельный каталог webui для dreambooth (можно с самой новой версией webui) и дайте ему установить тухлятинку. Она должна работать нормально.

Q: Мой интерфейс dreambooth выглядит иначе!
A: Проверьте, что откатили версию на старую согласно гайду. Если вы обновляли дополнения во вкладке extensions, то оно обновило и dreambooth. Откатываемся снова тем же способом. Для dreambooth лучше иметь отдельный каталог webui, который вы не обновляете. Работает - не трогай.

Q: Обучение вылетает с ошибкой `RuntimeError: CUDA out of memory`
A: Проверьте, что откатили версию на старую согласно гайду. Работоспособность старой версии подтверждена с видеокартами на 8ГБ VRAM, и не подтверждена на 6. Новой версии нужно [не меньше 10.](https://github.com/d8ahazard/sd_dreambooth_extension/issues/755)