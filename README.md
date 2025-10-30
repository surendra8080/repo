# repo
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
np.random.seed(42)
data = pd.DataFrame({'category':np.random.choice(['A','B','C','D'],size=100),
                     'value1':np.random.randn(100),
                     'value2':np.random.randn(100)*10+50,
                     'Time':pd.date_range(start='2023-01-01',periods=100,freq='D')})
print(data)
plt.figure(figsize=(8,5))
sns.scatterplot(data=data,x='value1',y='value2',
                hue='category',style='category',s=100)
plt.title('Scatter Plot Exaple')
plt.show()
palette={'A':'red','B':'blue','C':'orange','D':'yellow'}
markers={'A':'H','B':'P','C':'D','D':'*'}
sns.scatterplot(data=data,x='value1',y='value2',
                 hue='category',style='category',palette=palette,
                 markers=markers,s=100)
plt.title("Scaatter plot Example")
plt.xlabel('value 1 (x-axis)')
plt.ylabel('value 2 (y-axis)')
plt.show()
