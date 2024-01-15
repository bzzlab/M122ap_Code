<div class="jumbotron">
    <h2>Tar Command Tutorial with 9 Practical Examples</h2><img class="icon" src="themen/img/terminal.png">
</div>

#### Contents
<!-- MarkdownTOC -->

- [Introduction](#introduction)
- [1. Creating an archive using tar command](#1-creating-an-archive-using-tar-command)
- [2. Extracting \(untar\) an archive](#2-extracting-untar-an-archive)
- [3. Listing an archive](#3-listing-an-archive)
- [4. Extract a single file from tar, tar.gz file](#4-extract-a-single-file-from-tar-targz-file)
- [5. Extract a single directory from tar, tar.gz file](#5-extract-a-single-directory-from-tar-targz-file)
- [6. Extract group of files from tar, tar.gz, tar.bz2 archives using regular expression](#6-extract-group-of-files-from-tar-targz-tarbz2-archives-using-regular-expression)
- [7. Adding a file or directory to an existing archive using option -r](#7-adding-a-file-or-directory-to-an-existing-archive-using-option--r)
- [8. Verify files available in tar using option -W](#8-verify-files-available-in-tar-using-option--w)
- [9. Estimate the tar archive size](#9-estimate-the-tar-archive-size)

<!-- /MarkdownTOC -->


<a id="introduction"></a>
### Introduction
On Unix platform, **tar command** is the primary archiving utility. Understanding various tar command options will help you master the archive file manipulation.

In this article, let us review various **tar examples** including how to create tar archives (with gzip and bzip compression), extract a single file or directory, view tar archive contents, validate the integrity of tar archives, finding out the difference between tar archive and file system, estimate the size of the tar archives before creating it etc.,

<a id="1-creating-an-archive-using-tar-command"></a>
### 1. Creating an archive using tar command

#### Creating an uncompressed tar archive

This is the basic command to create a tar archive.

```
$ tar cvf archive_name.tar dirname/
```

In the above command:

- c – create a new archive
- v – verbosely list files which are processed.
- f – following is the archive file name

#### Creating a tar gzipped archive

The above tar cvf option, does not provide any compression. To use a gzip compression on the tar archive, use the z option as shown below.

```
$ tar cvzf archive_name.tar.gz dirname/
```

- z – filter the archive through gzip

**Note:** .tgz is same as .tar.gz

**Note:** I like to keep the ‘cvf’ (or tvf, or xvf) option unchanged for all archive creation (or view, or extract) and add additional option at the end, which is easier to remember. i.e cvf for archive creation, cvfz for compressed gzip archive creation, cvfj for compressed bzip2 archive creation etc., For this method to work properly, don’t give – in front of the options.

<a id="2-extracting-untar-an-archive"></a>
### 2. Extracting (untar) an archive

#### Extract a \*.tar file using option xvf

Extract a tar file using option x as shown below:

```
$ tar xvf archive_name.tar
```

- x – extract files from archive

#### Extract a gzipped tar archive ( \*.tar.gz ) using option xvzf

Use the option z for uncompressing a gzip tar archive.

```
$ tar xvfz archive_name.tar.gz
```

#### Extracting a bzipped tar archive ( \*.tar.bz2 ) using option xvjf

Use the option j for uncompressing a bzip2 tar archive.

```
$ tar xvfj archive_name.tar.bz2
```

**Note:** In all the above commands v is optional, which lists the file being processed.

<a id="3-listing-an-archive"></a>
### 3. Listing an archive

#### View the tar archive file content without extracting using option tvf

You can view the \*.tar file content before extracting as shown below.

```
$ tar tvf archive_name.tar
```

#### View the \*.tar.gz file content without extracting using option tvzf

You can view the \*.tar.gz file content before extracting as shown below.

```
$ tar tvfz archive_name.tar.gz
```

<a id="4-extract-a-single-file-from-tar-targz-file"></a>
### 4. Extract a single file from tar, tar.gz file

To extract a specific file from a tar archive, specify the file name at the end of the tar xvf command as shown below. The following command extracts only a specific file from a large tar file.

```
$ tar xvf archive_file.tar /path/to/file
```

Use the relevant option z or j according to the compression method gzip or bzip2 respectively as shown below.

```
$ tar xvfz archive_file.tar.gz /path/to/file
```

<a id="5-extract-a-single-directory-from-tar-targz-file"></a>
### 5. Extract a single directory from tar, tar.gz file

To extract a single directory (along with it’s subdirectory and files) from a tar archive, specify the directory name at the end of the tar xvf command as shown below. The following extracts only a specific directory from a large tar file.

```
$ tar xvf archive_file.tar /path/to/dir/
```

To extract multiple directories from a tar archive, specify those individual directory names at the end of the tar xvf command as shown below.

```
$ tar xvf archive_file.tar /path/to/dir1/ /path/to/dir2/
```

Use the relevant option z or j according to the compression method gzip or bzip2 respectively as shown below.

```
$ tar xvfz archive_file.tar.gz /path/to/dir/
```

<a id="6-extract-group-of-files-from-tar-targz-tarbz2-archives-using-regular-expression"></a>
### 6. Extract group of files from tar, tar.gz, tar.bz2 archives using regular expression

You can specify a regex, to extract files matching a specified pattern. For example, following tar command extracts all the files with pl extension.

```
$ tar xvf archive_file.tar --wildcards '*.pl'
```

Options explanation:

- –wildcards \*.pl – files with pl extension

<a id="7-adding-a-file-or-directory-to-an-existing-archive-using-option--r"></a>
### 7. Adding a file or directory to an existing archive using option -r

You can add additional files to an existing tar archive as shown below. For example, to append a file to \*.tar file do the following:

```
$ tar rvf archive_name.tar newfile
```

This newfile will be added to the existing archive_name.tar. Adding a directory to the tar is also similar,

```
$ tar rvf archive_name.tar newdir/
```

**Note:** You cannot add file or directory to a compressed archive. If you try to do so, you will get “tar: Cannot update compressed archives” error as shown below.

```
$ tar rvfz archive_name.tgz newfile
tar: Cannot update compressed archives
Try `tar --help' or `tar --usage' for more information.
```

<a id="8-verify-files-available-in-tar-using-option--w"></a>
### 8. Verify files available in tar using option -W

As part of creating a tar file, you can verify the archive file that got created using the option W as shown below.

```
$ tar cvfW file_name.tar dir/
```

If you are planning to remove a directory/file from an archive file or from the file system, you might want to verify the archive file before doing it as shown below.

```
$ tar tvfW file_name.tar
Verify 1/file1
1/file1: Mod time differs
1/file1: Size differs
Verify 1/file2
Verify 1/file3
```

If an output line starts with Verify, and there is no differs line then the file/directory is Ok. If not, you should investigate the issue.

**Note:** for a compressed archive file ( \*.tar.gz, \*.tar.bz2 ) you cannot do the verification.

Finding the difference between an archive and file system can be done even for a compressed archive. It also shows the same output as above excluding the lines with Verify.

Finding the difference between gzip archive file and file system

```
$ tar dfz file_name.tgz
```

Finding the difference between bzip2 archive file and file system

```
$ tar dfj file_name.tar.bz2
```

<a id="9-estimate-the-tar-archive-size"></a>
### 9. Estimate the tar archive size

The following command, estimates the tar file size ( in KB ) before you create the tar file.

```
$ tar -cf - /directory/to/archive/ | wc -c
20480
```

The following command, estimates the compressed tar file size ( in KB ) before you create the tar.gz, tar.bz2 files.

```
$ tar -czf - /directory/to/archive/ | wc -c
508

$ tar -cjf - /directory/to/archive/ | wc -c
428
```

<small>Quelle: https://www.thegeekstuff.com/2010/04/unix-tar-command-examples/</small>