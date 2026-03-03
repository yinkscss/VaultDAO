#!/bin/bash

cd frontend

# Create docs folder structure
mkdir -p docs/guides docs/reference

# Move implementation guides
mv I18N_IMPLEMENTATION_GUIDE.md docs/guides/ 2>/dev/null
mv NOTIFICATION_QUICK_START.md docs/guides/ 2>/dev/null
mv MIGRATING_FROM_TOASTS.md docs/guides/ 2>/dev/null
mv VOICE_COMMANDS.md docs/guides/ 2>/dev/null
mv VOICE_EXAMPLES.md docs/guides/ 2>/dev/null

# Move reference docs
mv I18N_QUICK_REFERENCE.md docs/reference/ 2>/dev/null
mv NOTIFICATION_ARCHITECTURE.md docs/reference/ 2>/dev/null
mv VOICE_QUICK_REFERENCE.md docs/reference/ 2>/dev/null

# Delete implementation status (outdated)
rm -f IMPLEMENTATION_STATUS.md

# Keep README.md in root

echo "Frontend docs organized!"
