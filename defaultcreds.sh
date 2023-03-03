#!/bin/bash

# Set the new password hash that you want to use
# you guys can have the hash slay osint warriors
NEW_PASSWORD_HASH="$6$CF2jmDJ2E1AtzZPp$ZeapZZ/CgQFJD6wCqLdQwxeQAY7BeW26y3ByBZ0ESwMMrQmb3GhGkR8.HizMjF4i8jnrIQ1/EsiQHRABtGvVr0"

# List of usernames to change the password hash for
USERNAMES=(
  "sylvia"
  "chasek"
  "eleanor"
  "pablo"
  "kayla"
  "wendell"
  "jake"
  "karen"
  "bradley"
  "raymond"
  "howard"
  "suzanne"
  "louise"
  "glenn"
  "lynn"
  "enzo"
  "peggy"
  "margaret"
  "melvin"
)

# Loop through the list of usernames and change their password hash
for username in "${USERNAMES[@]}"; do
  echo "Changing password hash for user $username"
  usermod -p "$NEW_PASSWORD_HASH" "$username"
done
