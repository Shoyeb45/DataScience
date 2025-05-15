# <u>Preliminary Tests</u>


## Relative ordering test for trend of time series(Kendall's Tau Test for Trend Detection)

### **1. Basic Concept**

Kendall's Tau (τ) is a non-parametric statistic used to detect **monotonic trends** in time series data. It compares observations based on their relative ordering:

- **Concordant Pair**: For two points $(i, x_i)$ and $(j, x_j)$ where $i < j$, the pair is concordant if $x_i < x_j$.
- **Discordant Pair**: For two points $(i, x_i)$ and $(j, x_j)$ where $i < j$, the pair is discordant if $x_i > x_j$.

**Total pairs**: For $n$ observations, there are $\binom{n}{2} = \frac{n(n-1)}{2}$ pairs.

---

### **2. Kendall's Tau Formula**

$$
\tau = \frac{C - D}{C + D}
$$

- $C$: Number of concordant pairs
- $D$: Number of discordant pairs

**Interpretation**:

- $\tau = 1$: Perfect increasing trend
- $\tau = -1$: Perfect decreasing trend
- $\tau = 0$: No trend

---

### **3. Hypothesis Testing**

**Null Hypothesis ($H_0$)**: No trend ($\tau = 0$).
**Alternative Hypothesis ($H_1$)**: Presence of a trend ($\tau \ne 0$).

---

### **4. Derivation of Test Statistic**

#### **Step 1: Expectation of $\tau$ Under $H_0$**

Under $H_0$, the ranks are randomly ordered. The expected number of concordant and discordant pairs is equal:

$$
\mathbb{E}[C] = \mathbb{E}[D] = \frac{\binom{n}{2}}{2}
$$

Thus, $\mathbb{E}[\tau] = 0$.

#### **Step 2: Variance of τ Under $H_0$**

The variance of τ is derived using combinatorial arguments. For large $n$:

$$
\text{Var}(\tau) = \frac{2(2n + 5)}{9n(n - 1)}
$$

**Derivation**:

1. Let $S = C - D$. Under $H_0$, $\mathbb{E}[S] = 0$.
2. The variance of $S$ is given by:

$$
\text{Var}(S) = \frac{n(n-1)(2n + 5)}{18}
$$
3. Since $\tau = \frac{2S}{n(n-1)}$, the variance of τ becomes:

$$
\text{Var}(\tau) = \frac{4 \cdot \text{Var}(S)}{[n(n-1)]^2} = \frac{2(2n + 5)}{9n(n - 1)}
$$

Hence, 
$$
\tau \sim \mathcal{N}(0, \frac{2(2n + 5)}{9n(n - 1)})
$$
#### **Step 3: Standard Error and Z-Score**

For large $n$ ($n \geq 10$), $τ$ approximately follows a normal distribution:

$$
Z = \frac{\tau}{\sqrt{\text{Var}(\tau)}} \sim \mathcal{N}(0, 1)
$$

Substituting $\text{Var}(\tau)$:

$$
Z = \tau \cdot \sqrt{\frac{9n(n - 1)}{2(2n + 5)}}
$$

---

### **5. Decision Rule**

Reject $H_0$ if $|Z| > z_{\alpha/2}$, where $z_{\alpha/2}$ is the critical value from the standard normal distribution at significance level $\alpha$.

---

### **6. Example Calculation**

**Data**:

$$
\begin{array}{|c|c|c|c|c|c|c|c|c|c|c|c|c|}
\hline
t & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & 11 & 12 \\
\hline
x_t & 1 & 2 & 4 & 3 & 6 & 5 & 8 & 7 & 10 & 9 & 12 & 11 \\
\hline
\end{array}
$$

**Steps**:

1. **Count Concordant ($C$) and Discordant ($D$) Pairs**:
    - Total pairs: $\binom{12}{2} = 66$
    - $C = 61$, $D = 5$
2. **Compute τ**:

$$
\tau = \frac{61 - 5}{61 + 5} = \frac{56}{66} \approx 0.85
$$
3. **Compute Z-Score**:

$$
Z = 0.85 \cdot \sqrt{\frac{9 \cdot 12 \cdot 11}{2(2 \cdot 12 + 5)}} = 0.85 \cdot \sqrt{\frac{1188}{58}} \approx 3.85
$$
4. **Conclusion**: At $\alpha = 0.05$, $|Z| = 3.85 > 1.96$ → Reject $H_0$. **Significant increasing trend**.

---



## Friedman's Test for Seasonality 



### **1. Purpose and Context**

- **Goal:** Test whether there is significant seasonality in a time series.
- **Null Hypothesis ($H_0$):** No seasonality (all seasons behave similarly across years).
- **Alternative Hypothesis ($H_1$):** Seasonality exists (some seasons consistently differ across years).

---

### **2. The Friedman's Test: Stepwise Procedure**

#### **Step 1: Remove Trend**

- **Why?** Trend can mask or exaggerate seasonal effects.
- **How?** Detrend the series using moving averages or other detrending methods.


#### **Step 2: Rank Observations Within Each Year**

- For each year (or block), rank the seasonal values (e.g., months) from smallest to largest.
- **Notation:**
    - $r$ = number of seasons (e.g., months = 12, quarters = 4)
    - $c$ = number of years (blocks)
    - $M_{ij}$ = rank of the $i$th season in the $j$th year
- **Example Table (for 4 seasons, 3 years):**


| Season | 2019 | 2020 | 2021 |
| :-- | :-- | :-- | :-- |
| 1 | 10 | 12 | 11 |
| 2 | 15 | 16 | 14 |
| 3 | 25 | 22 | 24 |
| 4 | 30 | 32 | 31 |

After ranking within each year:


| Season | 2019 | 2020 | 2021 | $M_i$ (Rank Sum) |
| :-- | :-- | :-- | :-- | :-- |
| 1 | 1 | 1 | 1 | 3 |
| 2 | 2 | 2 | 2 | 6 |
| 3 | 3 | 3 | 3 | 9 |
| 4 | 4 | 4 | 4 | 12 |


#### **Step 3: Calculate Rank Sums for Each Season**

- For each season $i$, sum the ranks across all years:

$$
M_i = \sum_{j=1}^{c} M_{ij}
$$


#### **Step 4: Compute Friedman's Test Statistic**

##### **Derivation of the Test Statistic**

- **Intuition:** If there is no seasonality, all seasons should have similar rank sums.
- **Under $H_0$:** The expected rank sum for each season is

$$
E[M_i] = c \cdot \frac{r+1}{2}
$$

since the average rank in each year is $(r+1)/2$.
- **Test Statistic:**

$$
X = \frac{12 \sum_{i=1}^{r} \left[ M_i - c(r+1)/2 \right]^2}{c r (r+1)}
$$
    - Numerator: Measures how much each season's rank sum deviates from the expected value under $H_0$.
    - Denominator: Standardizes the statistic for sample size and number of seasons.


##### **Distribution Under $H_0$**

- For large $c$ (number of years), $X$ approximately follows a chi-squared distribution with $r-1$ degrees of freedom:

$$
X \sim \chi_{r-1}^2
$$

---

##### Decision Rule

Reject H0 if $ X \gt \chi_{r-1}^2 $

### **5. Step-by-Step Example**

Suppose $c = 3$ (years), $r = 4$ (seasons), and the rank sums are $M_1 = 3$, $M_2 = 6$, $M_3 = 9$, $M_4 = 12$.

- **Expected rank sum:**

$$
E[M_i] = 3 \times \frac{4+1}{2} = 3 \times 2.5 = 7.5
$$
- **Compute the test statistic:**

$$
X = \frac{12 \sum_{i=1}^{4} (M_i - 7.5)^2}{3 \times 4 \times 5}
$$

$$
= \frac{12 \left[ (3-7.5)^2 + (6-7.5)^2 + (9-7.5)^2 + (12-7.5)^2 \right]}{60}
$$

$$
= \frac{12 \left[ 20.25 + 2.25 + 2.25 + 20.25 \right]}{60}
$$

$$
= \frac{12 \times 45}{60}
$$

$$
= \frac{540}{60} = 9
$$
- **Degrees of freedom:** $r-1 = 3$
- **Critical value at $\alpha = 0.05$:** $\chi^2_{3, 0.05} \approx 7.81$
- **Decision:** $X = 9 > 7.81$ ⇒ Reject $H_0$. There is significant seasonality.

---

### **6. Interpretation and Properties**

- **If no seasonality:** Rank sums $M_i$ will be close to expected value; $X$ will be small.
- **If seasonality exists:** Some $M_i$ will be much higher or lower; $X$ will be large.
- **Nonparametric:** Does not require normality or equal variances.
- **Robust:** Works with ordinal or continuous data, and is resistant to outliers.


### **8. R Code Example**

```r
# Suppose 'data' is a matrix with rows = years, columns = seasons
friedman.test(data)
```

- This will automatically compute the test statistic and p-value.

---


##  Turning Point Test for Randomness


### **1. Hypothesis Setup**

- **Null Hypothesis ($H_0$):** The time series is random (independent and identically distributed, i.i.d.).
- **Alternative Hypothesis ($H_1$):** The time series is not random (exhibits trends, cycles, or other non-random patterns).

---

### **2. Definition of a Turning Point**

A **turning point** at time $t$ occurs if:

1. **Peak:** $X_{t-1} < X_t$ and $X_t > X_{t+1}$
2. **Trough:** $X_{t-1} > X_t$ and $X_t < X_{t+1}$

**Example:**
For the series $[1, 3, 2, 4, 5]$:

- At $t=2$: $1 < 3 > 2$ ⇒ **Peak**
- At $t=3$: $3 > 2 < 4$ ⇒ **Trough**
Total turning points: 2

---

### **3. Test Statistic**

#### **3.1. Number of Turning Points**

Let $U_i$ be an indicator variable:

$$
U_i = 
\begin{cases} 
1 & \text{if a turning point occurs at time } i, \\
0 & \text{otherwise}.
\end{cases}
$$

Total turning points:

$$
p = \sum_{i=2}^{n-1} U_i
$$

#### **3.2. Expectation of $p$ Under $H_0$**

For three consecutive points $X_{t-1}, X_t, X_{t+1}$, there are $6$ possible orderings (assuming continuity to avoid ties).

- **Turning points occur in 4/6 cases** (e.g., 1-3-2, 2-3-1, 2-1-3, 3-1-2).
- Probability of a turning point at any $i$:

$$
P(U_i = 1) = \frac{2}{3}
$$
- **Expected value:**

$$
E(p) = (n-2) \cdot \frac{2}{3} = \frac{2(n-2)}{3}
$$


#### **3.3. Variance of $p$ Under $H_0$**

- **Variance of $U_i$:**

$$
\text{Var}(U_i) = \frac{2}{3} \cdot \left(1 - \frac{2}{3}\right) = \frac{2}{9}
$$
- **Covariance between $U_i$ and $U_j$:**
    - For adjacent triplets ($j = i+1$), overlapping points introduce dependency.
    - After combinatorial analysis, the variance is:

$$
\text{Var}(p) = \frac{16n - 29}{90}
$$


#### **3.4. Standardized Test Statistic**

For large $n$ ($n \geq 15$), $p$ is approximately normal:

$$
Z = \frac{p - E(p)}{\sqrt{\text{Var}(p)}} \sim \mathcal{N}(0, 1)
$$

Substituting $E(p)$ and $\text{Var}(p)$:

$$
Z = \frac{p - \frac{2(n-2)}{3}}{\sqrt{\frac{16n - 29}{90}}}
$$

---

### **4. Decision Rule**

- Reject $H_0$ at significance level $\alpha$ if:

$$
|Z| > z_{\alpha/2}
$$

where $z_{\alpha/2}$ is the critical value from the standard normal distribution.

---

### **5. Example Calculation**

**Data:** $ [1, 5, 3, 4, 2, 6, 5, 7]$ ($n=8$)

1. **Identify Turning Points:**
    - $t=2$: $1 < 5 > 3$ ⇒ Peak
    - $t=3$: $5 > 3 < 4$ ⇒ Trough
    - $t=4$: $3 < 4 > 2$ ⇒ Peak
    - $t=5$: $4 > 2 < 6$ ⇒ Trough
    - $t=6$: $2 < 6 > 5$ ⇒ Peak
    - $t=7$: $6 > 5 < 7$ ⇒ Trough
Total turning points: $p = 6$
2. **Compute $E(p)$:**

$$
E(p) = \frac{2(8-2)}{3} = 4
$$
3. **Compute $\text{Var}(p)$:**

$$
\text{Var}(p) = \frac{16(8) - 29}{90} = \frac{99}{90} = 1.1
$$
4. **Compute $Z$-score:**

$$
Z = \frac{6 - 4}{\sqrt{1.1}} \approx 1.897
$$
5. **Conclusion:**
At $\alpha = 0.05$, $z_{0.025} = 1.96$. Since $1.897 < 1.96$, **fail to reject $H_0$**.

---

### **6. R Code Implementation**

```r
# Example using the 'randtests' package
install.packages("randtests")
library(randtests)

# Generate a random series
set.seed(123)
x <- rnorm(100)

# Perform the turning point test
turning.point.test(x, alternative = "two.sided")
```

**Output Interpretation:**

- **Statistic:** Computed $Z$-value.
- **p-value:** Probability of observing the result under $H_0$.
- **Decision:** Reject $H_0$ if p-value < $\alpha$.

---

### **7. Applications and Limitations**

- **Applications:**
    - Validate randomness in residuals of a time series model.
    - Test pseudo-random number generators.
- **Limitations:**
    - Less effective against trends (better for detecting cyclicity).
    - Requires continuous data (no ties).

