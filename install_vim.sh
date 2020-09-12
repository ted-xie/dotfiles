# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Save old vimrc
cp ~/.vimrc ~/.vimrc.bak

# Add preferred indent options
cat << EOT >> vimrc
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

au BufRead,BufNewFile *.md setlocal textwidth=80
EOT

pushd ~/.vim/bundle > /dev/null
# Install nerdcommenter
git clone https://github.com/scrooloose/nerdcommenter.git

# Install vim-opencl
git clone git://github.com/petRUShka/vim-opencl.git

# Install fugitive
git clone https://github.com/tpope/vim-fugitive.git
popd > /dev/null

# Move vimrc to home directory
cp vimrc ~/.vimrc
