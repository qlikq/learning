##
# Standard format string
# https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings
#https://docs.microsoft.com/en-us/dotnet/api/system.string.format?view=netcore-3.1#remarks-top

$myprice = 3.23432
"Price of this item is {0:C2}" -f $myprice

#Write as Hex
'{0}' -f (300).ToString('x')
#same as
'{0:x}' -f 300

#We can't  do anything like
"Price of this item is {0:C2,en-US}" -f 3.24
#but we do it via the .toString() overload method
(3.24).ToString('c', (Get-Culture en-US))
#$3.24
#or PS5 compatible
(3.24).ToString('c', [System.Globalization.CultureInfo]'en-US')

#first column formatted to right , rest to the left
'{0,5} {1,-5} {2,-5} {3,-5}' -f 1,200,3000,40000 
#    1 200   3000  40000

#PErcentages , the number is multiplied by 100 be default, hence /100 . The P0 since it shows ,XX be default precision
'Vodka has {0:P0} ' -f (40/100)
