/*
 * File: Ex_Codegeneration.c
 *
 * Code generated for Simulink model 'Ex_Codegeneration'.
 *
 * Model version                  : 1.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Thu Feb  8 22:08:48 2024
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex-M
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. RAM efficiency
 * Validation result: Not run
 */

#include "Ex_Codegeneration.h"

/* External inputs (root inport signals with default storage) */
ExtU rtU;

/* External outputs (root outports fed by signals with default storage) */
ExtY rtY;

/* Model step function */
void Ex_Codegeneration_step(void)
{
  /* Outport: '<Root>/Output_add' incorporates:
   *  Inport: '<Root>/Num1'
   *  Inport: '<Root>/Num2'
   *  Sum: '<S1>/Add'
   */
  rtY.Output_add = rtU.Num1 + rtU.Num2;
}

/* Model initialize function */
void Ex_Codegeneration_initialize(void)
{
  /* (no initialization code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
