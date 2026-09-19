class FriendlyException implements Exception {
  final String message;
  final int statusCode;

  const FriendlyException({
    required this.message,
    required this.statusCode,
  });

  static const Map<int, String> _statusMessages = {
    // 4xx Client Errors
    400: 'Bad Request',
    401: 'Unauthorized',
    402: 'Payment Required',
    403: 'Forbidden',
    404: 'Not Found',
    405: 'Method Not Allowed',
    406: 'Not Acceptable',
    407: 'Proxy Authentication Required',
    408: 'Request Timeout',
    409: 'Conflict',
    410: 'Gone',
    411: 'Length Required',
    412: 'Precondition Failed',
    413: 'Payload Too Large',
    414: 'URI Too Long',
    415: 'Unsupported Media Type',
    416: 'Range Not Satisfiable',
    417: 'Expectation Failed',
    418: "I'm a teapot",
    421: 'Misdirected Request',
    422: 'Unprocessable Content',
    423: 'Locked',
    424: 'Failed Dependency',
    425: 'Too Early',
    426: 'Upgrade Required',
    428: 'Precondition Required',
    429: 'Too Many Requests',
    431: 'Request Header Fields Too Large',
    451: 'Unavailable For Legal Reasons',

    // 5xx Server Errors
    500: 'Internal Server Error',
    501: 'Not Implemented',
    502: 'Bad Gateway',
    503: 'Service Unavailable',
    504: 'Gateway Timeout',
    505: 'HTTP Version Not Supported',
    506: 'Variant Also Negotiates',
    507: 'Insufficient Storage',
    508: 'Loop Detected',
    510: 'Not Extended',
    511: 'Network Authentication Required',

    // Cloudflare / Non-standard
    520: 'Unknown Error',
    521: 'Web Server Is Down',
    522: 'Connection Timed Out',
    523: 'Origin Is Unreachable',
    524: 'A Timeout Occurred',
    525: 'SSL Handshake Failed',
    526: 'Invalid SSL Certificate',
    527: 'Railgun Error',
    530: 'Site Is Frozen',
  };

  String get friendlyMessage {
    return _statusMessages[statusCode] ?? message;
  }

  bool get isClientError {
    return statusCode >= 400 && statusCode < 500;
  }

  bool get isServerError {
    return statusCode >= 500 && statusCode < 600;
  }

  bool get isSuccess {
    return statusCode >= 200 && statusCode < 300;
  }

  bool get isRedirect {
    return statusCode >= 300 && statusCode < 400;
  }

  bool get isUnauthorized {
    return statusCode == 401;
  }

  bool get isForbidden {
    return statusCode == 403;
  }

  bool get isNotFound {
    return statusCode == 404;
  }

  bool get isTimeout {
    return statusCode == 408 ||
        statusCode == 504 ||
        statusCode == 522 ||
        statusCode == 524;
  }

  bool get isRateLimited {
    return statusCode == 429;
  }

  bool get isServerUnavailable {
    return statusCode == 503 ||
        statusCode == 521 ||
        statusCode == 523;
  }

  @override
  String toString() {
    return 'FriendlyException('
        'statusCode: $statusCode, '
        'message: $message, '
        'friendlyMessage: $friendlyMessage'
        ')';
  }
}