% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_data.R
\name{check_data}
\alias{check_data}
\title{Check input data for DDUST model}
\usage{
check_data(data, silent = FALSE)
}
\arguments{
\item{data}{list of data}

\item{silent}{TRUE show warnings and messages}
}
\value{
Amended list of model input data
}
\description{
'check_data' returns an amended list of model input data. See details.
}
\details{
The minimum requirements for data include
\itemize{
\item proportion_spawning: a vector of length 12 indicating the proportion of spawning that occurs each month
\item weight_at_recruitment: a vector of length 2 indicating the weight of a pre-recruit and the weight of a recruit
\item weight_inf: the average maximum weight
\item last_year_catch: the last year of catch (int)
\item first_year_catch: the first year of catch (int)
\item first_year_rec_devs: the first year of recruitment deviations (int)
\item ctch: a vector of catch
\item cpue: an array of standardised catch per unit effort with dimensions with rows for fleets
\item cpue_sd: an array of standardised catch per unit effort standard deviation with dimensions with rows for fleets
\item month_sequence: a vector of months with 1 indicating the warmest month
\item calculate_rho: an integer indicating if rho is calculated inside the model using weight_at_recruitment and weight_inf
\item use_recruit_penalty: an integer indicating if the recruitment penalty is used
\item prior_mean_mu: a value for the mean of the mu normal prior
\item prior_mean_k: a value for the mean of the k normal prior
\item prior_mean_xi: a value for the mean of the xi normal prior
}

The following data will be amended with default values:
\itemize{
\item rec_dev_type = 'off': treatment of recruitment deviations ('off', 'barycentric', 'redundant')
\item Number_months_per_timestep = 1: number of months per timestep (1, 2, 3, 4, 6 or 12)
\item use_cpue_sd = 0: an integer to indicate if cpue_sd will be used
\item num_years_warmup = 100: an integer to indicate number of years to run equilibirum warm up
\item recruit_penalty_strength = 0.001: a value to scale the strength of the recruitment penalty
\item recruit_penalty_exponent = 2: a value to scale the strength of the recruitment penalty
\item absolute_biomass = (0,0,...,0): a vector of observed absolute biomass data
\item absolute_biomass_sd  = (1,1,...,1): a vector of observed absolute biomass standard deviation data
\item minimum_annual_harvest = 0.05: a ratio indicating the harvest rate that induces the harvest penalty
\item do_projections = 0: an integer to indicate if projections are run
\item projection_years = 50: the number of years to run projections (int)
\item projection_harvest = (0,0,...,0): a vector of harvest used in harvest projections
\item target_relative_biomass  = 0.6: the relative biomass used in target projections
\item F_initial = 0.05: the initial fishing mortality used for MSY and FMSY calculations
\item prior_sd_mu = 1: a value for the standard deviation of the mu normal prior
\item prior_sd_k = 1: a value for the standard deviation of the k normal prior
\item prior_sd_xi = 1: a value for the standard deviation of the xi normal prior
}
}
\examples{
data <- check_data(data)
}
