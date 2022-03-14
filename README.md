# State Pattern:
## Virtual capsule machine with user-uploadable capsule machine sets
- Based off of example of gumball machine from Head First Design Patterns (Eric Freeman, Elisabeth Robson)
- random number of uploaded image duplication in the the capsul machine, randomizing chances of user-uploaded "gumballs"
- Rarity printout sheet with the rarest files in the machine

Non-refactored codebase - icky and gross conditionals. Activity will be to refactor it to no longer have icky and gross conditionals and to put things into classes

Quarters ARE images! for our capsule machine. For every image submitted, a corresponding random image will be dispensed

### States:
 - No Image to Upload
 - Image to Uploads
 - "Capsules" Dispensed (they are just images other people uploaded)

### Relevant Documentation
- [Documentation](https://github.com/zeroflag/Teapot/blob/master/docs/UserGuide.md)
 - Refer to [submitting data with POST](https://github.com/zeroflag/Teapot/blob/master/docs/UserGuide.md#handling-post-and-other-methods) and [submitting images in HTML forms](https://www.w3schools.com/tags/att_input_type_image.asp)
 - [Example Teapot Webserver](https://github.com/zeroflag/Teapot/blob/master/source/Teapot-Library-Example/LibraryServer.class.st)


Izzy Thompson, Katie Browne, Turner Hall


