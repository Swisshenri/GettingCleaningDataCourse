# Intro
Go ahead, play around with the editor! Be sure to check out **bold** and *italic* styling, or even [links](https://google.com). You can type the Markdown syntax, use the toolbar, or use shortcuts like `cmd-b` or `ctrl-b`.

## Lists
Unordered lists can be started using the toolbar or by typing `* `, `- `, or `+ `. Ordered lists can be started by typing `1. `.

#### Unordered
* Lists are a piece of cake
* They even auto continue as you type
* A double enter will end them
* Tabs and shift-tabs work too

#### Ordered
1. Numbered lists...
2. ...work too!

## What about images?
![Yes](https://i.imgur.com/sZlktY7.png)
Organizing information with tables
You can build tables to organize information in comments, issues, pull requests, and wikis.

Creating a table
You can create tables with pipes | and hyphens -. Hyphens are used to create each column's header, while pipes separate each column. You must include a blank line before your table in order for it to correctly render.

1.1) "Features.txt": Is a file containing all the mesurement types/variables used. It shows information about the variables used on the feature vector. It has two columns: Number and the description of the feature / variables. There are 561 measurement variables. Eg. of the first 10 rows. ( This is a copy of View () command on the file content)

| 1	| tBodyAcc-mean()-X| | 2	| tBodyAcc-mean()-Y| | 3	| tBodyAcc-mean()-Z| | 4	| tBodyAcc-std()-X | | 5	| tBodyAcc-std()-Y | | 6	| tBodyAcc-std()-Z | | 7	| tBodyAcc-mad()-X | | 8	| tBodyAcc-mad()-Y | | 9	| tBodyAcc-mad()-Z | |10	| tBodyAcc-max()-X | |Showing 1 to 10 of 561 entries, 2 total columns|

| tBodyAcc-mean()-X  | tBodyAcc-mean()-Y | tBodyAcc-mean()-Z |
| ------------- | ------------- |------------- |
| 100 |100  |100  |
| 200 | 200 |200 |
Rendered table

The pipes on either end of the table are optional.

Cells can vary in width and do not need to be perfectly aligned within columns. There must be at least three hyphens in each column of the header row.

| Command | Description |
| --- | --- |
| git status | List all new or modified files |
| git diff | Show file differences that haven't been staged |
Rendered table with varied cell width

Formatting content within your table
You can use formatting such as links, inline code blocks, and text styling within your table:

| Command | Description |
| --- | --- |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |
Rendered table with formatted text

You can align text to the left, right, or center of a column by including colons : to the left, right, or on both sides of the hyphens within the header row.

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| git status   | git status     | git status    |
| git diff     | git diff       | git diff      |
Rendered table with left, center, and right text alignment

To include a pipe | as content within your cell, use a \ before the pipe:

| Name     | Character |
| ---      | ---       |
| Backtick | `         |
| Pipe     | \|        |
Rendered table with an escaped pipe
