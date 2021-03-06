% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adapter-crul.R, R/adapter-httr.R, R/adapter.R
\name{CrulAdapter}
\alias{CrulAdapter}
\alias{HttrAdapter}
\alias{Adapter}
\title{Adapters for Modifying HTTP Requests}
\description{
\code{Adapter} is the base parent class used to implement
\pkg{webmockr} support for different HTTP clients. It should not be used
directly. Instead, use one of the client-specific adapters that webmockr
currently provides:
\itemize{
\item \code{CrulAdapter} for \pkg{crul}
\item \code{HttrAdapter} for \pkg{httr}
}
}
\details{
Note that the documented fields and methods are the same across all
client-specific adapters.
}
\examples{
\dontrun{
if (requireNamespace("httr", quietly = TRUE)) {
# library(httr)

# normal httr request, works fine
# real <- GET("https://httpbin.org/get")
# real

# with webmockr
# library(webmockr)
## turn on httr mocking
# httr_mock()
## now this request isn't allowed
# GET("https://httpbin.org/get")
## stub the request
# stub_request('get', uri = 'https://httpbin.org/get') \%>\%
#   wi_th(
#     headers = list('Accept' = 'application/json, text/xml, application/xml, */*')
#   ) \%>\%
#   to_return(status = 418, body = "I'm a teapot!", headers = list(a = 5))
## now the request succeeds and returns a mocked response
# (res <- GET("https://httpbin.org/get"))
# res$status_code
# rawToChar(res$content)

# allow real requests while webmockr is loaded
# webmockr_allow_net_connect()
# webmockr_net_connect_allowed()
# GET("https://httpbin.org/get?animal=chicken")
# webmockr_disable_net_connect()
# webmockr_net_connect_allowed()
# GET("https://httpbin.org/get?animal=chicken")

# httr_mock(FALSE)
}
}
}
\section{Super class}{
\code{\link[webmockr:Adapter]{webmockr::Adapter}} -> \code{CrulAdapter}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{client}}{HTTP client package name}

\item{\code{name}}{adapter name}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-clone}{\code{CrulAdapter$clone()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="disable">}\href{../../webmockr/html/Adapter.html#method-disable}{\code{webmockr::Adapter$disable()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="enable">}\href{../../webmockr/html/Adapter.html#method-enable}{\code{webmockr::Adapter$enable()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="handle_request">}\href{../../webmockr/html/Adapter.html#method-handle_request}{\code{webmockr::Adapter$handle_request()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="initialize">}\href{../../webmockr/html/Adapter.html#method-initialize}{\code{webmockr::Adapter$initialize()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="remove_stubs">}\href{../../webmockr/html/Adapter.html#method-remove_stubs}{\code{webmockr::Adapter$remove_stubs()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{CrulAdapter$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
\section{Super class}{
\code{\link[webmockr:Adapter]{webmockr::Adapter}} -> \code{HttrAdapter}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{client}}{HTTP client package name}

\item{\code{name}}{adapter name}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-clone}{\code{HttrAdapter$clone()}}
}
}
\if{html}{
\out{<details open ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="disable">}\href{../../webmockr/html/Adapter.html#method-disable}{\code{webmockr::Adapter$disable()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="enable">}\href{../../webmockr/html/Adapter.html#method-enable}{\code{webmockr::Adapter$enable()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="handle_request">}\href{../../webmockr/html/Adapter.html#method-handle_request}{\code{webmockr::Adapter$handle_request()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="initialize">}\href{../../webmockr/html/Adapter.html#method-initialize}{\code{webmockr::Adapter$initialize()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="webmockr" data-topic="Adapter" data-id="remove_stubs">}\href{../../webmockr/html/Adapter.html#method-remove_stubs}{\code{webmockr::Adapter$remove_stubs()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{HttrAdapter$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{client}}{HTTP client package name}

\item{\code{name}}{adapter name}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{Adapter$new()}}
\item \href{#method-enable}{\code{Adapter$enable()}}
\item \href{#method-disable}{\code{Adapter$disable()}}
\item \href{#method-handle_request}{\code{Adapter$handle_request()}}
\item \href{#method-remove_stubs}{\code{Adapter$remove_stubs()}}
\item \href{#method-clone}{\code{Adapter$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Create a new Adapter object
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Adapter$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-enable"></a>}}
\if{latex}{\out{\hypertarget{method-enable}{}}}
\subsection{Method \code{enable()}}{
Enable the adapter
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Adapter$enable(quiet = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{quiet}}{(logical) suppress messages? default: \code{FALSE}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{TRUE}, invisibly
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-disable"></a>}}
\if{latex}{\out{\hypertarget{method-disable}{}}}
\subsection{Method \code{disable()}}{
Disable the adapter
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Adapter$disable(quiet = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{quiet}}{(logical) suppress messages? default: \code{FALSE}}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{FALSE}, invisibly
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-handle_request"></a>}}
\if{latex}{\out{\hypertarget{method-handle_request}{}}}
\subsection{Method \code{handle_request()}}{
All logic for handling a request
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Adapter$handle_request(req)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{req}}{a request}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
various outcomes
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-remove_stubs"></a>}}
\if{latex}{\out{\hypertarget{method-remove_stubs}{}}}
\subsection{Method \code{remove_stubs()}}{
Remove all stubs
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Adapter$remove_stubs()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
nothing returned; removes all request stubs
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Adapter$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
