#https://www.youtube.com/watch?v=RuXs1JOT7nY
#Powershell Quiz & Quirks  // Tobias Weltner


1..3 | Sort-Object
3..1 | Sort-Object

# the -$_ is the minus 1, minus 2, minus 3 and so on...
# so sorted , is the otherway around
1..3 | Sort { -$_ }

#you can check what is the { -$_ } actually by checking parameters in help
#https://github.com/indented-automation/Indented.Profile/tree/master/Indented.Profile/public
# Get-ParameterInfo -Name Sort-Object | Sort-Object -Property Position

<# CommandName       : Sort-Object
Name              : Property
Aliases           : {}
Type              : Object[]
Position          : 0 

get-help Sort-Object -Parameter property
#>
The {$_} is actually the -property { start calculating } . so {-$_} is actually 'reverse order' when
pushing numbers as they get negative 1..10 -> -1..-2..-3...-10.
so when we have
1   ->calculated to -1  |sorted from smallest to biggest | -5 
2   ->calculated to -2  |sorted from smallest to biggest | -4
3   ->calculated to -3  |sorted from smallest to biggest | -3
4   ->calculated to -4  |sorted from smallest to biggest | -2
5   ->calculated to -5  |sorted from smallest to biggest | -1


#this is correct because the openine {  is on the same line as command
1,3,2,5,4,7,6,8,10,9 | Sort-Object {
    -$_
}

#This is not correct because the { -$_ } are on new line, and sort-object is not taking this even
1,3,2,5,4,7,6,8,10,9 | Sort-Object 
{
    -$_
}

'192.168.0.5','1.4.1.15','192.168.0.1','10.0.0.4','192.168.0.20','1.1.1.5'|sort
[PSCustomObject]@{
    Name = Value
}


##Strings
'Hello'
