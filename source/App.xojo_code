#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  // can initialise using an external file or from a string copied/pasted into string constant: Emojies.cached
		  
		  // Emojis.initialise()
		  
		  // var f as FolderItem = new FolderItem( "/Volumes/external/work/creating emoji database & filtering emjois etc/emoji-test.txt" )
		  
		  // ... or from data file that has been copied into app's resources folder via build step ...
		  
		  var f as FolderItem = TPSF.Resources().Child( "emoji-test.txt" )
		  
		  Emojis.initialise( f )
		  
		  me.runTests()
		  
		  DebugLogNewLine()
		  
		  var test as Text = "🤌"
		  
		  var data as JSONItem = Emojis.getRecord( test )
		  
		  data.Compact = false
		  
		  DebugLog( data.ToString )
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileNewEmojiBrowser() As Boolean Handles FileNewEmojiBrowser.Action
			var window as WindowBrowser = new WindowBrowser()
			
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub containsEmojis(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + str( Emojis.containsEmoji( s ) ) )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub containsOnlyEmoji(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + str( Emojis.containsOnlyEmoji( s ) ) )
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub count(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + str( Emojis.count( s ) ) )
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub emojiString(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + Emojis.emojiString( s ) )
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub expand(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + Emojis.expand( s ) )
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub findByDescription(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": (" + s + ")   →   " + Emojis.findByDescription( s ) )
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub findByGroup(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": (" + s + ")   →   " + Emojis.findByGroup( s ) )
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub findBySubGroup(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": (" + s + ")   →   " + Emojis.findBySubGroup( s ) )
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub findBySubGroupFilteredByVersion(s as String, v as String)
		  var results as Text = Emojis.findBySubGroup( s )
		  
		  results = Emojis.filterByVersion( results, v )
		  
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": (" + s + ") up to and including version: " + v + ":   →   " + results )
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub isSingleEmoji(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + str( Emojis.isSingleEmoji( s ) ) )
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub runTests()
		  containsEmojis( "A" )
		  containsEmojis( "3" )
		  containsEmojis( "A▶️" )
		  containsEmojis( "3️⃣" )
		  
		  containsEmojis( "⏰" )
		  containsEmojis( "🌶️" )
		  containsEmojis( "👨" )
		  containsEmojis( "Hello 👨" )
		  
		  containsEmojis( "👌🏿" )
		  containsEmojis( "🙎🏼‍♂️" )
		  containsEmojis( "🇹🇩" )
		  
		  containsEmojis( "👫 Héllœ 👨‍👩‍👧‍👧" )
		  containsEmojis( "👫 Héllœ" )
		  containsEmojis( "Héllœ" )
		  containsEmojis( "👫👨‍👩‍👧‍👧👨‍👨‍👧‍👧" )
		  
		  DebugLogNewLine()
		  
		  emojiString( "Hello 👨" )
		  stripEmojis( "Hello 👨" )
		  
		  emojiString( "👫 Héllœ 👨‍👩‍👧‍👧" )
		  stripEmojis( "👫 Héllœ 👨‍👩‍👧‍👧" )
		  
		  emojiString( "A▶️ something 🌶️" )
		  stripEmojis( "A▶️ something 🌶️" )
		  
		  DebugLogNewLine()
		  
		  findByDescription( "elf" )
		  findByDescription( "red hair" )
		  findByDescription( "bone" )
		  findByDescription( "villain" )
		  
		  DebugLogNewLine()
		  
		  expand( "Hello 👨" )
		  expand( "A▶️ something 🌶️" )
		  expand( "👫👨‍👩‍👧‍👧👨‍👨‍👧‍👧" )
		  expand( "🇬🇧🇭🇺🏴󠁧󠁢󠁥󠁮󠁧󠁿🇲🇹" )
		  
		  DebugLogNewLine()
		  
		  isSingleEmoji( "Hello 👨" )
		  isSingleEmoji( "🌶️" )
		  
		  DebugLogNewLine()
		  
		  containsOnlyEmoji( "👫 Héllœ 👨‍👩‍👧‍👧" )
		  containsOnlyEmoji( "red hair" )
		  containsOnlyEmoji( "⏰" )
		  containsOnlyEmoji( "👫👨‍👩‍👧‍👧👨‍👨‍👧‍👧" )
		  containsOnlyEmoji( "👫 happy families 👨‍👩‍👧‍👧👨‍👨‍👧‍👧" )
		  
		  DebugLogNewLine()
		  
		  findByGroup( "flags" )
		  
		  DebugLogNewLine()
		  
		  findBySubGroup( "food" )
		  
		  DebugLogNewLine()
		  
		  findBySubGroupFilteredByVersion( "food", "12" )
		  
		  DebugLogNewLine()
		  
		  findBySubGroupFilteredByVersion( "food", "2" )
		  
		  DebugLogNewLine()
		  
		  count( "👫 happy families 👨‍👩‍👧‍👧👨‍👨‍👧‍👧" )
		  count( "A▶️ something 🌶️" )
		  count( "Hello 👨" )
		  count( "The quick brown fox jumps over the lazy dog" )
		  count( "The quick 🟤 🦊 jumps over the lazy 🐕" )
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub stripEmojis(s as String)
		  DebugLog( CurrentMethodName.Middle( 4 ) + ": " + s + "   →   " + Emojis.stripEmojis( s ) )
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
