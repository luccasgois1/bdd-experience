# Documentation related to the new feature - Cupom Descont


## Description


This documentation has the goal of mapping all the requirements for the new feature that will be developed: cupom discount. This can be used by the developers and the QA folks as the basis for clearly defining how the feature is supposed to be working.


**As** a user of the Starbugs Coffee website,
**I want** to be able to use cupom discount on the checkout page.
**So that** I can reduce the price of specific products or the total value of the purchase, increasing my customer satisfaction experience.


**Acceptance criteria:**


1. **Apply 20% discount:**
- The user must be able to apply a 20% valid discount on the checkout page.
- The discount must be applied only to the product value, and the total cost should be recalculated accordingly.


2. **Expired Cupom:**
- The user must receive a warning notification when it uses an expired cupom.
- Any discount must apply, and the total cost of the purchase must remain the same.


3. **Invalid Cupom:**
- The user must receive a warning notification when the cupom is invalid.
- Any discount must apply, and the total cost of the purchase must remain the same.


**Notes:**

- The cupom feature must be easy to use and intuitive, ensuring a good user experience.
- The error messages must be clear and informative to guide the user accordingly.