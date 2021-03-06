
#' Filters
#'
#' Predefined filters for use as the \code{filter} argument of class \code{\link{MessageHandler}}.
#'
#' @docType data
#' @format A \code{list} with filtering functions.
#' @section Functions: \itemize{
#'     \item{\code{all}: All Messages.}
#'     \item{\code{text}: Text Messages.}
#'     \item{\code{command}: Messages starting with \code{/}.}
#'     \item{\code{reply}: Messages that are a reply to another message.}
#'     \item{\code{audio}: Messages that contain audio.}
#'     \item{\code{document}: Messages that contain document.}
#'     \item{\code{photo}: Messages that contain photo.}
#'     \item{\code{sticker}: Messages that contain sticker.}
#'     \item{\code{video}: Messages that contain video.}
#'     \item{\code{voice}: Messages that contain voice.}
#'     \item{\code{contact}: Messages that contain contact.}
#'     \item{\code{location}: Messages that contain location.}
#'     \item{\code{venue}: Messages that are forwarded.}
#'     \item{\code{game}: Messages that contain game.}
#' }
#' @examples \dontrun{
#' # Use to filter all video messages
#' video_handler <- MessageHandler(callback_method, Filters$video)
#'
#' # To filter all contacts, etc.
#' contact_handler <- MessageHandler(callback_method, Filters$contact)
#' }
#' @export
Filters <- list(
  'all' =
    function(message){
      TRUE
    },
  'text' =
    function(message){
      !is.null(message$text) && !startsWith(message$text, '/')
    },
  'command' =
    function(message){
      !is.null(message$text) && startsWith(message$text, '/')
    },
  'reply' =
    function(message){
      !is.null(message$reply_to_message)
    },
  'audio' =
    function(message){
      !is.null(message$audio)
    },
  'document' =
    function(message){
      !is.null(message$document)
    },
  'photo' =
    function(message){
      !is.null(message$photo)
    },
  'sticker' =
    function(message){
      !is.null(message$sticker)
    },
  'video' =
    function(message){
      !is.null(message$video)
    },
  'voice' =
    function(message){
      !is.null(message$voice)
    },
  'contact' =
    function(message){
      !is.null(message$contact)
    },
  'location' =
    function(message){
      !is.null(message$location)
    },
  'venue' =
    function(message){
      !is.null(message$venue)
    },
  'forwarded' =
    function(message){
      !is.null(message$forward_date)
    },
  'game' =
    function(message){
      !is.null(message$game)
    },
  'invoice' =
    function(message){
      !is.null(message$invoice)
    },
  'successful_payment' =
    function(message){
      !is.null(message$successful_payment)
    }
)
