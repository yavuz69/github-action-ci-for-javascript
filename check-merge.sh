# !/bin/bash

# Hedef branch'ın adını alın
target_branch=$1

# Kaynak branch'ın adını alın
source_branch=$2

# Ana branch'ın adını ayarlayın (bu örnekte main)
main_branch="main"

# Eğer main branch'e doğrudan merge işlemi yapılıyorsa kontrol et
if [ "$target_branch" == "$main_branch" ]; then
  # Eğer kaynak branch staging değilse uyarı ver
  if [ "$source_branch" != "staging" ]; then
    echo "Main branch'e doğrudan push yapamazsınız. Lütfen staging branch'inden Pull Request oluşturun."
    exit 1
  fi
fi

# Başka kontroller veya işlemler ekleyebilirsiniz

# Eğer kontrol başarılıysa, exit 0 döndürün
exit 0
