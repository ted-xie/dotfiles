# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install nerdcommenter
pushd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdcommenter.git
popd

# Install vim-opencl
pushd ~/.vim/bundle
git clone git://github.com/petRUShka/vim-opencl.git ~/.vim/bundle
popd

# Move vimrc to home directory
cp vimrc ~/.vimrc
