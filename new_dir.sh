#!/bin/bash 
#######################################
# New file in the active finder window 
# author  :  zbrl
# site    :  zhaozhang.net
#######################################

if [[ -z "${out_dir}" ]]; then
  out_dir=~"/Desktop/"
fi

out_path="${out_dir}${filename}"

if [[ -d "${out_path}" ]]; then
  echo "${filename} already exists"
else
  mkdir  "${out_path}"
  echo "${filename} created in ${out_dir}"
fi

open "${out_dir}"