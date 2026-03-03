#!/bin/bash

# Delete redundant CI/PR files
rm -f CI_BUILD_FIX_SUMMARY.md CI_FIXES.md CI_VALIDATION_REPORT.md CI_VERIFICATION_REPORT.md
rm -f FINAL_CI_FIX_SUMMARY.md PR_DETAILS.md PR_UPDATE_COMMENT.md NOTIFICATION_CI_VERIFICATION.md
rm -f PWA_PR_DETAILS.md REALTIME_PR_DETAILS.md CLEANUP_PLAN.md
rm -f IMPLEMENTATION_COMPLETE.md IMPLEMENTATION_COMPLETE.txt UPDATED_PR_DESCRIPTION.txt

# Move implementation summaries to archive
mv *_IMPLEMENTATION*.md docs/implementation-summaries/ 2>/dev/null
mv *_SUMMARY.md docs/implementation-summaries/ 2>/dev/null
mv *_STATUS.md docs/implementation-summaries/ 2>/dev/null

# Move checklists and quickstarts to features
mv *_CHECKLIST.md docs/features/ 2>/dev/null
mv *_QUICKSTART.md docs/features/ 2>/dev/null
mv *_README.md docs/features/ 2>/dev/null
mv QUICK_START_DASHBOARD.md docs/features/ 2>/dev/null

# Keep in root: README.md, CONTRIBUTING.md, LICENSE, PULL_REQUEST_TEMPLATE.md
# Move PULL_REQUEST_TEMPLATE to .github
mkdir -p .github
mv PULL_REQUEST_TEMPLATE.md .github/ 2>/dev/null

echo "Documentation organized!"
