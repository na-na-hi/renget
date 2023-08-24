## Ayumi's LLM Role Play & ERP Ranking - Filter Userscript

!!! info Welcome
    Hello and welcome to the information page for Filter Userscript for Ayumi's LLM Role Play & ERP Ranking by mr.devolver.
    
    ->==Current version of the script is v0.2.==<-

### About & How to use

This is a userscript which extends [Ayumi's LLM Role Play & ERP Ranking](https://rentry.org/ayumi_erp_rating/) website with new functionality. It adds a top control bar from which you can work with the list in the following ways:

1.  Filter the list by ==Model size== (3B, 7B, 13B, …) When applied, only models of this size will be shown in the list
2.  Filter the list by ==ALC-IQ==. When this parameter is set and filter applied, only models of this ALC-IQ value and higher will be shown in the list
3.  Filter the list by ==ERP Score==. When this parameter is set and filter applied, only models of this ERP Score value and higher will be shown in the list

!!! note Parameters
    You can use these parameters individually or combined. Setting any parameter to 0 means that parameter will have 0 effect on the filter (as if no filter was applied for that parameter). When using Model size parameter, just set the number, no need to specify "B" after it. Once you set your desired target parameters, click Apply button for the filter to take effect. If you wish to reset everything to default, you can click Reset button and it will reset the values and show the whole list again as if no filters were previously applied.

### How to install

1.  Download and install userscript manager extension of your preference for your favorite web browser. If you don't know which userscript manager to use, I recommend Tampermonkey. This extension is available for most popular web browsers
2.  Download my userscript from [here](https://gist.github.com/mrdevolver/a1626179df78f4a7181240b1d2833a35/raw/AyumiLLMRPRanking.user.js). As long as you have a userscript manager installed in your web browser, visiting that link should automatically open the userscript manager and ask you whether you want to install this script or not, so agree to install
3.  Once installed successfully, next time you visit Ayumi's LLM Role Play & ERP Ranking website, my script should detect it and start working. It should look like this:

![](https://i.imgur.com/1TMhDS3.png)