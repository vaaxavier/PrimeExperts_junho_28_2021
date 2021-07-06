
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

## variaveis do aplicativo
${BTN_LOGIN}                   accessibility_id=Account
${ACCOUNT}                     id=com.google.android.youtube:id/button
${ACCOUNT_NAME}                id=com.google.android.youtube:id/name
${TRENDING_BTN}                accessibility_id=Trending
${10_ITEN}                     xpath=//android.view.ViewGroup[@content-desc="RIP BRO....LOVE YOU💔 - 5 minutes, 6 seconds - Go to channel - Famous Nunu - 213K views - 22 hours ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout

*** Keywords ***
 Abrir o aplicativo no celular
    Open Application                    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}  

Logar no aplicativo com a conta 
    Wait Until Element Is Visible        ${ACCOUNT}
    Click Element                        ${ACCOUNT}
    Wait Until Element Is Visible        ${ACCOUNT}
    Click Element                        ${ACCOUNT}
    Wait Until Element Is Visible        ${ACCOUNT_NAME}
    Click Element                        ${ACCOUNT_NAME}
          
Entrar no menu “Explorar”
    Click Element                        ${TRENDING_BTN}    

Usar swipe de tela até o 10 item da tela
    Swipe    535    1898    496    1118
    Swipe    517    1828    545    1052
    Swipe    556    1936    538    1262
    Swipe    566    1894    552    979
    Swipe    521    1912    517    1063
    Swipe    542    1880    580    786
    Swipe    521    1884    486    923
    Swipe    570    1653    591    765


Clicar no vídeo
     Click Element                        ${10_ITEN}
    

#Gravação do Appium pra dar base ao teste:

#Tentativa I

# # xpath=//android.widget.Button[@content-desc="Home"]/android.widget.ImageView
# Click Element    xpath=//android.widget.Button[@content-desc="Home"]/android.widget.ImageView
# # accessibility id=Account
# Click Element    accessibility id=Account
# # id=com.google.android.youtube:id/button
# Click Element    id=com.google.android.youtube:id/button
# # id=com.google.android.youtube:id/name
# Click Element    id=com.google.android.youtube:id/name
# # xpath=//android.widget.Button[@content-desc="Trending"]/android.widget.ImageView
# Click Element    xpath=//android.widget.Button[@content-desc="Trending"]/android.widget.ImageView
# Swipe    486    1905    482    933
# Swipe    528    1901    556    783
# Swipe    493    1859    510    905
# Swipe    454    1950    433    783
# Swipe    521    1772    524    1056
# # xpath=//android.view.ViewGroup[@content-desc="A Capitol Fourth 2021 | PBS - 2 hours - Go to channel - PBS - 271K views - Streamed 1 day ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
# Click Element    xpath=//android.view.ViewGroup[@content-desc="A Capitol Fourth 2021 | PBS - 2 hours - Go to channel - PBS - 271K views - Streamed 1 day ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout


#Tentativa II

# # accessibility id=Account
# Click Element    accessibility id=Account
# # id=com.google.android.youtube:id/button
# Click Element    id=com.google.android.youtube:id/button
# # id=com.google.android.youtube:id/name
# Click Element    id=com.google.android.youtube:id/name
# # accessibility id=Trending
# Click Element    accessibility id=Trending
# Swipe    535    1898    496    1118
# Swipe    517    1828    545    1052
# Swipe    556    1936    538    1262
# Swipe    566    1894    552    979
# Swipe    521    1912    517    1063
# Swipe    542    1880    580    786
# Swipe    521    1884    486    923
# Swipe    570    1653    591    765
# # xpath=//android.view.ViewGroup[@content-desc="RIP BRO....LOVE YOU💔 - 5 minutes, 6 seconds - Go to channel - Famous Nunu - 213K views - 22 hours ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
# Click Element    xpath=//android.view.ViewGroup[@content-desc="RIP BRO....LOVE YOU💔 - 5 minutes, 6 seconds - Go to channel - Famous Nunu - 213K views - 22 hours ago - play video"]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout
