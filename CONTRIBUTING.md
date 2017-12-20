# Contributing

Contributions should be made via pull requests. Pull requests will be reviewed
by one or more maintainers and merged when acceptable.

This project is in an early state, making the impact of contributions much
greater than at other stages. In this respect, it is important to consider any
changes or additions for their future impact more so than their current impact.

## Successful Changes

We ask that before contributing, please make the effort to coordinate with the
maintainers of the project before submitting large or high impact PRs. This
will prevent you from doing extra work that may or may not be merged.

PRs that are just submitted without any prior communication will likely be
summarily closed.

While pull requests are the methodology for submitting changes to code, changes
are much more likely to be accepted if they are accompanied by additional
engineering work. While we don't define this explicitly, most of these goals
are accomplished through communication of the design goals and subsequent
solutions. Often times, it helps to first state the problem before presenting
solutions.

Typically, the best methods of accomplishing this are to submit an issue,
stating the problem. This issue can include a problem statement and a
checklist with requirements. If solutions are proposed, alternatives should be
listed and eliminated. Even if the criteria for elimination of a solution is
frivolous, say so.

## Commit Messages

There are times for one line commit messages and this is not one of them.
Commit messages should follow best practices, including explaining the context
of the problem and how it was solved, including in caveats or follow up changes
required. They should tell the story of the change and provide readers
understanding of what led to it.

If you're lost about what this even means, please see [How to Write a Git
Commit Message](http://chris.beams.io/posts/git-commit/) for a start.

In practice, the best approach to maintaining a nice commit message is to
leverage a `git add -p` and `git commit --amend` to formulate a solid
changeset. This allows one to piece together a change, as information becomes
available.

If you squash a series of commits, don't just submit that. Re-write the commit
message, as if the series of commits was a single stroke of brilliance.

That said, there is no requirement to have a single commit for a PR, as long as
each commit tells the story. For example, if there is a feature that requires a
package, it might make sense to have the package in a separate commit then have
a subsequent commit that uses it.

Remember, you're telling part of the story with the commit message. Don't make
your chapter weird.

## Sign your work

The sign-off is a simple line at the end of the explanation for the patch. Your
signature certifies that you wrote the patch or otherwise have the right to pass
it on as an open-source patch. The rules are pretty simple: if you can certify
the below (from [developercertificate.org](http://developercertificate.org/)):

```
Developer Certificate of Origin
Version 1.1

Copyright (C) 2004, 2006 The Linux Foundation and its contributors.
660 York Street, Suite 102,
San Francisco, CA 94110 USA

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.

Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
```

Then you just add a line to every git commit message:

    Signed-off-by: Joe Smith <joe.smith@email.com>

Use your real name (sorry, no pseudonyms or anonymous contributions.)

If you set your `user.name` and `user.email` git configs, you can sign your
commit automatically with `git commit -s`.


## Coding Style (Go)

The usual Go style, enforced by `gofmt`, should be used. Additionally, the [Go
Code Review](https://github.com/golang/go/wiki/CodeReviewComments) document
contains a few common errors to be mindful of.

## Reviews

Before your Pull Requests are merged into the main code base, they will be
reviewed. Anybody can review any Pull Request and leave feedback (in fact, it
is encouraged).

We use an 'acknowledge' system for people to note if they agree, or disagree,
with a Pull Request. We utilise some automated systems that can spot common
acknowledge patterns, which include placing any of these at the beginning of a
comment line:

 - LGTM
 - lgtm
 - +1
 - Approve

<!---
## Issue tracking

To report a bug that is not already documented, please [open an issue in
github](https://github.com/kata-containers/proxy/issues/new) so we all get
visibility on the problem and work toward resolution.

To help developers resolve your issue, please include the output
from the following command in the issue (the output is designed to be pasted
into the issue, but alternatively you can attach it as a file):

```bash
$ cc-collect-data.sh
```

Note:

Before attaching the output of this command to an issue, you must review it to
ensure you are happy for such information to be publically visible.
--->

## Closing issues

The preferred way to close issues is by adding the `Fixes` keyword to your commit message.  
Our tooling requires a `Fixes` line in at least one commit message per PR:

```
    pod: Remove token from Cmd structure

    The token and pid data will be hold by the new Process structure and
    they are related to a container.

    Fixes #123

    Signed-off-by: Sebastien Boeuf <sebastien.boeuf@intel.com>
```

Github will then automatically close that issue when parsing the
[commit message](https://help.github.com/articles/closing-issues-via-commit-messages/).



## Contact

The Kata Containers community can be reached through its Slack channel, IRC channel and a
dedicated mailing list:

* Slack: [general](http://bit.ly/KataSlack)
* IRC: `#kata-dev @ freenode.net`.
* Mailing list: [Subscribe](http://lists.katacontainers.io/).
