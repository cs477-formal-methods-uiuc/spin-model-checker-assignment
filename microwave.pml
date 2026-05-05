/* Microwave Model in Promela */

/* DO NOT change variable names or initial values */
bool closed  = false;   /* true if the door is closed */
bool start   = false;   /* true if the microwave has been started */
bool cooking = false;   /* true if the microwave is currently cooking */

active proctype Microwave() {
    /* TODO: Model the microwave behavior here. */
}

/* LTL properties go here.  */

/* TODO: Replace ... with the LTL property that expresses:
         the microwave should never cook with the door open. */
ltl safety { ... }
