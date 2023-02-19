# Client-Server-Communications-Translation-Module
Helps you encrypt and decrypt your Client-Server requests with this simple module where you can make your own alphabet too! This is really helpful and also prevents exploit scripts from running any of the functions.

# TranslateEncryptedTranslationToNormalEnglish
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Translator = require(ReplicatedStorage:FindFirstChild("Translator"));

local EncryptedText = "JZ:MQ2:";

Translator.TranslateEncryptedTranslationToNormalEnglish(EncryptedText);
```
*INPUT: JZ:MQ2:*


*OUTPUT: hi*

# TranslateNormalEnglishToEncryptedTranslation
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Translator = require(ReplicatedStorage:FindFirstChild("Translator"));

local NormalEnglish = "hi";

Translator.TranslateNormalEnglishToEncryptedTranslation(NormalEnglish);
```
*INPUT: hi*


*OUTPUT: JZ:MQ2:*

# TranslateNormalEnglishNumberToEncryptedNumber
```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Translator = require(ReplicatedStorage:FindFirstChild("Translator"));

local NormalEnglish = "10"; -- // MUST BE IN A STRING, IT'LL BE CONVERTED TO A NUMBER.

Translator.TranslateNormalEnglishNumberToEncryptedNumber(NormalEnglish);
```
*INPUT: 10*


*OUTPUT: OM:QX:*

