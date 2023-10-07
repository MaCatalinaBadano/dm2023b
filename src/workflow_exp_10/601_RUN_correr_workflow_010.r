# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow_exp_10/611_CA_reparar_dataset_010.r")
source("~/dm2023b/src/workflow_exp_10/621_DR_corregir_drifting_010.r")
source("~/dm2023b/src/workflow_exp_10/631_FE_historia_010.r")
source("~/dm2023b/src/workflow_exp_10/641_TS_training_strategy_010.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow_exp_10/651_HT_lightgbm_010.r")
source("~/dm2023b/src/workflow_exp_10/661_ZZ_final_010.r")
