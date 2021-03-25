# for git controlling my dotfiles
alias dotfiles='/usr/bin/git --git-dir=/home/gummadi/.dotfiles/ --work-tree=/home/gummadi'

alias google='qutebrowser google.com'

# launching my arch VM
alias arch='qemu-system-x86_64 -enable-kvm -cpu host -smp 2 -boot menu=on -drive file=~/Public/Image.img -m 2G -vga virtio -display gtk,gl=on -full-screen -fsdev local,id=exp1,path=$HOME/Public/shared/,security_model=mapped -device virtio-9p-pci,fsdev=exp1,mount_tag=v_tmp'
