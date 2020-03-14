# A library of emoji utility functions for use in Xojo projects

A module ( `Emojis` ) of various methods to help deal with strings that may or may not contain emojis, and to help do various things to those string. ( The primary one, let’s face it, probably being to get rid of the damn things. )

Before first use, call `Emojis.initialise()`.

Can be initalised with either an external data file ( anywhere on filesystem or in app’s Resources folder ) or using an internal string constant of data.

Uses the standard data files provided by those good folks at the [Unicode Consortium](https://home.unicode.org):

https://unicode.org/Public/emoji/13.0/emoji-test.txt

https://www.unicode.org/reports/tr51/

## Methods:

`containsEmoji( string as Text ) as Boolean` -> does the string contain emojis?

`containsOnlyEmoji( string as Text ) as Boolean` -> does the string contain only emojis and nothing else?

`count( string as Text ) as UInt32` -> how many emojis in the string?

`emojiString( string as Text ) as Text` -> just the emojis extracted from the string

`expand( string as Text ) as Text` -> substitute any emojis with their names

`filterByVersion( string as Text, version as String ) as Text` -> restrict emojis in string to those less than / equal to version number

`findByDescription( searchTerm as String ) as Text` -> emojis with description(s) that match search term
`findByGroup( searchTerm as String ) as Text` -> emojis with group name(s) that match search term
`findBySubGroup( searchTerm as String ) as Text` -> emojis with subgroup name(s) that match search term

`getAllRecords() as JSONItem()` -> returns array of JSON objects, one for each emoji in the database. ( Mainly of use for populating an emoji browser, for instance. Command-N in the app to see an example of this. )

Each JSONItem is an object:

    {
        "codepoints":"1F90C",
        "status":"fully-qualified",
        "emoji":"🤌",
        "versionString":"13.0",
        "version":130,
        "description":"pinched fingers",
        "group":"People & Body",
        "subGroup":"hand-fingers-partial"
    }

`getRecord( character as String ) as JSONItem` -> get the JSON record (object) for a single emoji

`isSingleEmoji( character as Text ) as Boolean` -> is a single character an emoji?

`isNotSingleEmoji( character as Text ) as Boolean` -> is a single character not an emoji?

`stripEmojis( string as Text ) as Text` -> remove all emojis from a string

(All of this has been developed and tested **only** on *macOS Catalina*, Xojo version 2019r3.1.)

There are some basic tests run when the demo app launches. It all seems to work. But it’s early days yet. Plenty of opportunity for things to go hideously wrong.

[Sample output from the tests](output.md)

(Soft wrapping of the flags, and a few other minor bits, are messed up, but is fine when viewed raw.)

A very basic level of optimisation has been done, I think the thing is good enough for a user interactive desktop app. On the other hand, if you want to clean up millions of strings in one go, I suspect there would be a need for quite a bit more work to get more speed out of the thing.

The module uses the latest data file from the [Unicode Consortium](https://home.unicode.org), which has some new emojis which have not yet been implemented into macOS. ( Like the pinched fingers one in the JSON example above; as of the date of writing, March 2020. ) I don’t think this is a huge issue. But if it was, you would either filter by version, or just get the previous version of the data from the [Unicode Consortium](https://home.unicode.org) and use that instead.

For instance:

https://unicode.org/Public/emoji/12.1/emoji-test.txt

... or ...

https://unicode.org/Public/emoji/12.0/emoji-test.txt

All the Unicode Consortium data files are here:

https://unicode.org/Public/emoji/

### Charlie
