# adb-bash-scripts

Some bash scripts I wrote to make dealing with Android easier.

## Requirements

These are readily available in Linux package repositories.
1. [adb](https://developer.android.com/studio/command-line/adb)
2. [awk](https://www.gnu.org/software/gawk/)
3. [grep](https://www.gnu.org/software/grep/)
4. [xclip](https://github.com/astrand/xclip)

## Usage

Simply make the scripts executable, using
`chmod +x script.sh`
You can place it wherever you like. If the script is in the current working directory, run it using:
`./script.sh`

## The scripts

1. [pull-apks](./pull-apks.sh): This script pulls all 3rd party apps that are installed on your device into `apks` directory.
2. [install-packages](./install-packages.sh): This script will install all the apps inside the `apks` directory.
3. [myapps](./myapps.sh): This script has one simple purpose. It will get the package names of all 3rd party apps in your device, and create an `.html` file containing these names along with the Play Store URLs of the apps.
4. [uninstall-packages](./uninstall-packages.sh): This script will uninstall all packages listed inside a file, which is given to the script as an argument. Example usage:
`./uninstall-packages.sh personal-list.txt`. This uninstalls all packages listed inside personal-list.txt.
5. [find-package](./find-package.sh): This simple one liner is useful for quickly finding the package name of an application, and then copies it to the clipboard. Example usage:
`./find-package.sh firefox` copies `org.mozilla.firefox` to the clipboard.

## Motivation

Recently, I had to factory reset my phone but I saw that I had installed a lot of applications over time. Manually installing them again was a tedious task. So I wrote these scripts to do that for me. 😄
I used [pull-apks](./pull-apks.sh) to pull apks onto my computer. Then, I reset my phone. After that, I used [install-packages](./install-packages.sh) to install all the apks. I also used [uninstall-packages](./uninstall-packages.sh) to get rid of some unwanted apps.

