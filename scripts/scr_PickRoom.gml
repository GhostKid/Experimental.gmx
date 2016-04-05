var i = 0
var files 

var file = file_find_first("C:\Users\bensy\AppData\Local\Experimental\*.ini",0)
while file != ""
{
    files[i] = file
    file = file_find_next()
    i++
}

file_find_close()

return files[irandom(array_length_1d(files) - 1)]
