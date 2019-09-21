# This is an example application

import pandas as pd
from libvoikko import Voikko

v = Voikko("fi")
print(v.analyze("autossa"))

df1 = pd.read_csv("./data/input.csv")
df2 = pd.read_csv("./data/input.csv")
df1 = df1.append(df2)
df1.to_csv("./data/output.csv")

