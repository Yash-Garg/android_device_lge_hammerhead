#
# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

add_lunch_combo aosp_hammerhead-userdebug
add_lunch_combo aosp_hammerhead-user
add_lunch_combo aosp_hammerhead-eng

# Toolchain
GCC_7_DIR=prebuilts/gcc/linux-x86/aarch64/aarch64-opt-linux-android
GCC_7_LINK="https://github.com/krasCGQ/aarch64-linux-android/"

if [ ! -d $GCC_7_DIR ]; then

  tput bold
  tput setaf 1
  echo -e "\nWARNING: GCC 7.x / Linaro 7.x not present at $GCC_7_DIR"

  wget -q --spider http://google.com

  if [ $? -eq 0 ]; then
    tput setaf 4
    echo -e "\nInternet connection detected"
    echo -e "\n=======================\nCloning Linaro 7.x ....\n=======================\n"
    git clone -b opt-linaro-7.x $GCC_7_LINK $GCC_7_DIR
  else
    tput setaf 1
    echo -e "You are not connected to the internet! Cannot clone Linaro 7.x automatically\n"
    echo -e "ERROR: Please clone Linaro 7.x from $GCC_7_LINK (opt-linaro-7.x branch) \nto $GCC_7_DIR, before continuing build !!\n"
    echo -e "Or else if it is present elsewhere, update the dir in BoardConfig.mk."
  fi

fi
