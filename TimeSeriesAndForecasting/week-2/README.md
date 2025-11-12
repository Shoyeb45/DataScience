Here are **detailed notes** based on the lecture slides from the PDF titled **“W2-L1-trend-LS.pdf”** on **Time Series Trend Estimation using Least Squares (LS)**, along with **R code** for practical understanding and **comprehensive answers to the 'Questions to think about'**.

---

## 📘 **Lecture Notes: Estimation of Trend using Least Squares**

---

### 🔷 **1. Basic Model**

We model the observed time series as:

$$
x_t = T_t + I_t
$$

* $x_t$: Observed data at time $t$
* $T_t$: Trend component
* $I_t$: Irregular/random component

---

### 🔷 **2. Least Squares Estimation**

We fit a **linear trend** to the time series:

$$
T_t = a_0 + a_1t
$$

We estimate $a_0$ and $a_1$ by **minimizing the sum of squared residuals**:

$$
\min_{a_0, a_1} \sum_{t=1}^{n} (x_t - a_0 - a_1t)^2
$$

---

### 🔷 **3. Assumptions**

* $I_t \sim \text{i.i.d.}$ with mean 0 and variance $\sigma_I^2$
* Linear trend is appropriate if long-term pattern is roughly linear

---

### 🔷 **4. Derivation of Estimators**

We minimize the function:

$$
S(a_0, a_1) = \sum_{t=1}^{n} (x_t - a_0 - a_1t)^2
$$

Taking partial derivatives and solving:

$$
\frac{\partial S}{\partial a_0} = 0,\quad \frac{\partial S}{\partial a_1} = 0
$$

Gives us the **normal equations**:

$$
\sum x_t = na_0 + a_1 \sum t
$$

$$
\sum tx_t = a_0 \sum t + a_1 \sum t^2
$$

Solving for $a_0$ and $a_1$:

$$
\hat{a}_1 = \frac{n \sum tx_t - \sum t \sum x_t}{n \sum t^2 - (\sum t)^2}
$$

$$
\hat{a}_0 = \frac{1}{n} \left(\sum x_t - \hat{a}_1 \sum t\right)
$$

---

### 🔷 **5. Example Calculation**

**Data:**

| t | xₜ |
| - | -- |
| 1 | 10 |
| 2 | 15 |
| 3 | 20 |
| 4 | 22 |
| 5 | 25 |

**Calculate:**

| t | xₜ | t·xₜ | t² |
| - | -- | ---- | -- |
| 1 | 10 | 10   | 1  |
| 2 | 15 | 30   | 4  |
| 3 | 20 | 60   | 9  |
| 4 | 22 | 88   | 16 |
| 5 | 25 | 125  | 25 |
| Σ | 93 | 313  | 55 |

Using formulas:

$$
\hat{a}_1 = \frac{5(313) - (15)(92)}{5(55) - (15)^2} = 3.7,\quad \hat{a}_0 = 7.3
$$

Fitted trend line:

$$
T_t = 7.3 + 3.7t
$$

---

### 🔷 **6. Visual Fit**

The fitted values $T_t$ can be plotted alongside $x_t$ to visualize the trend.

---

### 🔷 **7. R Code Example for Linear Trend Fitting**

```r
# Example time series
time <- 1:5
x <- c(10, 15, 20, 22, 25)

# Fit linear trend using lm
model <- lm(x ~ time)
summary(model)

# Extract coefficients
a0 <- coef(model)[1]
a1 <- coef(model)[2]
cat("Estimated Trend: T_t =", round(a0, 2), "+", round(a1, 2), "* t\n")

# Plot
plot(time, x, type="b", pch=19, col="blue", ylim=c(0,30), main="Linear Trend Fitting")
abline(model, col="red", lwd=2)
legend("topleft", legend=c("Data", "Trend"), col=c("blue", "red"), pch=c(19, NA), lty=c(NA,1))
```

---

## ❓ **Questions to Think About – Answers**

---

### 🔹 **Q1. Can we fit a quadratic trend to the time series data using the same approach? How?**

✅ **Yes, we can.**

Just as we did with a linear trend, we can assume a **quadratic model**:

$$
x_t = a_0 + a_1t + a_2t^2 + I_t
$$

We then **minimize**:

$$
\sum (x_t - a_0 - a_1t - a_2t^2)^2
$$

This is still a **least squares problem**, but now with 3 parameters. The design matrix includes $t$ and $t^2$.

---

### 🔹 **Q2. Derive and solve the system of equations for a general polynomial trend of degree k**

✅ **General Polynomial Trend Model:**

$$
x_t = a_0 + a_1t + a_2t^2 + \ldots + a_k t^k + I_t
$$

To estimate $a_0, a_1, \dots, a_k$, minimize:

$$
S = \sum_{t=1}^{n} \left(x_t - \sum_{j=0}^{k} a_j t^j \right)^2
$$

This is a **multiple linear regression** problem.

In matrix form:

$$
\mathbf{X} \mathbf{a} = \mathbf{y}
$$

Where:

* $\mathbf{y}$: vector of $x_t$
* $\mathbf{X}$: design matrix with columns $1, t, t^2, \dots, t^k$
* $\mathbf{a}$: vector of coefficients

**Solution using normal equations:**

$$
\hat{\mathbf{a}} = (\mathbf{X}^T \mathbf{X})^{-1} \mathbf{X}^T \mathbf{y}
$$

---

### 🔷 **R Code for Polynomial Trend (Degree k)**

```r
# Fit a quadratic trend (k = 2)
time <- 1:5
x <- c(10, 15, 20, 22, 25)

model_poly2 <- lm(x ~ time + I(time^2))
summary(model_poly2)

# Plot the trend
plot(time, x, pch=19, col="blue", main="Quadratic Trend Fitting")
lines(time, fitted(model_poly2), col="darkgreen", lwd=2)
legend("topleft", legend=c("Data", "Quadratic Trend"), col=c("blue", "darkgreen"), pch=c(19, NA), lty=c(NA,1))
```

---

## 📝 Summary

* Least Squares Method is used to fit trend lines to time series.
* The goal is to minimize squared deviations.
* A **linear trend** assumes form $x_t = a_0 + a_1t + I_t$.
* Can be extended to polynomial trends using matrix operations or multiple linear regression.
* R provides convenient tools (`lm`) for fitting such models.

---

Would you like me to compile this into a PDF for easier reading or include a more complex real-world dataset example?
