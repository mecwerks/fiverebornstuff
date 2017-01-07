dlc.rpf was downloaded from https://www.gta5-mods.com/vehicles/2015-nissan-gt-r-35-nismo-add-on-replace-animated

1. Download OpenIV
2. create working folder (ex: `resources/addonr35`, all further work will be done inside this folder)
3. create `stream/` folder
4. create `__resource.lua` file
5. open `dlc.rpf` in OpenIV
6. extract `data/` or `common/data/` folder from dlc.rpf to `addonr35/`
7. extract `context.xml` to `addonr35/`
8. go into `x64/`
9a. [Optional] if there is a folder here called `data/` go into it then into `lang/`
9b. [Optional] go into your desired language (ex: `americandlc.rpf`)
9c. [Optional] right-click `global.gx2` and click `Export to openformat text`
9d. [NOTE] this file contains entries that we will use later
10. go into `x64/vehicles.rpf`
11a. copy all files from here into `addonr35/stream/`
11b. [NOTE] There may be multiple folders and other .rpf files in here, go into each and copy over the plain files into `addonr35/stream/`
12. You can now close `dlc.rpf` and OpenIV
13a. Open up `__resource.lua` and `context.xml`
13b. [NOTE] `context.xml` is what you will use as reference for adding the correct metadata files to load
14. in `__resource.lua` add this to the top of the file `resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'`
15a. looking at `context.xml`, add in the data_files listed, it should show a filename, and right below it a type. Below is a list of types/files you can ignore
    RPF/.rpf
    TEXTFILE_METAFILE/dlctext.meta
15b. at the very bottom of `context.xml` will be another list of just the file names. the data_file entries in `__resource.lua` needs to be in the same order
16. in `__resource.lua` you need to also add an array of these metal files. For each data_file, add the filename/path into `files {}`
17. [NOTE] the file paths need to be changed if you renamed the `data/` folder that was copied over!
18. if there was no global.g2a/.oxt file you're done :)
19. now some coding :D create a new file called `vehicle_names.lua`
20. copy/paste the code from my `vehicle_names.lua` and write in entries from `global.oxt` like i have (make sure to delete or replace the ones i had in by default)
21. add this line into `__resource.lua`: `client_script 'vehicle_names.lua'`
22. you can now delete `context.xml` and `global.oxt`
23. add resource to `citmp-server.yml` (ex: `- addonr35`)
24. Profit :)
