do ($) ->
  UrlChecker = ({checkPath}) ->
    @check = ({url, success, error}) ->
      $.getJSON(
        checkPath
        url: url
        (data, textStatus, jqXHR) -> if data.success then success() else error()
      )

    @

  $ =>
    URL_CHECKER_PATH = $("meta[name='url-checker-path']").attr "content"

    @UrlChecker = new UrlChecker checkPath: URL_CHECKER_PATH
