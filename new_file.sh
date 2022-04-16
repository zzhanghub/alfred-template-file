#!/bin/bash 
#######################################
# New dir in the active finder window 
# author  :  zbrl
# site    :  zhaozhang.net
#######################################

if [[ -z "${out_dir}" ]]; then
  out_dir=~"/Desktop/"
fi

extension="${filename##*.}"
out_path="${out_dir}${filename}"

if [[ -f "${out_path}" ]]; then
  echo "${filename} already exists"
else
  template="./default_templates/${extension}.${extension}" 
  if [[ -f "${template}" ]]; then
    cp  "${template}" "${out_path}"
    echo "${filename} created in ${out_dir}"
  else
    echo 'Failed! Unsupported file type, please add template file first.'
  fi
fi

open "${out_dir}"