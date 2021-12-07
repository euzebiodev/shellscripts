#!/bin/bash
#
# find_libs.sh - Busca um simbolo em um diretorio de bibliotecas
#
# Site:        https://github.com/euzebiodev/shellscripts
# Autor:       Euzebio de Oliveira Amaro da Silva  <euzebiod@gmail.com>
#
# ---------------------------------------------------------------------------------------- 
# Este programa recebe 2 paraemetros, o promeiro é o diretorio onde estão as bibliotecas
# o segundo é o simbolo que se está buscando nas bibliotecas
#

# Exemplos:
#    POS:740926@swposawsazc [~]  $ ./find_libs.sh  catch_all_signals $IST_LIB_DIR
#    /home/SW/baseline/lib/libocatsig-0.7.34.so
#    0000000000000b6b T catch_all_signals
#    /home/SW/baseline/lib/libocatsig-0.7.so
#    0000000000000b6b T catch_all_signals
#    /home/SW/baseline/lib/libocatsig-0.8.0.so
#    0000000000000b6b T catch_all_signals
#    /home/SW/baseline/lib/libocatsig-0.8.so
#    0000000000000b6b T catch_all_signals
#    /home/SW/baseline/lib/libocatsig-0.so
#    0000000000000b6b T catch_all_signals
#    /home/SW/baseline/lib/libocatsig.so
#    0000000000000b6b T catch_all_signals
# ----------------------------------------------------------------------------------------
#

# Histórico
#
#    v1.0 2021-12-07, Euzebio Silva
#       - Versão inicial
#


for i  in  $2/*; do
  #echo "$i"
    saida=$(nm -a "$i" 2> /dev/null| grep "$1" 2> /dev/null)
  if [ $? == 0 ]; then
   echo "$i"
   echo "$saida"
  fi
  

done
