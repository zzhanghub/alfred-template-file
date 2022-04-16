#!/bin/bash 
#######################################
# New file using a designative template
# author  :  zbrl
# site    :  zhaozhang.net
#######################################

if [[ -z "${out_dir}" ]]; then
  out_dir=~"/Desktop/"
fi

extension="${in_path##*.}"
out_path="${out_dir}${filename}.${extension}"

if [[ -f "${out_path}" ]]; then
  echo "${filename} already exists"
else
  cp "$in_path" "${out_path}"
  echo "${filename} created in ${out_dir}"
fi

open "${out_dir}"