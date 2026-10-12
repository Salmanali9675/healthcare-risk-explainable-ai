@echo off
title Jupyter Notebook - Healthcare Risk AI
echo ========================================================
echo   Starting Jupyter Notebook (Browser Mode)...
echo ========================================================
cd /d "%~dp0"
python -m notebook notebooks/01_patient_risk_and_explainable_ai.ipynb
if %ERRORLEVEL% NEQ 0 (
    echo Trying fallback command...
    python -m jupyter notebook
)
pause
