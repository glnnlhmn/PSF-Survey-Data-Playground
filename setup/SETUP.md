## Project Setup

[https://github.com/glnnlhmn/PSF-Survey-Data-Playground](https://github.com/glnnlhmn/PSF-Survey-Data-Playground)

### Fork and Clone the Repository

1. **Fork the Repository**

2. **Clone the Repository**

    ```bash
    git clone https://github.com/your-username/PSF-Survey-Data-Playground.git
    ```
3. **Change to Project Directory**
   ```bash
   cd PSF-Survey-Data-Playground
   ```
4. **Create a Virtual Environment**
   ```bash
   python -m venv venv
   ```
 
5. **Activate the Virtual Environment**

    - On Windows:
      ```bash
      venv\Scripts\activate
      ```
    - On macOS/Linux:
      ```bash
      source venv/bin/activate
      ```

6. **Install Required Packages**
    ```bash
    pip install -r requirements.txt
    ```

## Custom Git Hooks Path

This project uses a custom directory for Git hooks. The hooks are located in the `my-hooks` directory at the root of the repository.

To ensure that Git uses this directory for hooks, run the following command after cloning the repository:

```sh
  git config core.hookspath ./my-hooks
```
