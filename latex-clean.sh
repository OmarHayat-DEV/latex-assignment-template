#!/bin/bash

# Remove files ending with .log, .ist, or .glo in the current directory.

# Check if the current directory exists
if [ ! -d "." ]; then
  echo "Error: Current directory does not exist."
  exit 1
fi

# Use find to locate and remove the files
find . -type f \( -name "*.log" -o -name "*.ist" -o -name "*.glo" -o -name "*.aux" -o -name "*.bbl" -o -name "*.blg"  -o -name "*.fdb_latexmk"  -o -name "*.fls" -o -name "*.glo-abr"  -o -name "*.lof"  -o -name "*.lot"  -o -name "*.nomenclature-glo"  -o -name "*.out"  -o -name "*.symbols-glo"  -o -name "*.synctex.gz"  -o -name "*.toc"  -o -name "*.glg"  -o -name "*.glg-abr"  -o -name "*.gls*"  -o -name "*.nomenclature*"  -o -name "*.symbols*"  \) -delete

# Check the exit status of find
if [ $? -eq 0 ]; then
  echo "Auxiliary removed successfully."
else
  echo "Error: Failed to remove files."
  exit 1
fi

exit 0 # Exit with success code.
