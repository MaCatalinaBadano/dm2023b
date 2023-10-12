# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow_exp_semillerio_1inicial/711_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow_exp_semillerio_1/721_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow_exp_semillerio_1/731_FE_historia.r")
source("~/dm2023b/src/workflow_exp_semillerio_1/741_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow_exp_semillerio_1/751_HT_lightgbm.r")
source("~/dm2023b/src/workflow_exp_semillerio_1/761_ZZ_final.r")

