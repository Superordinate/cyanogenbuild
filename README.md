## cyanogenbuild
These are tools to make it easier for anyone to build their own ROM.  I have commented and explained every line, and I encourage any user to read these comments.  Should work without reading though. 

ZF2 Cyanogenmod for mainlined devices

Attribution

* I couldn't care less about copyrights, and I encourage you to flaunt them as they are an affront to human dignity.  There is no need whatsoever to attribute me in your re-uses of this work.  If you want to, 
 * my name is Jacob Gadikian, 
 * e-mail is jake@klouds.org (mailto:jake@klouds.org), 
 * and phone number is +84 01677896421 (tel:+8401677896421).  
 * On most days, if you want to see me, I can be found at: 
  * 695 Hoang Hoa Tham in Hanoi, Vietnam on the third floor of the building.  
* That said, I should give attribution to the literally thousands of people who actually wrote the code that this guide builds into a coherent Android Operating System.  Thanks, OSS coders of earth!
* Additionally, a tip of the hat to Google, who made its OS open for competitive reasons, and improved the world by doing so.  

Use Cases

* This guide could be used by an **enthusiast** to build their own cyanogenmod ROM
* This guide could be used by a (brave) **teacher** to help **learners** to know the hands-on utility of concepts like device reporgrammability, open source, compilers, and digital self-empowerment.  This right here, this is why open source matters and the DMCA is a threat to everybody.  
* This guide could be used by **activists**to explain why open source freedoms must be preserved. 
* This guide can be used in windows via a **Virtual Machine** or the venerable **MobaXterm + SSH** connection to a Ubuntu 15.10 PC.
* This guide can be used in **Mac OS X** via a **Virtual Machine** or **iTerm2**.  
* For those in a hurry, this guide can be used as a script, found at https://github.com/superordinate/cyanogenmodscript

Assumptions:

* User is building on x86-64 **Ubuntu 15.10** with a spec => i5/16gb RAM/500gb HDD
* User only has access to this machine through a terminal
* User needn't have used the Cyanogenmod codebase previously

Definitions:

| Terminal Command / flag  | What it does  |
| ------------- | ------------- |
| Breakfast  | The breakfast command gets the build system ready to build for your specific device  (example: breakfast Z00A)|
| Brunch  | The brunch command + the model of your device (example: brunch Z00A)  |
| Lunch | The lunch command can be entered alone, and will show a device menu for you to choose from (example: lunch)|
| -j | The *flag* -j tells repo sync or make how many jobs to run simultaneously |
| repo | Repo is the meta-git-manager used by cyanogenmod & android to handle hundreds of git repositories simultaneously|
| git repository | A git repository is a storage space for software source code that is versioned in a way that facilitiates collaboration|
| cyanogenmod | The leading customized android ROM |
| git | A tool built by Linus Torvalds for managing the source code and source commits for the Linux Kernel |
| Linux | An open source Operating System made by Linus Torvalds in 1991.  He didn't think much would come of it.  Today, nearly all servers on the internet use it, and all android devices use it, too.  |
| compile | Source code must be compiled when software is made for a computer.  Basically, a compiler takes text like this, and turns it into a machine-executable format. |

