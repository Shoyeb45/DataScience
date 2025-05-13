# Preliminary Tests


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

#### **Step 1: Expectation of τ Under $H_0$**

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

#### **Step 3: Standard Error and Z-Score**

For large $n$ ($n \geq 10$), τ approximately follows a normal distribution:

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
