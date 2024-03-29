#!/bin/bash 
#######################################
# New dir using a designative template
# author  :  zbrl
# site    :  zhaozhang.net
#######################################

if [[ -z "${out_dir}" ]]; then
  out_dir=${HOME}"/Desktop/"
fi

out_path="${out_dir}${filename}"

if [[ -d "${out_path}" ]]; then
  echo "${filename} already exists"
else
  cp -r "${in_path}" "${out_path}"
  echo "Dir ${filename} created in ${out_dir}"
fi

open "${out_dir}"