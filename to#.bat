@echo off
setlocal enabledelayedexpansion
set file=D:\Advertising.list
set file_tmp=D:\Advertising_tmp.list
set file_bak=D:\Advertising_bak.list

set source1="HOST,bytedance.com,Advertising"
set source2=HOST,p3.pstatp.com,Advertising
set source3=HOST,sf3-ttcdn-tos.pstatp.com,Advertising
set source4=HOST,sf6-ttcdn-tos.pstatp.com,Advertising
set source5=HOST-SUFFIX,pangolin.snssdk.com,Advertising
set source6=HOST-SUFFIX,a.ecook.cn,Advertising
set source7=HOST-SUFFIX,adview.cn,Advertising
set source8=HOST-SUFFIX,app-measurement.com,Advertising
set source9=HOST-SUFFIX,dm.pstatp.com,Advertising
set source10=HOST-SUFFIX,doubleclick.com,Advertising
set source11=HOST-SUFFIX,gdt.qq.com,Advertising
set source12=HOST-SUFFIX,hm.baidu.com,Advertising
set source13=HOST-SUFFIX,pb3.pstatp.com,Advertising
set source14=HOST-SUFFIX,pingma.qq.com,Advertising
set source15=HOST-SUFFIX,bianxianmao.com,Advertising
set source16=HOST-KEYWORD,umeng,Advertising
set source17=HOST,vipapi.wps.cn,Advertising
set source18=HOST-SUFFIX,dl.op.wpscdn.cn,Advertising

set replaced1=#HOST,bytedance.com,Advertising
set replaced2=#HOST,p3.pstatp.com,Advertising
set replaced3=#HOST,sf3-ttcdn-tos.pstatp.com,Advertising
set replaced4=#HOST,sf6-ttcdn-tos.pstatp.com,Advertising
set replaced5=#HOST-SUFFIX,pangolin.snssdk.com,Advertising
set replaced6=#HOST-SUFFIX,a.ecook.cn,Advertising
set replaced7=#HOST-SUFFIX,adview.cn,Advertising
set replaced8=#HOST-SUFFIX,app-measurement.com,Advertising
set replaced9=#HOST-SUFFIX,dm.pstatp.com,Advertising
set replaced10=#HOST-SUFFIX,doubleclick.com,Advertising
set replaced11=#HOST-SUFFIX,gdt.qq.com,Advertising
set replaced12=#HOST-SUFFIX,hm.baidu.com,Advertising
set replaced13=#HOST-SUFFIX,pb3.pstatp.com,Advertising
set replaced14=#HOST-SUFFIX,pingma.qq.com,Advertising
set replaced15=#HOST-SUFFIX,bianxianmao.com,Advertising
set replaced16=#HOST-KEYWORD,umeng,Advertising
set replaced17=#HOST,vipapi.wps.cn,Advertising
set replaced18=#HOST-SUFFIX,dl.op.wpscdn.cn,Advertising

for /f "delims=" %%i in (%file%) do (
    set str=%%i
        set "str=!str:%source1%=%replaced1%!"
        set "str=!str:%source2%=%replaced2%!"
        set "str=!str:%source3%=%replaced3%!"
        set "str=!str:%source4%=%replaced4%!"
        set "str=!str:%source5%=%replaced5%!"
        set "str=!str:%source6%=%replaced6%!"
        set "str=!str:%source7%=%replaced7%!"
        set "str=!str:%source8%=%replaced8%!"
        set "str=!str:%source9%=%replaced9%!"
        set "str=!str:%source10%=%replaced10%!"
        set "str=!str:%source11%=%replaced11%!"
        set "str=!str:%source12%=%replaced12%!"
        set "str=!str:%source13%=%replaced13%!"
        set "str=!str:%source14%=%replaced14%!"
        set "str=!str:%source15%=%replaced15%!"
        set "str=!str:%source16%=%replaced16%!"
        set "str=!str:%source17%=%replaced17%!"
        set "str=!str:%source18%=%replaced18%!"
        echo !str!>>%file_tmp%
)
::copy "%file%" "%file_bak%" >nul 2>nul
::move "%file_tmp%" "%file%"
@pause