% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/facility_types.r
\name{facility_types}
\alias{facility_types}
\title{get & plot freq of facility types for a country}
\usage{
facility_types(
  country,
  datasource = "healthsites",
  type_filter = "all",
  type_column = "Facility Type",
  label_column = "Facility Name",
  brewer_palette = "BuPu",
  lonlat_columns = c("Longitude", "Latitude"),
  plot = TRUE
)
}
\arguments{
\item{country}{a character vector of country names or iso3c character codes.}

\item{datasource}{data source, 'healthsites' predownloaded, 'who', 'healthsites_live' needs API, 'hdx' not working yet}

\item{type_filter}{filter by facility type - will depend on the data source}

\item{type_column}{just for user provided files which column has information on type of site, default : 'Facility Type'}

\item{label_column}{just for user provided files which column has information on name of site, default : 'Facility Name'}

\item{brewer_palette}{ColorBrewer palette default 'BuPu',}

\item{lonlat_columns}{just for user provided files which columns contain longitude, latitude}

\item{plot}{whether to display plot}
}
\value{
\code{ggplot2} object
}
\description{
get & plot freq of facility types for a country
}
\examples{

ggnga <- facility_types("nigeria", datasource='who')

facility_types('chad', datasource='who')
facility_types('chad', datasource='healthsites')


#filter healthsites data by amenity type
facility_types('chad',datasource = 'healthsites', type_filter=c('clinic','hospital'))
#filter who data by Facility type
facility_types('chad',datasource = 'who', type_filter=c('Regional hospital','Health Centre'))


}
