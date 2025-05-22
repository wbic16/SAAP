# System as a Phext

The .saap file format is an instance of phext tuned for building software projects.

## Overview

Phext is 11-dimensional plain text. For systems prior to 2025, the saap.sh script is simply a Bash script. The first scroll in saap.sh helps you bootstrap the rest of the Exocortex tools. This proof of concept demonstrates the power of bundling every dependency you'll ever need into one file.

## saap.sh Structure

Phext addresses are internal addresses *within* a file.

* 1.1.1/1.1.1/1.1.1: Core Bootloader - for older systems, there appears to be a lot of junk following the script. Everything in this scroll must remain compatible with Bash. We always terminate the shell from this scroll, to ensure that subsequent scrolls are not accidentally executed.
* 1.1.1/1.1.1/1.1.2:  Scroll Example #1
* 1.1.1/1.1.1/1.1.3:  Scroll Example #2
* 1.1.1/1.1.1/1.2.4:  Section Example
* 1.1.1/1.1.1/3.1.5:  Chapter Example
* 1.1.1/1.1.4/1.2.6:  Book Example
* 1.1.1/1.5.4/2.2.7:  Volume Example
* 1.1.1/2.5.4/1.1.8:  Collection Example
* 1.1.2/2.5.4/1.1.9:  Series Example
* 1.2.2/2.5.4/1.1.10: Shelf Example
* 2.2.2/2.5.4/1.1.11: Library Example

### Core Bootloader

The core bootloader is just a normal Bash script. It verifies that you have a copy of SQ and phext-shell installed. These tools enable you to understand the rest of saap.sh.

## Example Shell Scripts

A series of 10 example shell scripts have been stored as reference points within saap.sh. If you're writing your own phext parser, these waypoints serve as guideposts. You can extract or view them using SQ, Phext Notepad, or Phext Shell.

### Scroll Example 1

### Scroll Example 2

### Section Example

### Chapter Example

### Book Example

### Volume Example

### Collection Example

### Series Example

### Shelf Example

### Library Example

