# Handling Secret Keys and Login Data

Since our repository is public, we must take care not to include sensitive data
(such as user/password combinations for social media sites or API keys)
in our commits.

## Where to Store Keys and Login Data

In PyCharm, run the server with a build configuration that contains environment
variables with the required data.

To set these up, create/edit your run configuration and click the editing symbol
on the `Environment => Environment variables` entry.
Add the necessary environment variables and their corresponding values.

In the code, replace occurrences of your data with `os.getenv('VAR_NAME')`.

## Generating a New Secret Key

If the Django secret key should ever be compromised, generate a new one with the following command:

```
python manage.py shell -c 'from django.core.management import utils; print(utils.get_random_secret_key())'
```
