# make directory and change working directory to it
function mcd {
    if [ $# -ne 1 ]; then
      echo "Usage: mcd <directory-name>"
      return
    fi

    mkdir $1
    cd $1
}

# Always use correct program to extract files
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f $1 ] ; then
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2)   tar xvjf ./$1    ;;
          *.tar.gz)    tar xvzf ./$1    ;;
          *.tar.xz)    tar xvJf ./$1    ;;
          *.lzma)      unlzma ./$1      ;;
          *.bz2)       bunzip2 ./$1     ;;
          *.rar)       unrar x -ad ./$1 ;;
          *.gz)        gunzip ./$1      ;;
          *.tar)       tar xvf ./$1     ;;
          *.tbz2)      tar xvjf ./$1    ;;
          *.tgz)       tar xvzf ./$1    ;;
          *.zip)       unzip ./$1       ;;
          *.Z)         uncompress ./$1  ;;
          *.7z)        7z x ./$1        ;;
          *.xz)        unxz ./$1        ;;
          *.exe)       cabextract ./$1  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "$1 - file does not exist"
    fi
fi
}

# Git functions
function yank {
  if [ $# -ne 1 ]; then
    echo "Usage: yank <username>/<repo>"
    return
  fi

  git clone https://aarohmankad@github.com/$1.git
}

# Get weather
function weather {
  if [ $# -ne 1 ]; then
    echo "Usage: weather <location | zipcode | query>"
    return
  fi

  curl http://wttr.in/$1
}

# easy encryption
function encrypt {
  if [ $# -ne 1 ]; then
    echo "Usage: encrypt <e | d> <input-file> <output-file>"
    return
  fi

  if [ "$1" == "e" ]; then
    echo "Encrypting $1..."
    openssl enc -aes-256-cbc -salt -a -in $1 -out $2 || { echo "File not found"; return 1; }
    echo "Successfully Encrypted"
  elif [ "$1" == "d" ]; then
      echo "Decrypting $1..."
      openssl enc -aes-256-cbc -d -a -in $1 -out $2 || { echo "File not found"; return 1; }
      echo "Successfully Decrypted"
  fi
}

function csv {
    if [ $# -ne 1 ]; then
    echo "Usage: csv <filename>"
    return
  fi

    less $1 | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
}

# Create react native components
function rn-comp {
  if [ $# -ne 1 ]; then
    echo "Usage: rn-comp <component-name>"
    return
  fi

  # Create basic files
  mkdir ./app/components/$1
  > ./app/components/$1/index.js
  > ./app/components/$1/$1.js
  > ./app/components/$1/styles.js;

  # Add boilerplate
  echo "import $1 from \"./$1\";
import styles from \"./styles\";

export { $1, styles };" > ./app/components/$1/index.js;

  echo "import EStyleSheet from \"react-native-extended-stylesheet\";

export default EStyleSheet.create({});" > ./app/components/$1/styles.js

  echo "import React from \"react\";
import propTypes from \"prop-types\";
import { View, Text } from \"react-native\";

import styles from \"./styles\";

const $1 = () => (
  <View>
    <Text>$1 Component</Text>
  </View>
);

$1.propTypes = {};

export default $1;" > ./app/components/$1/$1.js
}

# Boost audio of video file by x dB, can be negative
function boost {
  if [ $# -ne 3 ]; then
    echo "Usage: boost <inputfile> <outputfile> <boostvalue>"
    return
  fi

  ffmpeg -i $1 -vcodec copy -af "volume=$3dB" $2
}
