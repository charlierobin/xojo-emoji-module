#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep InstallEmojiData
					AppliesTo = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vZW1vamktdGVzdC50eHQ=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
