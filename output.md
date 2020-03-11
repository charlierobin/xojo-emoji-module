containsEmojis: A → False

containsEmojis: 3 → False

containsEmojis: A▶️ → True

containsEmojis: 3️⃣ → True

containsEmojis: ⏰ → True

containsEmojis: 🌶️ → True

containsEmojis: 👨 → True

containsEmojis: Hello 👨 → True

containsEmojis: 👌🏿 → True

containsEmojis: 🙎🏼‍♂️ → True

containsEmojis: 🇹🇩 → True

containsEmojis: 👫 Héllœ 👨‍👩‍👧‍👧 → True

containsEmojis: 👫 Héllœ → True

containsEmojis: Héllœ → False

containsEmojis: 👫👨‍👩‍👧‍👧👨‍👨‍👧‍👧 → True

---

emojiString: Hello 👨 → 👨

stripEmojis: Hello 👨 → Hello

emojiString: 👫 Héllœ 👨‍👩‍👧‍👧 → 👫👨‍👩‍👧‍👧

stripEmojis: 👫 Héllœ 👨‍👩‍👧‍👧 → Héllœ

emojiString: A▶️ something 🌶️ → ▶️🌶️

stripEmojis: A▶️ something 🌶️ → A something

---

findByDescription: (elf) → 🤳🤳🏻🤳🏼🤳🏽🤳🏾🤳🏿🧝🧝🏻🧝🏼🧝🏽🧝🏾🧝🏿🧝‍♂️🧝‍♂🧝🏻‍♂️🧝🏻‍♂🧝🏼‍♂️🧝🏼‍♂🧝🏽‍♂️🧝🏽‍♂🧝🏾‍♂️🧝🏾‍♂🧝🏿‍♂️🧝🏿‍♂🧝‍♀️🧝‍♀🧝🏻‍♀️🧝🏻‍♀🧝🏼‍♀️🧝🏼‍♀🧝🏽‍♀️🧝🏽‍♀🧝🏾‍♀️🧝🏾‍♀🧝🏿‍♀️🧝🏿‍♀


findByDescription: (red hair) → 👨‍🦰👨🏻‍🦰👨🏼‍🦰👨🏽‍🦰👨🏾‍🦰👨🏿‍🦰👩‍🦰👩🏻‍🦰👩🏼‍🦰👩🏽‍🦰👩🏾‍🦰👩🏿‍🦰🧑‍🦰🧑🏻‍🦰🧑🏼‍🦰🧑🏽‍🦰🧑🏾‍🦰🧑🏿‍🦰🦰


findByDescription: (bone) → ☠️☠🦴🍖


findByDescription: (villain) → 🦹🦹🏻🦹🏼🦹🏽🦹🏾🦹🏿🦹‍♂️🦹‍♂🦹🏻‍♂️🦹🏻‍♂🦹🏼‍♂️🦹🏼‍♂🦹🏽‍♂️🦹🏽‍♂🦹🏾‍♂️🦹🏾‍♂🦹🏿‍♂️🦹🏿‍♂🦹‍♀️🦹‍♀🦹🏻‍♀️🦹🏻‍♀🦹🏼‍♀️🦹🏼‍♀🦹🏽‍♀️🦹🏽‍♀🦹🏾‍♀️🦹🏾‍♀🦹🏿‍♀️🦹🏿‍♀

---

expand: Hello 👨 → Hello <man>

expand: A▶️ something 🌶️ → A<play button> something <hot pepper>

expand: 👫👨‍👩‍👧‍👧👨‍👨‍👧‍👧 → <woman and man holding hands><family: man, woman, girl, girl><family: man, man,girl, girl>

expand: 🇬🇧🇭🇺🏴󠁧󠁢󠁥󠁮󠁧󠁿🇲🇹 → <flag: United Kingdom><flag: Hungary><flag: England><flag: Malta>

---

isSingleEmoji: Hello 👨 → False

isSingleEmoji: 🌶️ → True

---

containsOnlyEmoji: 👫 Héllœ 👨‍👩‍👧‍👧 → False

containsOnlyEmoji: red hair → False

containsOnlyEmoji: ⏰ → True

containsOnlyEmoji: 👫👨‍👩‍👧‍👧👨‍👨‍👧‍👧 → True

containsOnlyEmoji: 👫 happy families 👨‍👩‍👧‍👧👨‍👨‍👧‍👧 → False

---

findByGroup: (flags) → 🏁🚩🎌🏴🏳️🏳🏳️‍🌈🏳‍🌈🏳️‍⚧️🏳‍⚧️🏳️‍⚧🏳‍⚧🏴‍☠️🏴‍☠🇦🇨🇦🇩🇦🇪🇦🇫🇦🇬🇦🇮🇦🇱🇦🇲🇦🇴🇦🇶🇦🇷🇦🇸🇦🇹🇦🇺🇦🇼🇦🇽🇦🇿🇧🇦🇧🇧🇧🇩🇧🇪🇧🇫🇧🇬🇧🇭🇧🇮🇧🇯🇧🇱🇧🇲🇧🇳🇧🇴🇧🇶🇧🇷🇧🇸🇧🇹🇧🇻🇧🇼🇧🇾🇧🇿🇨🇦🇨🇨🇨🇩🇨🇫🇨🇬🇨🇭🇨🇮🇨🇰🇨🇱🇨🇲🇨🇳🇨🇴🇨🇵🇨🇷🇨🇺🇨🇻🇨🇼🇨🇽🇨🇾🇨🇿🇩🇪🇩🇬🇩🇯🇩🇰🇩🇲🇩🇴🇩🇿🇪🇦🇪🇨🇪🇪🇪🇬🇪🇭🇪🇷🇪🇸🇪🇹🇪🇺🇫🇮🇫🇯🇫🇰🇫🇲🇫🇴🇫🇷🇬🇦🇬🇧🇬🇩🇬🇪🇬🇫🇬🇬🇬🇭🇬🇮🇬🇱🇬🇲🇬🇳🇬🇵🇬🇶🇬🇷🇬🇸🇬🇹🇬🇺🇬🇼🇬🇾🇭🇰🇭🇲🇭🇳🇭🇷🇭🇹🇭🇺🇮🇨🇮🇩🇮🇪🇮🇱🇮🇲🇮🇳🇮🇴🇮🇶🇮🇷🇮🇸🇮🇹🇯🇪🇯🇲🇯🇴🇯🇵🇰🇪🇰🇬🇰🇭🇰🇮🇰🇲🇰🇳🇰🇵🇰🇷🇰🇼🇰🇾🇰🇿🇱🇦🇱🇧🇱🇨🇱🇮🇱🇰🇱🇷🇱🇸🇱🇹🇱🇺🇱🇻🇱🇾🇲🇦🇲🇨🇲🇩🇲🇪🇲🇫🇲🇬🇲🇭🇲🇰🇲🇱🇲🇲🇲🇳🇲🇴🇲🇵🇲🇶🇲🇷🇲🇸🇲🇹🇲🇺🇲🇻🇲🇼🇲🇽🇲🇾🇲🇿🇳🇦🇳🇨🇳🇪🇳🇫🇳🇬🇳🇮🇳🇱🇳🇴🇳🇵🇳🇷🇳🇺🇳🇿🇴🇲🇵🇦🇵🇪🇵🇫🇵🇬🇵🇭🇵🇰🇵🇱🇵🇲🇵🇳🇵🇷🇵🇸🇵🇹🇵🇼🇵🇾🇶🇦🇷🇪🇷🇴🇷🇸🇷🇺🇷🇼🇸🇦🇸🇧🇸🇨🇸🇩🇸🇪🇸🇬🇸🇭🇸🇮🇸🇯🇸🇰🇸🇱🇸🇲🇸🇳🇸🇴🇸🇷🇸🇸🇸🇹🇸🇻🇸🇽🇸🇾🇸🇿🇹🇦🇹🇨🇹🇩🇹🇫🇹🇬🇹🇭🇹🇯🇹🇰🇹🇱🇹🇲🇹🇳🇹🇴🇹🇷🇹🇹🇹🇻🇹🇼🇹🇿🇺🇦🇺🇬🇺🇲🇺🇳🇺🇸🇺🇾🇺🇿🇻🇦🇻🇨🇻🇪🇻🇬🇻🇮🇻🇳🇻🇺🇼🇫🇼🇸🇽🇰🇾🇪🇾🇹🇿🇦🇿🇲🇿🇼🏴󠁧󠁢󠁥󠁮󠁧󠁿🏴󠁧󠁢󠁳󠁣󠁴󠁿🏴󠁧󠁢󠁷󠁬󠁳󠁿


findBySubGroup: (food) → 🍇🍈🍉🍊🍋🍌🍍🥭🍎🍏🍐🍑🍒🍓🫐🥝🍅🫒🥥🥑🍆🥔🥕🌽🌶️🌶🫑🥒🥬🥦🧄🧅🍄🥜🌰🍞🥐🥖🫓🥨🥯🥞🧇🧀🍖🍗🥩🥓🍔🍟🍕🌭🥪🌮🌯🫔🥙🧆🥚🍳🥘🍲🫕🥣🥗🍿🧈🧂🥫🍱🍘🍙🍚🍛🍜🍝🍠🍢🍣🍤🍥🥮🍡🥟🥠🥡🦀🦞🦐🦑🦪🍦🍧🍨🍩🍪🎂🍰🧁🥧🍫🍬🍭🍮🍯


findBySubGroupFilteredByVersion: (food) up to and including version: 12: → 🍇🍈🍉🍊🍋🍌🍍🥭🍎🍏🍐🍑🍒🍓🥝🍅🥥🥑🍆🥔🥕🌽🌶️🌶🥒🥬🥦🧄🧅🍄🥜🌰🍞🥐🥖🥨🥯🥞🧇🧀🍖🍗🥩🥓🍔🍟🍕🌭🥪🌮🌯🥙🧆🥚🍳🥘🍲🥣🥗🍿🧈🧂🥫🍱🍘🍙🍚🍛🍜🍝🍠🍢🍣🍤🍥🥮🍡🥟🥠🥡🦀🦞🦐🦑🦪🍦🍧🍨🍩🍪🎂🍰🧁🥧🍫🍬🍭🍮🍯


findBySubGroupFilteredByVersion: (food) up to and including version: 2: → 🍇🍈🍉🍊🍋🍌🍍🍎🍏🍐🍑🍒🍓🍅🍆🌽🌶️🌶🍄🌰🍞🧀🍖🍗🍔🍟🍕🌭🌮🌯🍳🍲🍿🍱🍘🍙🍚🍛🍜🍝🍠🍢🍣🍤🍥🍡🦀🍦🍧🍨🍩🍪🎂🍰🍫🍬🍭🍮🍯

---

count: 👫 happy families 👨‍👩‍👧‍👧👨‍👨‍👧‍👧 → 3

count: A▶️ something 🌶️ → 2

count: Hello 👨 → 1

count: The quick brown fox jumps over the lazy dog → 0

count: The quick 🟤 🦊 jumps over the lazy 🐕 → 3


