Set WShell = CreateObject("WScript.Shell")

' 1. Proje klasörünüze gidin ve Node.js sunucusunu arka planda (gizli) başlatın
WShell.CurrentDirectory = "C:\Users\AVAPOS\Documents\ureten-cocuk-operasyon"
WShell.Run "cmd /c npm start", 0, False

' 2. Ngrok'u arka planda (gizli) başlatın
WShell.Run "cmd /c ngrok http 3000", 0, False

' 3. Sunucunun açılması için 3 saniye bekleyin
WScript.Sleep 3000

' 4. Chrome tarayıcısında sayfayı açın
WShell.Run "http://localhost:3000/home.html"

Set WShell = Nothing

