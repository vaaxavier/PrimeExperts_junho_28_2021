
*** Settings ***
Documentation    arquivo responsavel pelas variaveis, KW e variaveis do proveto mobile testing
Library          AppiumLibrary

*** Variables ***
# Setup do device
${REMOTE_URL}              http://localhost:4723/wd/hub
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        9.0
${DEVICE_NAME}             pixel
${APP_PACKAGE}             com.google.android.youtube
${APP_ACTIVITY}            com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}         UiAutomator2

*** Keywords ***
Abrir App
    Open Application                    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}  
Logar no aplicativo com a conta x
    
Entrar no menu “Explorar”

Usar swipe de tela até o 10 item da tela

 Clicar no vídeo
 


 #Gravação do Appium pra dar base ao teste:

# xpath=//android.widget.Button[@content-desc="Home"]/android.widget.ImageView
Click Element    xpath=//android.widget.Button[@content-desc="Home"]/android.widget.ImageView
# accessibility id=Account
Click Element    accessibility id=Account
# id=com.google.android.youtube:id/button
Click Element    id=com.google.android.youtube:id/button
# id=com.google.android.youtube:id/name
Click Element    id=com.google.android.youtube:id/name
# xpath=//android.widget.Button[@content-desc="Trending"]/android.widget.ImageView
Click Element    xpath=//android.widget.Button[@content-desc="Trending"]/android.widget.ImageView
Swipe    486    1905    482    933
Swipe    528    1901    556    783
Swipe    493    1859    510    905
Swipe    454    1950    433    783
Swipe    521    1772    524    1056
# xpath=//android.view.ViewGroup[@content-desc="A Capitol Fourth 2021 | PBS - 2 hours - Go to channel - PBS - 271K views - Streamed 1 day ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
Click Element    xpath=//android.view.ViewGroup[@content-desc="A Capitol Fourth 2021 | PBS - 2 hours - Go to channel - PBS - 271K views - Streamed 1 day ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
