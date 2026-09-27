@echo off
chcp 65001 >nul
title Üreten Çocuk Otomasyon Başlatıcı

:: 1. Proje klasörünüze gidin (Kendi dosya yolunuzu buraya yazın)
cd /d "C:\Users\AVAPOS\Documents\ureten-cocuk-operasyon"

:: 2. Node.js sunucusunu yeni bir CMD penceresinde başlat
start "Üreten Çocuk Sunucu" cmd /k "npm start"

:: 3. Ngrok'u ayrı bir CMD penceresinde başlat (Port 3000)
start "Ngrok Tüneli" cmd /k "ngrok http 3000"

:: 4. Sunucunun ve Ngrok'un kendine gelmesi için 3 saniye bekle
timeout /t 3 /nobreak >nul

:: 5. Varsayılan tarayıcıda (Chrome) yerel adresi aç
start http://localhost:3000/home.html

exit