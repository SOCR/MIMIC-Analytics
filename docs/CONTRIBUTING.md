# CONTRIBUTING

While the nominal purpose of this repository is the analysis of the MIMIC-III dataset, its secondary function is to provide a space to learn and teach data science techniques. As a part of this goal, we aim to practice `git` procedures when contributing to this repository.

In this spirit, I encourage SOCR members to follow a more "formal" pull request process when adding to the repository. This includes making all changes via pull request, then reviewing the aggregated requests at the SOCR weekly team meetings.

## Making a pull request

### 1. Create an issue  
1. Create the issue via the [Issues](https://github.com/bccummings/acq-tools/issues) tab.
2. Create a descriptive title, and any comments you need to describe the issue.
3. If applicable, assign a corresponding label. These include the `bug` label, to be used if something breaks unexpectedly. If it's something minor that isn't impacting your work, use the `minor-bug` label. Similarly, `feature-request` and `question` flags may be used for desired new features, or just to ask a question respectively. More labels may be added in the future - they all have a short description, so pick the one that feels right.

### 2. Make a branch or fork
1. Make a branch. This can be done via: `git checkout -b <branch-name>`. Alternatively, you can use `git fetch`, then checkout an existing branch made by someone else.
2. Make the requisite changes.  
3. **IMPORTANT**: When committing your changes, add the corresponding issue number somewhere in the commit message (e.g. for Issue 3, the commit message should be something like `#3 Add steps to CONTRIBUTING.md`. The `#3` symbol automagically associates the commit with the issue.  
4. Test your code to make sure everything works as intended.
5. Push the branch via `git push origin <branch-name>`.

### 3. Make a pull request
1. Test your code again (and again!).
2. Make a pull request, typically via the online interface.
3. Wait for the pull request to be reviewed at the next weekly meeting.


## Concluding thoughts

Please reach out [Brandon Cummings](https://github.com/bccummings) ([mailto:cummingb@med.umich.edu](cummingb@med.umich.edu)) with any questions or concerns. Thank you for contributing!
