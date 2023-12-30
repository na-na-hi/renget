-> [ %#9C89FF% [ main page ] %% ](https://rentry.org/doujin) <-  | -> [ %#9C89FF% [ contact ] %% ](https://rentry.org/doujin#contact) <- | -> [ %#9C89FF% [ cards ] %% ](https://rentry.org/doujin#doujin-cards) <- | -> [ %#9C89FF% [ todo ] %% ](https://rentry.org/doujin#todo-list) <- | -> [ %#9C89FF% [ colors ] %% ](https://rentry.org/doujin#colors) <- | -> [ %#9C89FF% [ gradient generator ] %% ](https://rentry.org/doujins-gradient-generator) <-
| | | | |

### ->%#7e38b7%-%%%#8046bc%]%% %#8355c1%d%%%#8664c7%o%%%#8873cc%u%%%#8b82d2%j%%%#8e90d7%i%%%#909fdc%n%%%#93aee2%s%% %#96bde7%[%%%#99cced%-%% <-
-> ![](https://files.catbox.moe/6u9ho9.jpg) <-
-> %#C4FEFF% takes the numbers, makes the cards :3 %% <-

---
###%#7e38b7%[%% %#7f40ba%g%%%#8148bd%r%%%#8250c0%a%%%#8458c3%d%%%#8561c6%i%%%#8769c9%e%%%#8871cc%n%%%#8a79cf%t%% %#8b82d2%g%%%#8d8ad5%e%%%#8e92d8%n%%%#909adb%e%%%#91a2de%r%%%#93abe1%a%%%#94b3e4%t%%%#96bbe7%o%%%#97c3ea%r%% %#99cced%]%%
- %#9C89FF% useful for creating rentry gradients%%
- %#9C89FF% also outputs rainbow text in case you need that%%
- %#9C89FF% change input_text, start_hex and end_hex to use.%%
- %#9C89FF% maybe link to here in your own rentry if you use this there :3%%
```py
import colorsys

def interpolate(fraction, start_color, end_color):
    s_r, s_g, s_b = start_color
    e_r, e_g, e_b = end_color
    new_r = s_r + fraction * (e_r - s_r)
    new_g = s_g + fraction * (e_g - s_g)
    new_b = s_b + fraction * (e_b - s_b)
    return int(new_r), int(new_g), int(new_b)

def rainbow(text):
    num_of_colors = sum(1 for char in text if char != ' ' and char != '\n')
    gradient_colors = []
    for i in range(num_of_colors):
        hue = i / num_of_colors
        rgb_color = tuple(round(i * 255) for i in colorsys.hsv_to_rgb(hue, 1, 1))
        gradient_colors.append(rgb_color)

    colored_text = ""
    color_index = 0
    for char in text:
        if char == ' ':
            colored_text += " "
            continue
        if char == '\n':
            colored_text += "\n"
            continue
        hex_color = "#{:02x}{:02x}{:02x}".format(*gradient_colors[color_index])
        colored_text += f"%{hex_color}%{char}%%"
        color_index += 1

    return colored_text

def hex_to_rgb(hex_color):
    hex_color = hex_color.lstrip('#')
    return tuple(int(hex_color[i:i+2], 16) for i in (0, 2, 4))

def generate_gradient(text, start_hex, end_hex):
    start_color = hex_to_rgb(start_hex)
    end_color = hex_to_rgb(end_hex)
    num_of_colors = sum(1 for char in text if char != ' ' and char != '\n')
    gradient_colors = [interpolate(i / (num_of_colors - 1), start_color, end_color) for i in range(num_of_colors)]

    colored_text = ""
    color_index = 0
    for char in text:
        if char == ' ' or char == '\n':
            colored_text += char
            continue
        hex_color = "#{:02x}{:02x}{:02x}".format(*gradient_colors[color_index])
        colored_text += f"%{hex_color}%{char}%%"
        color_index += 1

    return colored_text

input_text = """text example!"""
# also works with multiline strings too :3
start_hex = "#FF0000"
end_hex = "#FFFFFF"

print('\n---\nGRADIENT TEXT:')
print(generate_gradient(input_text, start_hex, end_hex))

print('\n---\nRAINBOW TEXT:')
print(rainbow(input_text))
```