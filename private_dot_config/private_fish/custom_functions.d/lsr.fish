function lsr
  ls -aR $1 | awk '
    /:$/&&f{s=$0;f=0}
    /:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
    NF&&f{ print s"/"$0 }' | grep '[^\\.]$' --color=never
end


