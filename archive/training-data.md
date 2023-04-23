# Training data

## Format

JSON files with at least two objects, `characters` and `messages`. `characters` contains the names of all the characters, associated with informations about those characters. `messages` contains an array of messages. A single `message` is an object with at least a `speaker` associated with the name of the speaker, and an `utterance` associated with what was said. Here is a concrete example:

```json
{
  "characters": {
    "some character A": "information about them here",
    "some other character B": "information about them here"
  },
  "messages": [
    {"speaker": "some character A", "utterance": "thing they said"},
    {"speaker": "some other character B", "utterance": "their reply"},
    {"speaker": "some character A", "utterance": "conversation keeps going"},
    {"speaker": "some other character B", "utterance": "etc."}
  ]
}
```

## Data sources

In one sentence, the kind of data needed is **anything that looks like you'd want the models to spew out.** Here are a few suggestions:

### Chatlog dumps from CAI

There is a guide written about this here: https://rentry.org/chatlog-dumping. The tl;dr is go here https://github.com/0x000011b/characterai-dumper, install the script, follow the instructions, download the JSONs, put them here https://dump.nopanda.io/. For the longer version, and especially for the privacy/intimacy stuff, read the full chatlog-dumping rentry.

### Anime subtitles

Suggested by an anon on /aicg/. 

#### Characters and information

Can be sourced from anywhere: AniDB, MyAnimeList, Wikipedia, etc.

#### Utterances

The content of the subtitles files

#### Speakers

There are two main subtitles format, `.srt` and `.ass/.ssa`. For `.ssa` files, they have an `[Events]` section that contains the subtitles themselves and metadata about them. The first line of the `[Events]` section is the list of the columns, and every following line is one "line" of subtitles, with a starting time, an ending time, the text in the column `Text`, and tje speaker in the column `Actor`. However, it's common to find subtitles files that don't have proper naming for the speakers and have "NTP" everywhere instead. In that case, they're useless (unless you want to retag everything manually).

Todo: program to transform an `.ssa` file in a training JSON.

### Visual novels

#### Characters and information

Can be sourced from the VN itself, official material, vndb

#### Utterances and speakers

That will depend on the engine. Ren'py doesn't encrypt the script. Some other engines do. A few tools that might help: https://github.com/morkt/GARbro, https://github.com/Forlos/akaibu, https://github.com/vn-tools/arc_unpacker, https://github.com/Artikash/Textractor, https://github.com/nel1391/BcsExtractor, https://github.com/jjolano/unpac, https://github.com/XepherTim/UnRPA

## Misc

Max filesize: no known limit. Data is already streamed/buffered when it's used.
