from subprocess import check_output


def get_pass():
    password = check_output("pass website/google.com", shell=True)
    return password


gmail_prefix = "[Gmail]/"


def to_local_name(name):
    if name.startswith(gmail_prefix):
        name = name.replace(gmail_prefix, "")
    return name.replace(" ", "_")


def to_remote_name(name):
    gmail_defaults = ["All Mail", "Bin", "Drafts", "Important",
                      "Sent Mail", "Spam", "Starred"]
    if name.replace("_", " ") in gmail_defaults:
        name = gmail_prefix + name
    return name.replace("_", " ")
