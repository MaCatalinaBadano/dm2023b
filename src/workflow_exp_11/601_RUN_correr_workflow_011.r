# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow_exp_11/611_CA_reparar_dataset_011.r")
source("~/dm2023b/src/workflow_exp_11/621_DR_corregir_drifting_011.r")
source("~/dm2023b/src/workflow_exp_11/631_FE_historia_011.r")
source("~/dm2023b/src/workflow_exp_11/641_TS_training_strategy_011.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow_exp_11/651_HT_lightgbm_011.r")
source("~/dm2023b/src/workflow_exp_11/661_ZZ_final_011.r")
