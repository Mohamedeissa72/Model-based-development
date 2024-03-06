/*
 * File: Code_Trafficlights.h
 *
 * Code generated for Simulink model 'Code_Trafficlights'.
 *
 * Model version                  : 1.1
 * Simulink Coder version         : 23.2 (R2023b) 01-Aug-2023
 * C/C++ source code generated on : Tue Mar  5 18:18:31 2024
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Atmel->AVR
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. RAM efficiency
 * Validation result: Not run
 */

#ifndef RTW_HEADER_Code_Trafficlights_h_
#define RTW_HEADER_Code_Trafficlights_h_
#ifndef Code_Trafficlights_COMMON_INCLUDES_
#define Code_Trafficlights_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* Code_Trafficlights_COMMON_INCLUDES_ */

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Forward declaration for rtModel */
typedef struct tag_RTM RT_MODEL;

/* Block signals and states (default storage) for system '<Root>' */
typedef struct {
  real_T UnitDelay_DSTATE;             /* '<S3>/Unit Delay' */
} DW;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real_T ledred;                       /* '<Root>/led red' */
  real_T ledyellow;                    /* '<Root>/led yellow' */
  real_T ledgreen;                     /* '<Root>/led green' */
} ExtY;

/* Real-time Model Data Structure */
struct tag_RTM {
  const char_T * volatile errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    struct {
      uint16_T TID[2];
    } TaskCounters;
  } Timing;
};

/* Block signals and states (default storage) */
extern DW rtDW;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY rtY;

/* Model entry point functions */
extern void Code_Trafficlights_initialize(void);
extern void Code_Trafficlights_step(void);

/* Real-time Model object */
extern RT_MODEL *const rtM;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'Code_Trafficlights'
 * '<S1>'   : 'Code_Trafficlights/Traffic Lights Sequence'
 * '<S2>'   : 'Code_Trafficlights/Traffic Lights Sequence/Subsystem1'
 * '<S3>'   : 'Code_Trafficlights/Traffic Lights Sequence/Subsystem4'
 * '<S4>'   : 'Code_Trafficlights/Traffic Lights Sequence/Subsystem1/TrafficLightSequence'
 */
#endif                                 /* RTW_HEADER_Code_Trafficlights_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
