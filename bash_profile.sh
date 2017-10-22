# ---------------------------------------------------------------------------
# -----------------------------
# README.md
# -----------------------------

#   Project description
#   ----------------------------------------------------

# A ~/.bash_profile template. This is the configuration i use and continue to iterate upon. 

# Please Use and modify to fit your needs.

#   Install instructions
#   ----------------------------------------------------

# Clone or download the repo: https://github.com/StrattonStudios/.bash_profile-template.git

# Rename .bash_profile-template to .bash_profile 

# Save to $HOME

# Open terminal and enter: source ~/.bash_profile

# Restart terminal

#   License
#   ----------------------------------------------------

# MIT License

# Copyright (c) 2017 Gregory Stratton

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#   Table of Contents
#   ----------------------------------------------------
#
#  Description:  This file holds all my BASH configurations and aliases
#  Sections:
#  1.  Environment Configuration
#  2.  Make Terminal Better (remapping defaults and adding functionality)
#  3.  File and Folder Management
#  4.  Searching
#  5.  Process Management
#  6.  Networking
#  7.  System Operations & Information
#  8.  Web Development
#  9.  Reminders & Notes
# 10.  DATABASE CONFIGURATION
# 11.  DJANGO KEYS
# 12.  SET ENVIROMENT ROLES
# 13.  PYENV CONFIGURATION
# 14.  API KEYS

#  ---------------------------------------------------------------------------
# from django.core.exceptions import ImproperlyConfigured
# def get_env_variable(var_name):
#     """ Get the environment variable or return exception """
#     try:
#         return os.environ[var_name]
#     except KeyError:
#         error_msg = "Set the %s environment variable" % var_name
#         raise ImproperlyConfigured(error_msg)
#
#   -------------------------------
#   1. ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Paths
#   ----------------------------------------------------
export PATH="$PATH:/usr/local/bin/"

#   Set Default Editor (change 'Subl' to the editor of your choice)
#   ------------------------------------------------------------
export EDITOR='subl -w'

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
#    export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
#   export CLICOLOR=1
#   export LSCOLORS=ExFxBxDxCxegedabagacad

#   -----------------------------
#   2. aliases
#   -----------------------------
source "/Users/<Enter Your Username here>/.aliases.sh"  # General aliases and functions defined by me

#Example:
alias activate='cd /Users/<Path/To/Project> && pyenv activate <Enter your virtual environment here> && subl <projectsrc> && cd <projectsrc> && python manage.py runserver'

#   -----------------------------
#   3. GFORM CONFIGURE
#   -----------------------------


#   -----------------------------
#   3. MAKE PY ENV 2 and 3R BETTER
#   -----------------------------
#
#	I use pyenv so these are commented out.
#
# alias virtualenv2='~/Library/Python/2.7/bin/virtualenv'
# alias virtualenv3='~/Library/Python/3.5/bin/virtualenv'

#   -------------------------------
#   13. PYENV CONFIGURATION
#   -------------------------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#
#   -------------------------------
#   10. ENVIORMENT VARIABLES CONFIGURATION
#   -------------------------------
#
# POSTGRESS
#
export "<ENTER DATABASE NAME>"='<ENTER DATABASE PASSWORD HERE>'

#   -------------------------------
#   11. DJANGO PROJECT KEYS
#   -------------------------------

export "<ENTER DJANGO_PROJECT_NAME_KEY>"='<ENTER DJANGO PROJECT KEY HERE>'
#
#   -------------------------------
#   12. SET ENVIROMENT ROLES
#   -------------------------------
export ENV_ROLE=development
#export ENV_ROLE=production

#   -------------------------------
#   14. API KEYS
#   -------------------------------
#
#	EXAMPLE YELP API

#   YELP
#   ----------------------------------------------------
export YELP_CONSUMER_KEY="<ENTER KEY HERE>"
export YELP_CONSUMER_SECRET="<ENTER KEY HERE>"
export YELP_TOKEN="<ENTER KEY HERE>"
export YELP_TOKEN_SECRET="<ENTER KEY HERE>"

#  ---------------------------------------------------------------------------
#   DJANGO SETTINGS.PY CONFIG REFERANCE
#  ---------------------------------------------------------------------------
#   MODIFY SETTINGS.PY AS FOLLOWED:
#  ---------------------------------------------------------------------------

# from django.core.exceptions import ImproperlyConfigured
# def get_env_variable(var_name):
#     """ Get the environment variable or return exception """
#     try:
#         return os.environ[var_name]
#     except KeyError:
#         error_msg = "Set the %s environment variable" % var_name
#         raise ImproperlyConfigured(error_msg)
#
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.postgresql_psycopg2',
#         'NAME': get_env_variable('DATABASE_NAME'),
#         'USER': get_env_variable('DATABASE_USER'),
#         'PASSWORD': get_env_variable('DATABASE_PASSWORD'),
#         'HOST': '',
#         'PORT': '',
#     }
# }

#  ---------------------------------------------------------------------------
#   OTHER CONFIGS I DONT REGULARY USE BUT LEFT FOR REFERENCE
#  ---------------------------------------------------------------------------
#   -------------------------------
#   Java Config
#   -------------------------------

# Create a JAVA_HOME variable, determined dynamically
export JAVA_HOME=$(/usr/libexec/java_home)
# Add that to the global PATH variable
export PATH=${JAVA_HOME}/bin:$PATH

#   -------------------------------
#   Andriod Config
#   -------------------------------

# Set Android_HOME
export ANDROID_HOME=~/Library/Android/sdk/
# Add the Android SDK to the ANDROID_HOME variable
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH

#   -------------------------------
#   Gradle Config
#   -------------------------------
#Set GRADLE_HOME
export GRADLE_HOME=/Library/gradle/gradle-3.2
export PATH=$PATH:$GRADLE_HOME/bin
