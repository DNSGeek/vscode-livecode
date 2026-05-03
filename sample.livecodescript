-- Sample LiveCode Script file
-- Demonstrates syntax highlighting for the VS Code extension

local sInitialized

global gAppName

on openStack
   put "MyApp" into gAppName
   put false into sInitialized
   initializeApp
end openStack

on initializeApp
   -- Set up initial state
   local tConfigPath
   put specialFolderPath("documents") & "/myapp.config" into tConfigPath
   
   if there is a file tConfigPath then
      loadConfig tConfigPath
   else
      answer "Welcome to" && gAppName & "!" with "OK"
   end if
   
   put true into sInitialized
end initializeApp

function loadConfig pPath
   local tRaw, tLines, tLine, tKey, tValue
   
   open file pPath for read
   read from file pPath until end
   put it into tRaw
   close file pPath
   
   if the result is not empty then
      -- File read failed
      return false
   end if
   
   repeat for each line tLine in tRaw
      -- Skip comments and blank lines
      if tLine begins with "#" then next repeat
      if tLine is empty then next repeat
      
      put item 1 of tLine into tKey
      put item 2 to -1 of tLine into tValue
      
      set the cConfig[tKey] of this stack to tValue
   end repeat
   
   return true
end loadConfig

on mouseUp
   -- Button click handler
   local tChoice
   
   answer "What would you like to do?" with "Save" or "Load" or "Quit"
   put it into tChoice
   
   switch tChoice
      case "Save"
         doSave
         break
      case "Load"
         doLoad
         break
      case "Quit"
         quit
         break
   end switch
end mouseUp

on doSave
   local tPath, tData
   
   ask file "Save as:" with filter "LiveCode files,*.livecode"
   if it is empty then exit doSave
   put it into tPath
   
   -- Build data to save
   put the htmlText of field "content" into tData
   
   try
      open file tPath for write
      write tData to file tPath
      close file tPath
   catch tError
      answer "Save failed:" && tError
   end try
end doSave

function formatDateTime pSeconds
   -- Format a seconds value as a readable date/time string
   local tDate
   
   convert pSeconds to long date time
   return pSeconds
end formatDateTime

getprop myCustomProp
   return the cData["myCustomProp"] of me
end myCustomProp

setProp myCustomProp pValue
   set the cData["myCustomProp"] of me to pValue
   -- notify any listeners
   dispatch "customPropChanged" with "myCustomProp", pValue
end myCustomProp
