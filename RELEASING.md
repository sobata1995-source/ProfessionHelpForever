# Publishing updates

CurseForge project 1792039 uses this GitHub repository and packages tagged commits.
A push webhook notifies the CurseForge packager. Its token belongs in the GitHub
webhook configuration only; never commit it or include it in release notes.

1. Update the addon version and CHANGELOG.txt; run the tests in TESTING.md.
2. Commit and push main.
3. Create and push a new version tag, for example v0.3.9. Never move an old tag.
4. Publish the GitHub release for that same tag.
5. Check CurseForge Builds and Files for successful packaging and approval.

Normal releases use tags without alpha or beta. CurseForge derives the file type
from the tag, not the GitHub pre-release checkbox. A source commit or release-body
edit alone is not a new version. Do not upload a second copy of the ZIP manually.

The .pkgmeta moves the nested source folder to ProfessionHelpForever/ in the ZIP
and excludes tests and screenshots. This preserves the installed addon folder
and SavedVariables so users can update their existing installation.

Documentation: https://support.curseforge.com/support/solutions/articles/9000197281
