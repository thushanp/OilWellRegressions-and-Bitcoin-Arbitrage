# Import the Time Series library
import statsmodels.tsa.stattools as ts

# Import Datetime and the Pandas DataReader
from datetime import datetime
from pandas.io.data import DataReader

# Download the Google OHLCV data from 1/1/2000 to 1/1/2013
goog = [5,8,2,4,7,2,4,6,8,4,5]

# Output the results of the Augmented Dickey-Fuller test for Google
# with a lag order value of 1
ts.adfuller(goog, 1)