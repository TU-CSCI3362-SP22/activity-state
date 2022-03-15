# State Pattern:

![Whiteboard picture of UML diagram describing design goals](https://leo.omnius.zone/nextcloud/s/Pi6ZDNR6ewFRAp9/download/IMG_20220314_154454.jpg)

## Virtual capsule machine with user-uploadable capsules
- Based off of example of gumball machine from Head First Design Patterns (Eric Freeman, Elisabeth Robson)
 - The quarters in the machine are images and the capsules/"gumballs" are images. For every image submitted, a corresponding random image will be dispensed.
- random number of uploaded image duplication in the the capsul machine, randomizing chances of user-uploaded "capsules"
- (Time Permitting) Rarity printout sheet with the rarest files in the machine

Non-refactored codebase - "Bad" codebase will not have an imaged state and only support uploading one capsule to recieve one capsule. Activity will be to seperate the functionality of upload and dispense and add an imaged state, allowing uploading multiple images one at a time, to recieve more corresponfing dispensed images.

### States:
 - No Image to Upload
 - Images to Upload
 - Dispenser Denial ("you need to upload first!")
 - "Capsules" Dispensed (they are just images other people uploaded)

### Relevant Documentation
- [Documentation](https://github.com/zeroflag/Teapot/blob/master/docs/UserGuide.md)
 - Refer to [submitting data with POST](https://github.com/zeroflag/Teapot/blob/master/docs/UserGuide.md#handling-post-and-other-methods) and [submitting images in HTML forms](https://www.w3schools.com/tags/att_input_type_image.asp)
 - [Example Teapot Webserver](https://github.com/zeroflag/Teapot/blob/master/source/Teapot-Library-Example/LibraryServer.class.st)


Izzy Thompson, Katie Browne, [Turner Hall (contact info)](https://gnu3.xyz/)


