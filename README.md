# project_dom_tree
Like leaves on the wind

[A data structures, algorithms, file I/O, ruby and regular expression (regex) project from the Viking Code School](http://www.vikingcodeschool.com)

David Watts
Vishal

Regex attribute parse (first entry only)
<\w+\s(.*?)=\s*['|"](.*?)['|"].*>

finds first attribute pair with "="
<.*?(\w*\s*)=\s*['|"](.*?)['|"].*>

matches tag and first attribute pair with "="
 <(\w+).*?(\w*\s*)=\s*['|"](.*?)['|"].*>

adds string with all attribute tags to above expression
<(\w+).*?((\w*\s*)=\s*['|"](.*?)['|"].*)>
