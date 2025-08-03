import os
import shutil

# Define folders and extensions
sort_rules = {
    '.vcb': 'vcb',
    '': 'out',
    '.v': 'verilog'
}

# Get current directory
current_dir = os.getcwd()

# Iterate over items in current directory
for filename in os.listdir(current_dir):
    filepath = os.path.join(current_dir, filename)

    # Skip if it's a directory
    if os.path.isdir(filepath):
        continue

    # Get file extension
    _, ext = os.path.splitext(filename)

    # If the extension matches our rules
    if ext in sort_rules:
        target_folder = os.path.join(current_dir, sort_rules[ext])

        # Create folder if it doesn't exist
        os.makedirs(target_folder, exist_ok=True)

        # Move the file
        shutil.move(filepath, os.path.join(target_folder, filename))

print("Files sorted successfully.")
