import os
import subprocess
import ssl

# Disable SSL verification globally
ssl._create_default_https_context = ssl._create_unverified_context

# Ensure environment variables are set
os.environ["DATABRICKS_INSECURE"] = "true"
os.environ["xvPYTHONHTTPSVERIFY"] = "0"

# Run DBT debug first
subprocess.run(["dbt", "debug"])

# Then run DBT models (bronze → silver → gold)
subprocess.run(["dbt", "run"])
