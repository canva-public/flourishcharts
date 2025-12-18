'use strict';

(function() {

function isArrayIndex(x) {
	return (parseInt(x).toString() === "" + x) && (x >= 0);
}


function validateArrayBindings(column_bindings, columns_bindings) {
	var mssg;

	var column_ok = Object.keys(column_bindings).every(function(key) {
		return isArrayIndex(column_bindings[key]);
	});

	if (!column_ok) {
		mssg = "All column_bindings values should be non-negative integers";
		throw new TypeError(mssg);
	}

	var columns_ok = Object.keys(columns_bindings).every(function(key) {
		var value = columns_bindings[key];
		return Array.isArray(value) ? value.every(isArrayIndex) : isArrayIndex(value);
	});

	if (!columns_ok) {
		mssg = "All columns_bindings values should be non-negative integers or arrays thereof";
		throw new TypeError(mssg);
	}
}

function flourishifyData(input_data, column_bindings, columns_bindings) {
	return input_data.map(function(d) {
		var obj = {};

		Object.keys(column_bindings).forEach(function(key) {
			obj[key] = d[column_bindings[key]];
		});

		Object.keys(columns_bindings).forEach(function(key) {
			var a = columns_bindings[key];
			if (!Array.isArray(a)) a = [a];
			obj[key] = a.map(function(inner_key) { return d[inner_key]; });
		});

		return obj;
	});
}


function flourishifyObjects(input_data, column_bindings, columns_bindings) {
	column_bindings = column_bindings || {};
	columns_bindings = columns_bindings || {};

	var data = flourishifyData(input_data, column_bindings, columns_bindings);
	data.column_names = {};

	Object.keys(column_bindings).forEach(function(key) {
		data.column_names[key] = column_bindings[key];
	});

	Object.keys(columns_bindings).forEach(function(key) {
		var a = columns_bindings[key];
		data.column_names[key] = Array.isArray(a) ? a : [a];
	});

	return data;
}


function flourishifyArrays(input_data, column_bindings, columns_bindings) {
	column_bindings = column_bindings || {};
	columns_bindings = columns_bindings || {};
	validateArrayBindings(column_bindings, columns_bindings);
	var old_headers = input_data[0];

	var data = flourishifyData(input_data.slice(1), column_bindings, columns_bindings);
	data.column_names = {};

	Object.keys(column_bindings).forEach(function(key) {
		data.column_names[key] = old_headers[column_bindings[key]];
	});

	Object.keys(columns_bindings).forEach(function(key) {
		var a = columns_bindings[key];
		data.column_names[key] = (Array.isArray(a) ? a : [a]).map(function(k) {
			return old_headers[k];
		});
	});

	return data;
}


function flourishify(input_data, column_bindings, columns_bindings) {
	var fls = Array.isArray(input_data[0]) ? flourishifyArrays : flourishifyObjects;
	return fls(input_data, column_bindings, columns_bindings);
}

var t0 = new Date,
    t1 = new Date;

function newInterval(floori, offseti, count, field) {

  function interval(date) {
    return floori(date = arguments.length === 0 ? new Date : new Date(+date)), date;
  }

  interval.floor = function(date) {
    return floori(date = new Date(+date)), date;
  };

  interval.ceil = function(date) {
    return floori(date = new Date(date - 1)), offseti(date, 1), floori(date), date;
  };

  interval.round = function(date) {
    var d0 = interval(date),
        d1 = interval.ceil(date);
    return date - d0 < d1 - date ? d0 : d1;
  };

  interval.offset = function(date, step) {
    return offseti(date = new Date(+date), step == null ? 1 : Math.floor(step)), date;
  };

  interval.range = function(start, stop, step) {
    var range = [], previous;
    start = interval.ceil(start);
    step = step == null ? 1 : Math.floor(step);
    if (!(start < stop) || !(step > 0)) return range; // also handles Invalid Date
    do range.push(previous = new Date(+start)), offseti(start, step), floori(start);
    while (previous < start && start < stop);
    return range;
  };

  interval.filter = function(test) {
    return newInterval(function(date) {
      if (date >= date) while (floori(date), !test(date)) date.setTime(date - 1);
    }, function(date, step) {
      if (date >= date) {
        if (step < 0) while (++step <= 0) {
          while (offseti(date, -1), !test(date)) {} // eslint-disable-line no-empty
        } else while (--step >= 0) {
          while (offseti(date, +1), !test(date)) {} // eslint-disable-line no-empty
        }
      }
    });
  };

  if (count) {
    interval.count = function(start, end) {
      t0.setTime(+start), t1.setTime(+end);
      floori(t0), floori(t1);
      return Math.floor(count(t0, t1));
    };

    interval.every = function(step) {
      step = Math.floor(step);
      return !isFinite(step) || !(step > 0) ? null
          : !(step > 1) ? interval
          : interval.filter(field
              ? function(d) { return field(d) % step === 0; }
              : function(d) { return interval.count(0, d) % step === 0; });
    };
  }

  return interval;
}

var durationMinute = 6e4;
var durationDay = 864e5;
var durationWeek = 6048e5;

var day = newInterval(function(date) {
  date.setHours(0, 0, 0, 0);
}, function(date, step) {
  date.setDate(date.getDate() + step);
}, function(start, end) {
  return (end - start - (end.getTimezoneOffset() - start.getTimezoneOffset()) * durationMinute) / durationDay;
}, function(date) {
  return date.getDate() - 1;
});
day.range;

function weekday(i) {
  return newInterval(function(date) {
    date.setDate(date.getDate() - (date.getDay() + 7 - i) % 7);
    date.setHours(0, 0, 0, 0);
  }, function(date, step) {
    date.setDate(date.getDate() + step * 7);
  }, function(start, end) {
    return (end - start - (end.getTimezoneOffset() - start.getTimezoneOffset()) * durationMinute) / durationWeek;
  });
}

var sunday = weekday(0);
var monday = weekday(1);
var tuesday = weekday(2);
var wednesday = weekday(3);
var thursday = weekday(4);
var friday = weekday(5);
var saturday = weekday(6);

sunday.range;
monday.range;
tuesday.range;
wednesday.range;
thursday.range;
friday.range;
saturday.range;

var year = newInterval(function(date) {
  date.setMonth(0, 1);
  date.setHours(0, 0, 0, 0);
}, function(date, step) {
  date.setFullYear(date.getFullYear() + step);
}, function(start, end) {
  return end.getFullYear() - start.getFullYear();
}, function(date) {
  return date.getFullYear();
});

// An optimized implementation for this simple case.
year.every = function(k) {
  return !isFinite(k = Math.floor(k)) || !(k > 0) ? null : newInterval(function(date) {
    date.setFullYear(Math.floor(date.getFullYear() / k) * k);
    date.setMonth(0, 1);
    date.setHours(0, 0, 0, 0);
  }, function(date, step) {
    date.setFullYear(date.getFullYear() + step * k);
  });
};
year.range;

var utcDay = newInterval(function(date) {
  date.setUTCHours(0, 0, 0, 0);
}, function(date, step) {
  date.setUTCDate(date.getUTCDate() + step);
}, function(start, end) {
  return (end - start) / durationDay;
}, function(date) {
  return date.getUTCDate() - 1;
});
utcDay.range;

function utcWeekday(i) {
  return newInterval(function(date) {
    date.setUTCDate(date.getUTCDate() - (date.getUTCDay() + 7 - i) % 7);
    date.setUTCHours(0, 0, 0, 0);
  }, function(date, step) {
    date.setUTCDate(date.getUTCDate() + step * 7);
  }, function(start, end) {
    return (end - start) / durationWeek;
  });
}

var utcSunday = utcWeekday(0);
var utcMonday = utcWeekday(1);
var utcTuesday = utcWeekday(2);
var utcWednesday = utcWeekday(3);
var utcThursday = utcWeekday(4);
var utcFriday = utcWeekday(5);
var utcSaturday = utcWeekday(6);

utcSunday.range;
utcMonday.range;
utcTuesday.range;
utcWednesday.range;
utcThursday.range;
utcFriday.range;
utcSaturday.range;

var utcYear = newInterval(function(date) {
  date.setUTCMonth(0, 1);
  date.setUTCHours(0, 0, 0, 0);
}, function(date, step) {
  date.setUTCFullYear(date.getUTCFullYear() + step);
}, function(start, end) {
  return end.getUTCFullYear() - start.getUTCFullYear();
}, function(date) {
  return date.getUTCFullYear();
});

// An optimized implementation for this simple case.
utcYear.every = function(k) {
  return !isFinite(k = Math.floor(k)) || !(k > 0) ? null : newInterval(function(date) {
    date.setUTCFullYear(Math.floor(date.getUTCFullYear() / k) * k);
    date.setUTCMonth(0, 1);
    date.setUTCHours(0, 0, 0, 0);
  }, function(date, step) {
    date.setUTCFullYear(date.getUTCFullYear() + step * k);
  });
};
utcYear.range;

function localDate(d) {
  if (0 <= d.y && d.y < 100) {
    var date = new Date(-1, d.m, d.d, d.H, d.M, d.S, d.L);
    date.setFullYear(d.y);
    return date;
  }
  return new Date(d.y, d.m, d.d, d.H, d.M, d.S, d.L);
}

function utcDate(d) {
  if (0 <= d.y && d.y < 100) {
    var date = new Date(Date.UTC(-1, d.m, d.d, d.H, d.M, d.S, d.L));
    date.setUTCFullYear(d.y);
    return date;
  }
  return new Date(Date.UTC(d.y, d.m, d.d, d.H, d.M, d.S, d.L));
}

function newDate(y, m, d) {
  return {y: y, m: m, d: d, H: 0, M: 0, S: 0, L: 0};
}

function formatLocale$1(locale) {
  var locale_dateTime = locale.dateTime,
      locale_date = locale.date,
      locale_time = locale.time,
      locale_periods = locale.periods,
      locale_weekdays = locale.days,
      locale_shortWeekdays = locale.shortDays,
      locale_months = locale.months,
      locale_shortMonths = locale.shortMonths;

  var periodRe = formatRe(locale_periods),
      periodLookup = formatLookup(locale_periods),
      weekdayRe = formatRe(locale_weekdays),
      weekdayLookup = formatLookup(locale_weekdays),
      shortWeekdayRe = formatRe(locale_shortWeekdays),
      shortWeekdayLookup = formatLookup(locale_shortWeekdays),
      monthRe = formatRe(locale_months),
      monthLookup = formatLookup(locale_months),
      shortMonthRe = formatRe(locale_shortMonths),
      shortMonthLookup = formatLookup(locale_shortMonths);

  var formats = {
    "a": formatShortWeekday,
    "A": formatWeekday,
    "b": formatShortMonth,
    "B": formatMonth,
    "c": null,
    "d": formatDayOfMonth,
    "e": formatDayOfMonth,
    "f": formatMicroseconds,
    "g": formatYearISO,
    "G": formatFullYearISO,
    "H": formatHour24,
    "I": formatHour12,
    "j": formatDayOfYear,
    "L": formatMilliseconds,
    "m": formatMonthNumber,
    "M": formatMinutes,
    "p": formatPeriod,
    "q": formatQuarter,
    "Q": formatUnixTimestamp,
    "s": formatUnixTimestampSeconds,
    "S": formatSeconds,
    "u": formatWeekdayNumberMonday,
    "U": formatWeekNumberSunday,
    "V": formatWeekNumberISO,
    "w": formatWeekdayNumberSunday,
    "W": formatWeekNumberMonday,
    "x": null,
    "X": null,
    "y": formatYear,
    "Y": formatFullYear,
    "Z": formatZone,
    "%": formatLiteralPercent
  };

  var utcFormats = {
    "a": formatUTCShortWeekday,
    "A": formatUTCWeekday,
    "b": formatUTCShortMonth,
    "B": formatUTCMonth,
    "c": null,
    "d": formatUTCDayOfMonth,
    "e": formatUTCDayOfMonth,
    "f": formatUTCMicroseconds,
    "g": formatUTCYearISO,
    "G": formatUTCFullYearISO,
    "H": formatUTCHour24,
    "I": formatUTCHour12,
    "j": formatUTCDayOfYear,
    "L": formatUTCMilliseconds,
    "m": formatUTCMonthNumber,
    "M": formatUTCMinutes,
    "p": formatUTCPeriod,
    "q": formatUTCQuarter,
    "Q": formatUnixTimestamp,
    "s": formatUnixTimestampSeconds,
    "S": formatUTCSeconds,
    "u": formatUTCWeekdayNumberMonday,
    "U": formatUTCWeekNumberSunday,
    "V": formatUTCWeekNumberISO,
    "w": formatUTCWeekdayNumberSunday,
    "W": formatUTCWeekNumberMonday,
    "x": null,
    "X": null,
    "y": formatUTCYear,
    "Y": formatUTCFullYear,
    "Z": formatUTCZone,
    "%": formatLiteralPercent
  };

  var parses = {
    "a": parseShortWeekday,
    "A": parseWeekday,
    "b": parseShortMonth,
    "B": parseMonth,
    "c": parseLocaleDateTime,
    "d": parseDayOfMonth,
    "e": parseDayOfMonth,
    "f": parseMicroseconds,
    "g": parseYear,
    "G": parseFullYear,
    "H": parseHour24,
    "I": parseHour24,
    "j": parseDayOfYear,
    "L": parseMilliseconds,
    "m": parseMonthNumber,
    "M": parseMinutes,
    "p": parsePeriod,
    "q": parseQuarter,
    "Q": parseUnixTimestamp,
    "s": parseUnixTimestampSeconds,
    "S": parseSeconds,
    "u": parseWeekdayNumberMonday,
    "U": parseWeekNumberSunday,
    "V": parseWeekNumberISO,
    "w": parseWeekdayNumberSunday,
    "W": parseWeekNumberMonday,
    "x": parseLocaleDate,
    "X": parseLocaleTime,
    "y": parseYear,
    "Y": parseFullYear,
    "Z": parseZone,
    "%": parseLiteralPercent
  };

  // These recursive directive definitions must be deferred.
  formats.x = newFormat(locale_date, formats);
  formats.X = newFormat(locale_time, formats);
  formats.c = newFormat(locale_dateTime, formats);
  utcFormats.x = newFormat(locale_date, utcFormats);
  utcFormats.X = newFormat(locale_time, utcFormats);
  utcFormats.c = newFormat(locale_dateTime, utcFormats);

  function newFormat(specifier, formats) {
    return function(date) {
      var string = [],
          i = -1,
          j = 0,
          n = specifier.length,
          c,
          pad,
          format;

      if (!(date instanceof Date)) date = new Date(+date);

      while (++i < n) {
        if (specifier.charCodeAt(i) === 37) {
          string.push(specifier.slice(j, i));
          if ((pad = pads[c = specifier.charAt(++i)]) != null) c = specifier.charAt(++i);
          else pad = c === "e" ? " " : "0";
          if (format = formats[c]) c = format(date, pad);
          string.push(c);
          j = i + 1;
        }
      }

      string.push(specifier.slice(j, i));
      return string.join("");
    };
  }

  function newParse(specifier, Z) {
    return function(string) {
      var d = newDate(1900, undefined, 1),
          i = parseSpecifier(d, specifier, string += "", 0),
          week, day$1;
      if (i != string.length) return null;

      // If a UNIX timestamp is specified, return it.
      if ("Q" in d) return new Date(d.Q);
      if ("s" in d) return new Date(d.s * 1000 + ("L" in d ? d.L : 0));

      // If this is utcParse, never use the local timezone.
      if (Z && !("Z" in d)) d.Z = 0;

      // The am-pm flag is 0 for AM, and 1 for PM.
      if ("p" in d) d.H = d.H % 12 + d.p * 12;

      // If the month was not specified, inherit from the quarter.
      if (d.m === undefined) d.m = "q" in d ? d.q : 0;

      // Convert day-of-week and week-of-year to day-of-year.
      if ("V" in d) {
        if (d.V < 1 || d.V > 53) return null;
        if (!("w" in d)) d.w = 1;
        if ("Z" in d) {
          week = utcDate(newDate(d.y, 0, 1)), day$1 = week.getUTCDay();
          week = day$1 > 4 || day$1 === 0 ? utcMonday.ceil(week) : utcMonday(week);
          week = utcDay.offset(week, (d.V - 1) * 7);
          d.y = week.getUTCFullYear();
          d.m = week.getUTCMonth();
          d.d = week.getUTCDate() + (d.w + 6) % 7;
        } else {
          week = localDate(newDate(d.y, 0, 1)), day$1 = week.getDay();
          week = day$1 > 4 || day$1 === 0 ? monday.ceil(week) : monday(week);
          week = day.offset(week, (d.V - 1) * 7);
          d.y = week.getFullYear();
          d.m = week.getMonth();
          d.d = week.getDate() + (d.w + 6) % 7;
        }
      } else if ("W" in d || "U" in d) {
        if (!("w" in d)) d.w = "u" in d ? d.u % 7 : "W" in d ? 1 : 0;
        day$1 = "Z" in d ? utcDate(newDate(d.y, 0, 1)).getUTCDay() : localDate(newDate(d.y, 0, 1)).getDay();
        d.m = 0;
        d.d = "W" in d ? (d.w + 6) % 7 + d.W * 7 - (day$1 + 5) % 7 : d.w + d.U * 7 - (day$1 + 6) % 7;
      }

      // If a time zone is specified, all fields are interpreted as UTC and then
      // offset according to the specified time zone.
      if ("Z" in d) {
        d.H += d.Z / 100 | 0;
        d.M += d.Z % 100;
        return utcDate(d);
      }

      // Otherwise, all fields are in local time.
      return localDate(d);
    };
  }

  function parseSpecifier(d, specifier, string, j) {
    var i = 0,
        n = specifier.length,
        m = string.length,
        c,
        parse;

    while (i < n) {
      if (j >= m) return -1;
      c = specifier.charCodeAt(i++);
      if (c === 37) {
        c = specifier.charAt(i++);
        parse = parses[c in pads ? specifier.charAt(i++) : c];
        if (!parse || ((j = parse(d, string, j)) < 0)) return -1;
      } else if (c != string.charCodeAt(j++)) {
        return -1;
      }
    }

    return j;
  }

  function parsePeriod(d, string, i) {
    var n = periodRe.exec(string.slice(i));
    return n ? (d.p = periodLookup[n[0].toLowerCase()], i + n[0].length) : -1;
  }

  function parseShortWeekday(d, string, i) {
    var n = shortWeekdayRe.exec(string.slice(i));
    return n ? (d.w = shortWeekdayLookup[n[0].toLowerCase()], i + n[0].length) : -1;
  }

  function parseWeekday(d, string, i) {
    var n = weekdayRe.exec(string.slice(i));
    return n ? (d.w = weekdayLookup[n[0].toLowerCase()], i + n[0].length) : -1;
  }

  function parseShortMonth(d, string, i) {
    var n = shortMonthRe.exec(string.slice(i));
    return n ? (d.m = shortMonthLookup[n[0].toLowerCase()], i + n[0].length) : -1;
  }

  function parseMonth(d, string, i) {
    var n = monthRe.exec(string.slice(i));
    return n ? (d.m = monthLookup[n[0].toLowerCase()], i + n[0].length) : -1;
  }

  function parseLocaleDateTime(d, string, i) {
    return parseSpecifier(d, locale_dateTime, string, i);
  }

  function parseLocaleDate(d, string, i) {
    return parseSpecifier(d, locale_date, string, i);
  }

  function parseLocaleTime(d, string, i) {
    return parseSpecifier(d, locale_time, string, i);
  }

  function formatShortWeekday(d) {
    return locale_shortWeekdays[d.getDay()];
  }

  function formatWeekday(d) {
    return locale_weekdays[d.getDay()];
  }

  function formatShortMonth(d) {
    return locale_shortMonths[d.getMonth()];
  }

  function formatMonth(d) {
    return locale_months[d.getMonth()];
  }

  function formatPeriod(d) {
    return locale_periods[+(d.getHours() >= 12)];
  }

  function formatQuarter(d) {
    return 1 + ~~(d.getMonth() / 3);
  }

  function formatUTCShortWeekday(d) {
    return locale_shortWeekdays[d.getUTCDay()];
  }

  function formatUTCWeekday(d) {
    return locale_weekdays[d.getUTCDay()];
  }

  function formatUTCShortMonth(d) {
    return locale_shortMonths[d.getUTCMonth()];
  }

  function formatUTCMonth(d) {
    return locale_months[d.getUTCMonth()];
  }

  function formatUTCPeriod(d) {
    return locale_periods[+(d.getUTCHours() >= 12)];
  }

  function formatUTCQuarter(d) {
    return 1 + ~~(d.getUTCMonth() / 3);
  }

  return {
    format: function(specifier) {
      var f = newFormat(specifier += "", formats);
      f.toString = function() { return specifier; };
      return f;
    },
    parse: function(specifier) {
      var p = newParse(specifier += "", false);
      p.toString = function() { return specifier; };
      return p;
    },
    utcFormat: function(specifier) {
      var f = newFormat(specifier += "", utcFormats);
      f.toString = function() { return specifier; };
      return f;
    },
    utcParse: function(specifier) {
      var p = newParse(specifier += "", true);
      p.toString = function() { return specifier; };
      return p;
    }
  };
}

var pads = {"-": "", "_": " ", "0": "0"},
    numberRe = /^\s*\d+/, // note: ignores next directive
    percentRe = /^%/,
    requoteRe = /[\\^$*+?|[\]().{}]/g;

function pad(value, fill, width) {
  var sign = value < 0 ? "-" : "",
      string = (sign ? -value : value) + "",
      length = string.length;
  return sign + (length < width ? new Array(width - length + 1).join(fill) + string : string);
}

function requote(s) {
  return s.replace(requoteRe, "\\$&");
}

function formatRe(names) {
  return new RegExp("^(?:" + names.map(requote).join("|") + ")", "i");
}

function formatLookup(names) {
  var map = {}, i = -1, n = names.length;
  while (++i < n) map[names[i].toLowerCase()] = i;
  return map;
}

function parseWeekdayNumberSunday(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 1));
  return n ? (d.w = +n[0], i + n[0].length) : -1;
}

function parseWeekdayNumberMonday(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 1));
  return n ? (d.u = +n[0], i + n[0].length) : -1;
}

function parseWeekNumberSunday(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.U = +n[0], i + n[0].length) : -1;
}

function parseWeekNumberISO(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.V = +n[0], i + n[0].length) : -1;
}

function parseWeekNumberMonday(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.W = +n[0], i + n[0].length) : -1;
}

function parseFullYear(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 4));
  return n ? (d.y = +n[0], i + n[0].length) : -1;
}

function parseYear(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.y = +n[0] + (+n[0] > 68 ? 1900 : 2000), i + n[0].length) : -1;
}

function parseZone(d, string, i) {
  var n = /^(Z)|([+-]\d\d)(?::?(\d\d))?/.exec(string.slice(i, i + 6));
  return n ? (d.Z = n[1] ? 0 : -(n[2] + (n[3] || "00")), i + n[0].length) : -1;
}

function parseQuarter(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 1));
  return n ? (d.q = n[0] * 3 - 3, i + n[0].length) : -1;
}

function parseMonthNumber(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.m = n[0] - 1, i + n[0].length) : -1;
}

function parseDayOfMonth(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.d = +n[0], i + n[0].length) : -1;
}

function parseDayOfYear(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 3));
  return n ? (d.m = 0, d.d = +n[0], i + n[0].length) : -1;
}

function parseHour24(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.H = +n[0], i + n[0].length) : -1;
}

function parseMinutes(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.M = +n[0], i + n[0].length) : -1;
}

function parseSeconds(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 2));
  return n ? (d.S = +n[0], i + n[0].length) : -1;
}

function parseMilliseconds(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 3));
  return n ? (d.L = +n[0], i + n[0].length) : -1;
}

function parseMicroseconds(d, string, i) {
  var n = numberRe.exec(string.slice(i, i + 6));
  return n ? (d.L = Math.floor(n[0] / 1000), i + n[0].length) : -1;
}

function parseLiteralPercent(d, string, i) {
  var n = percentRe.exec(string.slice(i, i + 1));
  return n ? i + n[0].length : -1;
}

function parseUnixTimestamp(d, string, i) {
  var n = numberRe.exec(string.slice(i));
  return n ? (d.Q = +n[0], i + n[0].length) : -1;
}

function parseUnixTimestampSeconds(d, string, i) {
  var n = numberRe.exec(string.slice(i));
  return n ? (d.s = +n[0], i + n[0].length) : -1;
}

function formatDayOfMonth(d, p) {
  return pad(d.getDate(), p, 2);
}

function formatHour24(d, p) {
  return pad(d.getHours(), p, 2);
}

function formatHour12(d, p) {
  return pad(d.getHours() % 12 || 12, p, 2);
}

function formatDayOfYear(d, p) {
  return pad(1 + day.count(year(d), d), p, 3);
}

function formatMilliseconds(d, p) {
  return pad(d.getMilliseconds(), p, 3);
}

function formatMicroseconds(d, p) {
  return formatMilliseconds(d, p) + "000";
}

function formatMonthNumber(d, p) {
  return pad(d.getMonth() + 1, p, 2);
}

function formatMinutes(d, p) {
  return pad(d.getMinutes(), p, 2);
}

function formatSeconds(d, p) {
  return pad(d.getSeconds(), p, 2);
}

function formatWeekdayNumberMonday(d) {
  var day = d.getDay();
  return day === 0 ? 7 : day;
}

function formatWeekNumberSunday(d, p) {
  return pad(sunday.count(year(d) - 1, d), p, 2);
}

function dISO(d) {
  var day = d.getDay();
  return (day >= 4 || day === 0) ? thursday(d) : thursday.ceil(d);
}

function formatWeekNumberISO(d, p) {
  d = dISO(d);
  return pad(thursday.count(year(d), d) + (year(d).getDay() === 4), p, 2);
}

function formatWeekdayNumberSunday(d) {
  return d.getDay();
}

function formatWeekNumberMonday(d, p) {
  return pad(monday.count(year(d) - 1, d), p, 2);
}

function formatYear(d, p) {
  return pad(d.getFullYear() % 100, p, 2);
}

function formatYearISO(d, p) {
  d = dISO(d);
  return pad(d.getFullYear() % 100, p, 2);
}

function formatFullYear(d, p) {
  return pad(d.getFullYear() % 10000, p, 4);
}

function formatFullYearISO(d, p) {
  var day = d.getDay();
  d = (day >= 4 || day === 0) ? thursday(d) : thursday.ceil(d);
  return pad(d.getFullYear() % 10000, p, 4);
}

function formatZone(d) {
  var z = d.getTimezoneOffset();
  return (z > 0 ? "-" : (z *= -1, "+"))
      + pad(z / 60 | 0, "0", 2)
      + pad(z % 60, "0", 2);
}

function formatUTCDayOfMonth(d, p) {
  return pad(d.getUTCDate(), p, 2);
}

function formatUTCHour24(d, p) {
  return pad(d.getUTCHours(), p, 2);
}

function formatUTCHour12(d, p) {
  return pad(d.getUTCHours() % 12 || 12, p, 2);
}

function formatUTCDayOfYear(d, p) {
  return pad(1 + utcDay.count(utcYear(d), d), p, 3);
}

function formatUTCMilliseconds(d, p) {
  return pad(d.getUTCMilliseconds(), p, 3);
}

function formatUTCMicroseconds(d, p) {
  return formatUTCMilliseconds(d, p) + "000";
}

function formatUTCMonthNumber(d, p) {
  return pad(d.getUTCMonth() + 1, p, 2);
}

function formatUTCMinutes(d, p) {
  return pad(d.getUTCMinutes(), p, 2);
}

function formatUTCSeconds(d, p) {
  return pad(d.getUTCSeconds(), p, 2);
}

function formatUTCWeekdayNumberMonday(d) {
  var dow = d.getUTCDay();
  return dow === 0 ? 7 : dow;
}

function formatUTCWeekNumberSunday(d, p) {
  return pad(utcSunday.count(utcYear(d) - 1, d), p, 2);
}

function UTCdISO(d) {
  var day = d.getUTCDay();
  return (day >= 4 || day === 0) ? utcThursday(d) : utcThursday.ceil(d);
}

function formatUTCWeekNumberISO(d, p) {
  d = UTCdISO(d);
  return pad(utcThursday.count(utcYear(d), d) + (utcYear(d).getUTCDay() === 4), p, 2);
}

function formatUTCWeekdayNumberSunday(d) {
  return d.getUTCDay();
}

function formatUTCWeekNumberMonday(d, p) {
  return pad(utcMonday.count(utcYear(d) - 1, d), p, 2);
}

function formatUTCYear(d, p) {
  return pad(d.getUTCFullYear() % 100, p, 2);
}

function formatUTCYearISO(d, p) {
  d = UTCdISO(d);
  return pad(d.getUTCFullYear() % 100, p, 2);
}

function formatUTCFullYear(d, p) {
  return pad(d.getUTCFullYear() % 10000, p, 4);
}

function formatUTCFullYearISO(d, p) {
  var day = d.getUTCDay();
  d = (day >= 4 || day === 0) ? utcThursday(d) : utcThursday.ceil(d);
  return pad(d.getUTCFullYear() % 10000, p, 4);
}

function formatUTCZone() {
  return "+0000";
}

function formatLiteralPercent() {
  return "%";
}

function formatUnixTimestamp(d) {
  return +d;
}

function formatUnixTimestampSeconds(d) {
  return Math.floor(+d / 1000);
}

var locale;
var utcFormat;
var utcParse;

defaultLocale({
  dateTime: "%x, %X",
  date: "%-m/%-d/%Y",
  time: "%-I:%M:%S %p",
  periods: ["AM", "PM"],
  days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
  shortDays: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
  months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
  shortMonths: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
});

function defaultLocale(definition) {
  locale = formatLocale$1(definition);
  locale.format;
  locale.parse;
  utcFormat = locale.utcFormat;
  utcParse = locale.utcParse;
  return locale;
}

function notAStringError(not_a_str) {
	throw new TypeError(
		"Expected a value of type string but got a value of type " +
			typeof not_a_str,
	);
}

function shield(func) {
	return function (str) {
		if (typeof str !== "string") notAStringError(str);
		str = str.trim();
		return str ? func(str) : null;
	};
}

var EXAMPLE_DATETIME = new Date(1972, 3, 27, 19, 45, 5); // End of Apollo 16 mission

var CUSTOM_FORMAT_REGEXES = {
	// Regexes matching dates where the month would commonly be written with 4-letters
	// e.g. Sept 21, june 09, July 7
	"%b %d": [
		{
			regex: /^june\s(30|[12][0-9]|0?[1-9])$/i, // matches dates from June 0-30
			toDate: function (str) {
				return new Date(null, 5, str.split(/\s/)[1]);
			},
		},
		{
			regex: /^july\s(3[01]|[12][0-9]|0?[1-9])$/i, // matches dates from July 0-31
			toDate: function (str) {
				return new Date(null, 6, str.split(/\s/)[1]);
			},
		},
		{
			regex: /^sept\s(30|[12][0-9]|0?[1-9])$/i, // matches dates from September 0-30 using the 4-letter 'Sept' abbreviation
			toDate: function (str) {
				return new Date(null, 8, str.split(/\s/)[1]);
			},
		},
	],
	// Regexes matching dates where the month would commonly be written with 4-letters
	// e.g. 21 Sept, 09 june, 7 July
	"%d %b": [
		{
			regex: /^(0?[1-9]|[1-9][0-9])\sjune$/i, // matches dates from 0-99 June
			toDate: function (str) {
				return new Date(null, 5, str.split(/\s/)[0]);
			},
		},
		{
			regex: /^(0?[1-9]|[1-9][0-9])\sjuly$/i, // matches dates from 0-99 July
			toDate: function (str) {
				return new Date(null, 6, str.split(/\s/)[0]);
			},
		},
		{
			regex: /^(0?[1-9]|[1-9][0-9])\ssept$/i, // matches dates from 0-99 September using the 4-letter 'Sept' abbreviation
			toDate: function (str) {
				return new Date(null, 8, str.split(/\s/)[0]);
			},
		},
	],
};

// Checks a string against datetime regexes for different strftime date formats so that
// non-standard datetime strings can still be parsed as dates by d3-time-parse
function customDatetimeParser(strftime_formats) {
	return function (str) {
		var parsed_datetime = null;
		strftime_formats.forEach(function (strftime_format) {
			var valid_datetime = str.match(strftime_format.regex);
			if (valid_datetime) parsed_datetime = strftime_format.toDate(str);
		});
		return parsed_datetime;
	};
}

function createDatetimeInterpretation(format_string, secondaryTest) {
	var parser = utcParse(format_string);
	var formatter = utcFormat(format_string);
	var test;
	if (typeof secondaryTest === "function") {
		test = shield(function (str) {
			return secondaryTest(str, parser(str) !== null);
		});
	} else {
		test = shield(function (str) {
			return parser(str) !== null;
		});
	}

	return Object.freeze({
		test: test,
		parse: shield(function (str) {
			return (
				parser(str) ||
				(CUSTOM_FORMAT_REGEXES[format_string]
					? customDatetimeParser(CUSTOM_FORMAT_REGEXES[format_string])(str)
					: null)
			);
		}),
		format: function (dt) {
			return formatter(dt);
		},
		type: "datetime",
		description: format_string,
		id: "datetime$" + format_string,
		example: formatter(EXAMPLE_DATETIME),
	});
}

var datetime_interpretations = Object.freeze([
	createDatetimeInterpretation("%Y-%m-%dT%H:%M:%S.%LZ"), // 1972-04-27T10:10:10.303Z
	createDatetimeInterpretation("%Y-%m-%d %H:%M:%S"), // 1972-04-27 07:45:05
	createDatetimeInterpretation("%Y-%m-%dT%H:%M:%S"), // 1972-04-27T07:45:05
	createDatetimeInterpretation("%Y-%m-%dT%H:%M:%SZ"), // 1972-04-27T10:10:10Z

	createDatetimeInterpretation("%d/%m/%Y", function (str, passed_primary_test) {
		// 27/04/1972
		if (!passed_primary_test) return false;
		var arr = str.split("/").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 31 && arr[1] > 0 && arr[1] <= 12 && arr[2] >= 1000
		);
	}),
	createDatetimeInterpretation(
		"%d/%m/%Y %H:%M",
		function (str, passed_primary_test) {
			// 27/04/1972 19:45
			if (!passed_primary_test) return false;
			var arr = str.split(/[/ :]/).map(parseFloat);
			return (
				arr[0] > 0 &&
				arr[0] <= 31 &&
				arr[1] > 0 &&
				arr[1] <= 12 &&
				arr[2] >= 1000 &&
				arr[3] >= 0 &&
				arr[3] < 24 &&
				arr[4] >= 0 &&
				arr[4] < 60
			);
		},
	),
	createDatetimeInterpretation("%d/%m/%y", function (str, passed_primary_test) {
		// 27/04/72
		if (!passed_primary_test) return false;
		var arr = str.split("/").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 31 && arr[1] > 0 && arr[1] <= 12 && !isNaN(arr[2])
		);
	}),
	createDatetimeInterpretation("%m/%d/%Y", function (str, passed_primary_test) {
		// 04/27/1972
		if (!passed_primary_test) return false;
		var arr = str.split("/").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 12 && arr[1] > 0 && arr[1] <= 31 && arr[2] >= 1000
		);
	}),
	createDatetimeInterpretation(
		"%m/%d/%Y %H:%M",
		function (str, passed_primary_test) {
			// 04/27/1972 19:45
			if (!passed_primary_test) return false;
			var arr = str.split(/[/ :]/).map(parseFloat);
			return (
				arr[0] > 0 &&
				arr[0] <= 12 &&
				arr[1] > 0 &&
				arr[1] <= 31 &&
				arr[2] >= 1000 &&
				arr[3] >= 0 &&
				arr[3] < 24 &&
				arr[4] >= 0 &&
				arr[4] < 60
			);
		},
	),
	createDatetimeInterpretation("%m/%d/%y", function (str, passed_primary_test) {
		// 04/27/72
		if (!passed_primary_test) return false;
		var arr = str.split("/").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 12 && arr[1] > 0 && arr[1] <= 31 && !isNaN(arr[2])
		);
	}),
	createDatetimeInterpretation("%Y/%m/%d", function (str, passed_primary_test) {
		// 1972/04/27
		if (!passed_primary_test) return false;
		var arr = str.split("/").map(parseFloat);
		return (
			arr[0] >= 1000 && arr[1] > 0 && arr[1] <= 12 && arr[2] > 0 && arr[2] <= 31
		);
	}),

	createDatetimeInterpretation("%d-%m-%Y", function (str, passed_primary_test) {
		// 27-04-1972
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 31 && arr[1] > 0 && arr[1] <= 12 && arr[2] >= 1000
		);
	}),
	createDatetimeInterpretation("%d-%m-%y", function (str, passed_primary_test) {
		// 27-04-72
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 31 && arr[1] > 0 && arr[1] <= 12 && !isNaN(arr[2])
		);
	}),

	createDatetimeInterpretation("%d.%m.%Y", function (str, passed_primary_test) {
		// 27.04.1972
		if (!passed_primary_test) return false;

		var arr = str.split(".").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 31 && arr[1] > 0 && arr[1] <= 12 && arr[2] >= 1000
		);
	}),

	createDatetimeInterpretation("%m.%d.%y", function (str, passed_primary_test) {
		// 04.27.72
		if (!passed_primary_test) return false;

		var arr = str.split(".").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 12 && arr[1] > 0 && arr[1] <= 31 && !isNaN(arr[2])
		);
	}),

	createDatetimeInterpretation("%m-%d-%Y", function (str, passed_primary_test) {
		// 04-27-1972
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 12 && arr[1] > 0 && arr[1] <= 31 && arr[2] >= 1000
		);
	}),
	createDatetimeInterpretation("%m-%d-%y", function (str, passed_primary_test) {
		// 04-27-72
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return (
			arr[0] > 0 && arr[0] <= 12 && arr[1] > 0 && arr[1] <= 31 && !isNaN(arr[2])
		);
	}),
	createDatetimeInterpretation("%Y-%m-%d", function (str, passed_primary_test) {
		// 1972-04-27
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return (
			arr[0] >= 1000 && arr[1] > 0 && arr[1] <= 12 && arr[2] > 0 && arr[2] <= 31
		);
	}),
	createDatetimeInterpretation("%Y-%m", function (str, passed_primary_test) {
		// 1972-04
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return arr[0] >= 1000 && arr[1] > 0 && arr[1] <= 12;
	}),
	createDatetimeInterpretation("%Y%m", function (str, passed_primary_test) {
		// 197204
		if (!passed_primary_test) return false;
		var year = parseFloat(str.slice(0, 4));
		var month = parseFloat(str.slice(4));
		return year > 1000 && month > 0 && month <= 12;
	}),

	createDatetimeInterpretation("%d %b %Y", function (str, passed_primary_test) {
		// 27 Apr 1972
		if (!passed_primary_test) return false;
		var arr = str.split(" ").map(parseFloat);
		return arr[0] > 0 && arr[0] <= 31 && arr[2] >= 1000;
	}),
	createDatetimeInterpretation("%d %B %Y", function (str, passed_primary_test) {
		// 27 April 1972
		if (!passed_primary_test) return false;
		var arr = str.split(" ").map(parseFloat);
		return arr[0] > 0 && arr[0] <= 31 && arr[2] >= 1000;
	}),
	createDatetimeInterpretation("%d %b %y"), // 27 Apr 72
	createDatetimeInterpretation("%-d %b ’%y"), // 27 Apr ’72
	createDatetimeInterpretation("%d %B %y"), // 27 April 72
	createDatetimeInterpretation("%d-%b-%Y", function (str, passed_primary_test) {
		// 27-Apr-1972
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return arr[0] > 0 && arr[0] <= 31 && arr[2] >= 1000;
	}),
	createDatetimeInterpretation("%d-%B-%Y", function (str, passed_primary_test) {
		// 27-April-1972
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return arr[0] > 0 && arr[0] <= 31 && arr[2] >= 1000;
	}),
	createDatetimeInterpretation("%d-%b-%y"), // 27-Apr-72
	createDatetimeInterpretation("%d-%B-%y"), // 27-April-72

	createDatetimeInterpretation("%m/%Y", function (str, passed_primary_test) {
		// 04/1972
		if (!passed_primary_test) return false;
		var arr = str.split("/").map(parseFloat);
		return arr[0] > 0 && arr[0] <= 12 && arr[1] >= 1000;
	}),
	createDatetimeInterpretation("%m/%y"), // 04/72
	createDatetimeInterpretation("%b %Y", function (str, passed_primary_test) {
		// Apr 1972
		if (!passed_primary_test) return false;
		var arr = str.split(" ").map(parseFloat);
		return arr[1] >= 1000;
	}),
	createDatetimeInterpretation("%B %Y", function (str, passed_primary_test) {
		// April 1972
		if (!passed_primary_test) return false;
		var arr = str.split(" ").map(parseFloat);
		return arr[1] >= 1000;
	}),
	createDatetimeInterpretation("%b-%y"), // Apr-72
	createDatetimeInterpretation("%b %y"), // Apr 72
	createDatetimeInterpretation("%B %y"), // April 72
	createDatetimeInterpretation("%b '%y"), // Apr '72
	createDatetimeInterpretation("%b ’%y"), // Apr ’72
	createDatetimeInterpretation("%B %-d %Y"), // April 27 1972

	createDatetimeInterpretation("%d %b", function (str, passed_primary_test) {
		if (passed_primary_test) return true;
		return !!customDatetimeParser(CUSTOM_FORMAT_REGEXES["%d %b"])(str);
	}),
	createDatetimeInterpretation("%d %B"), // 27 April
	createDatetimeInterpretation("%b %d", function (str, passed_primary_test) {
		if (passed_primary_test) return true;
		return !!customDatetimeParser(CUSTOM_FORMAT_REGEXES["%b %d"])(str);
	}),
	createDatetimeInterpretation("%B %d"), // April 27
	createDatetimeInterpretation("%d-%m", function (str, passed_primary_test) {
		// 27-04
		if (!passed_primary_test) return false;
		var arr = str.split("-").map(parseFloat);
		return arr[0] > 0 && arr[0] <= 31 && arr[1] > 0 && arr[1] <= 12;
	}),
	createDatetimeInterpretation("%m-%d"), // 04-27
	createDatetimeInterpretation("%d/%m"), // 27/04
	createDatetimeInterpretation("%m/%d"), // 04/27
	createDatetimeInterpretation("%b %d %Y"), // Apr 27 1972
	createDatetimeInterpretation("%b %d %Y, %-I.%M%p"), // Apr 27 1972, 5.30PM

	createDatetimeInterpretation("%Y", function (str, passed_primary_test) {
		// 1972
		if (!passed_primary_test) return false;
		var val = parseFloat(str);
		return val > 1499 && val < 2200;
	}),
	createDatetimeInterpretation("%B"), // April
	createDatetimeInterpretation("%b"), // Apr

	createDatetimeInterpretation("%X"), // 7:45:05 PM
	createDatetimeInterpretation("%I:%M %p"), // 07:45 PM
	createDatetimeInterpretation("%-I.%M%p"), // 7.45PM
	createDatetimeInterpretation("%H:%M", function (str, passed_primary_test) {
		// 19:45
		if (!passed_primary_test) return false;
		var arr = str.split(":").map(parseFloat);
		return arr[0] >= 0 && arr[0] < 24;
	}),
	createDatetimeInterpretation("%H:%M:%S"), // 19:45:05
	createDatetimeInterpretation("%M:%S"), // 45:05
	createDatetimeInterpretation("%-I%p"), // 7PM

	createDatetimeInterpretation("Q%q %Y", function (str, passed_primary_test) {
		// Q2 1972
		if (!passed_primary_test) return false;
		return str.replace(/\s/g, "").length === 6;
	}),
	createDatetimeInterpretation("%Y Q%q", function (str, passed_primary_test) {
		// 1972 Q2
		if (!passed_primary_test) return false;
		return str.replace(/\s/g, "").length === 6;
	}),
	createDatetimeInterpretation("%YM%m", function (str, passed_primary_test) {
		// 1972M04
		if (!passed_primary_test) return false;
		var arr = str.split("M").map(parseFloat);
		return arr[0] >= 1000 && arr[1] > 0 && arr[1] <= 12;
	}),
	createDatetimeInterpretation("%YQ%q", function (str, passed_primary_test) {
		// 1972Q2
		if (!passed_primary_test) return false;
		var arr = str.split("Q").map(parseFloat);
		return arr[0] >= 1000 && arr[1] > 0 && arr[1] <= 4;
	}),
	createDatetimeInterpretation("%YÁ%q", function (str, passed_primary_test) {
		// 1972Á2
		if (!passed_primary_test) return false;
		var arr = str.split("Á").map(parseFloat);
		return arr[0] >= 1000 && arr[1] > 0 && arr[1] <= 4;
	}),
]);

function formatDecimal(x) {
  return Math.abs(x = Math.round(x)) >= 1e21
      ? x.toLocaleString("en").replace(/,/g, "")
      : x.toString(10);
}

// Computes the decimal coefficient and exponent of the specified number x with
// significant digits p, where x is positive and p is in [1, 21] or undefined.
// For example, formatDecimalParts(1.23) returns ["123", 0].
function formatDecimalParts(x, p) {
  if ((i = (x = p ? x.toExponential(p - 1) : x.toExponential()).indexOf("e")) < 0) return null; // NaN, ±Infinity
  var i, coefficient = x.slice(0, i);

  // The string returned by toExponential either has the form \d\.\d+e[-+]\d+
  // (e.g., 1.2e+3) or the form \de[-+]\d+ (e.g., 1e+3).
  return [
    coefficient.length > 1 ? coefficient[0] + coefficient.slice(2) : coefficient,
    +x.slice(i + 1)
  ];
}

function exponent(x) {
  return x = formatDecimalParts(Math.abs(x)), x ? x[1] : NaN;
}

function formatGroup(grouping, thousands) {
  return function(value, width) {
    var i = value.length,
        t = [],
        j = 0,
        g = grouping[0],
        length = 0;

    while (i > 0 && g > 0) {
      if (length + g + 1 > width) g = Math.max(1, width - length);
      t.push(value.substring(i -= g, i + g));
      if ((length += g + 1) > width) break;
      g = grouping[j = (j + 1) % grouping.length];
    }

    return t.reverse().join(thousands);
  };
}

function formatNumerals(numerals) {
  return function(value) {
    return value.replace(/[0-9]/g, function(i) {
      return numerals[+i];
    });
  };
}

// [[fill]align][sign][symbol][0][width][,][.precision][~][type]
var re = /^(?:(.)?([<>=^]))?([+\-( ])?([$#])?(0)?(\d+)?(,)?(\.\d+)?(~)?([a-z%])?$/i;

function formatSpecifier(specifier) {
  if (!(match = re.exec(specifier))) throw new Error("invalid format: " + specifier);
  var match;
  return new FormatSpecifier({
    fill: match[1],
    align: match[2],
    sign: match[3],
    symbol: match[4],
    zero: match[5],
    width: match[6],
    comma: match[7],
    precision: match[8] && match[8].slice(1),
    trim: match[9],
    type: match[10]
  });
}

formatSpecifier.prototype = FormatSpecifier.prototype; // instanceof

function FormatSpecifier(specifier) {
  this.fill = specifier.fill === undefined ? " " : specifier.fill + "";
  this.align = specifier.align === undefined ? ">" : specifier.align + "";
  this.sign = specifier.sign === undefined ? "-" : specifier.sign + "";
  this.symbol = specifier.symbol === undefined ? "" : specifier.symbol + "";
  this.zero = !!specifier.zero;
  this.width = specifier.width === undefined ? undefined : +specifier.width;
  this.comma = !!specifier.comma;
  this.precision = specifier.precision === undefined ? undefined : +specifier.precision;
  this.trim = !!specifier.trim;
  this.type = specifier.type === undefined ? "" : specifier.type + "";
}

FormatSpecifier.prototype.toString = function() {
  return this.fill
      + this.align
      + this.sign
      + this.symbol
      + (this.zero ? "0" : "")
      + (this.width === undefined ? "" : Math.max(1, this.width | 0))
      + (this.comma ? "," : "")
      + (this.precision === undefined ? "" : "." + Math.max(0, this.precision | 0))
      + (this.trim ? "~" : "")
      + this.type;
};

// Trims insignificant zeros, e.g., replaces 1.2000k with 1.2k.
function formatTrim(s) {
  out: for (var n = s.length, i = 1, i0 = -1, i1; i < n; ++i) {
    switch (s[i]) {
      case ".": i0 = i1 = i; break;
      case "0": if (i0 === 0) i0 = i; i1 = i; break;
      default: if (!+s[i]) break out; if (i0 > 0) i0 = 0; break;
    }
  }
  return i0 > 0 ? s.slice(0, i0) + s.slice(i1 + 1) : s;
}

var prefixExponent;

function formatPrefixAuto(x, p) {
  var d = formatDecimalParts(x, p);
  if (!d) return x + "";
  var coefficient = d[0],
      exponent = d[1],
      i = exponent - (prefixExponent = Math.max(-8, Math.min(8, Math.floor(exponent / 3))) * 3) + 1,
      n = coefficient.length;
  return i === n ? coefficient
      : i > n ? coefficient + new Array(i - n + 1).join("0")
      : i > 0 ? coefficient.slice(0, i) + "." + coefficient.slice(i)
      : "0." + new Array(1 - i).join("0") + formatDecimalParts(x, Math.max(0, p + i - 1))[0]; // less than 1y!
}

function formatRounded(x, p) {
  var d = formatDecimalParts(x, p);
  if (!d) return x + "";
  var coefficient = d[0],
      exponent = d[1];
  return exponent < 0 ? "0." + new Array(-exponent).join("0") + coefficient
      : coefficient.length > exponent + 1 ? coefficient.slice(0, exponent + 1) + "." + coefficient.slice(exponent + 1)
      : coefficient + new Array(exponent - coefficient.length + 2).join("0");
}

var formatTypes = {
  "%": function(x, p) { return (x * 100).toFixed(p); },
  "b": function(x) { return Math.round(x).toString(2); },
  "c": function(x) { return x + ""; },
  "d": formatDecimal,
  "e": function(x, p) { return x.toExponential(p); },
  "f": function(x, p) { return x.toFixed(p); },
  "g": function(x, p) { return x.toPrecision(p); },
  "o": function(x) { return Math.round(x).toString(8); },
  "p": function(x, p) { return formatRounded(x * 100, p); },
  "r": formatRounded,
  "s": formatPrefixAuto,
  "X": function(x) { return Math.round(x).toString(16).toUpperCase(); },
  "x": function(x) { return Math.round(x).toString(16); }
};

function identity(x) {
  return x;
}

var map = Array.prototype.map,
    prefixes = ["y","z","a","f","p","n","µ","m","","k","M","G","T","P","E","Z","Y"];

function formatLocale(locale) {
  var group = locale.grouping === undefined || locale.thousands === undefined ? identity : formatGroup(map.call(locale.grouping, Number), locale.thousands + ""),
      currencyPrefix = locale.currency === undefined ? "" : locale.currency[0] + "",
      currencySuffix = locale.currency === undefined ? "" : locale.currency[1] + "",
      decimal = locale.decimal === undefined ? "." : locale.decimal + "",
      numerals = locale.numerals === undefined ? identity : formatNumerals(map.call(locale.numerals, String)),
      percent = locale.percent === undefined ? "%" : locale.percent + "",
      minus = locale.minus === undefined ? "-" : locale.minus + "",
      nan = locale.nan === undefined ? "NaN" : locale.nan + "";

  function newFormat(specifier) {
    specifier = formatSpecifier(specifier);

    var fill = specifier.fill,
        align = specifier.align,
        sign = specifier.sign,
        symbol = specifier.symbol,
        zero = specifier.zero,
        width = specifier.width,
        comma = specifier.comma,
        precision = specifier.precision,
        trim = specifier.trim,
        type = specifier.type;

    // The "n" type is an alias for ",g".
    if (type === "n") comma = true, type = "g";

    // The "" type, and any invalid type, is an alias for ".12~g".
    else if (!formatTypes[type]) precision === undefined && (precision = 12), trim = true, type = "g";

    // If zero fill is specified, padding goes after sign and before digits.
    if (zero || (fill === "0" && align === "=")) zero = true, fill = "0", align = "=";

    // Compute the prefix and suffix.
    // For SI-prefix, the suffix is lazily computed.
    var prefix = symbol === "$" ? currencyPrefix : symbol === "#" && /[boxX]/.test(type) ? "0" + type.toLowerCase() : "",
        suffix = symbol === "$" ? currencySuffix : /[%p]/.test(type) ? percent : "";

    // What format function should we use?
    // Is this an integer type?
    // Can this type generate exponential notation?
    var formatType = formatTypes[type],
        maybeSuffix = /[defgprs%]/.test(type);

    // Set the default precision if not specified,
    // or clamp the specified precision to the supported range.
    // For significant precision, it must be in [1, 21].
    // For fixed precision, it must be in [0, 20].
    precision = precision === undefined ? 6
        : /[gprs]/.test(type) ? Math.max(1, Math.min(21, precision))
        : Math.max(0, Math.min(20, precision));

    function format(value) {
      var valuePrefix = prefix,
          valueSuffix = suffix,
          i, n, c;

      if (type === "c") {
        valueSuffix = formatType(value) + valueSuffix;
        value = "";
      } else {
        value = +value;

        // Determine the sign. -0 is not less than 0, but 1 / -0 is!
        var valueNegative = value < 0 || 1 / value < 0;

        // Perform the initial formatting.
        value = isNaN(value) ? nan : formatType(Math.abs(value), precision);

        // Trim insignificant zeros.
        if (trim) value = formatTrim(value);

        // If a negative value rounds to zero after formatting, and no explicit positive sign is requested, hide the sign.
        if (valueNegative && +value === 0 && sign !== "+") valueNegative = false;

        // Compute the prefix and suffix.
        valuePrefix = (valueNegative ? (sign === "(" ? sign : minus) : sign === "-" || sign === "(" ? "" : sign) + valuePrefix;
        valueSuffix = (type === "s" ? prefixes[8 + prefixExponent / 3] : "") + valueSuffix + (valueNegative && sign === "(" ? ")" : "");

        // Break the formatted value into the integer “value” part that can be
        // grouped, and fractional or exponential “suffix” part that is not.
        if (maybeSuffix) {
          i = -1, n = value.length;
          while (++i < n) {
            if (c = value.charCodeAt(i), 48 > c || c > 57) {
              valueSuffix = (c === 46 ? decimal + value.slice(i + 1) : value.slice(i)) + valueSuffix;
              value = value.slice(0, i);
              break;
            }
          }
        }
      }

      // If the fill character is not "0", grouping is applied before padding.
      if (comma && !zero) value = group(value, Infinity);

      // Compute the padding.
      var length = valuePrefix.length + value.length + valueSuffix.length,
          padding = length < width ? new Array(width - length + 1).join(fill) : "";

      // If the fill character is "0", grouping is applied after padding.
      if (comma && zero) value = group(padding + value, padding.length ? width - valueSuffix.length : Infinity), padding = "";

      // Reconstruct the final output based on the desired alignment.
      switch (align) {
        case "<": value = valuePrefix + value + valueSuffix + padding; break;
        case "=": value = valuePrefix + padding + value + valueSuffix; break;
        case "^": value = padding.slice(0, length = padding.length >> 1) + valuePrefix + value + valueSuffix + padding.slice(length); break;
        default: value = padding + valuePrefix + value + valueSuffix; break;
      }

      return numerals(value);
    }

    format.toString = function() {
      return specifier + "";
    };

    return format;
  }

  function formatPrefix(specifier, value) {
    var f = newFormat((specifier = formatSpecifier(specifier), specifier.type = "f", specifier)),
        e = Math.max(-8, Math.min(8, Math.floor(exponent(value) / 3))) * 3,
        k = Math.pow(10, -e),
        prefix = prefixes[8 + e / 3];
    return function(value) {
      return f(k * value) + prefix;
    };
  }

  return {
    format: newFormat,
    formatPrefix: formatPrefix
  };
}

function getFormatFunction(interp) {
	var decimal = interp.decimal_mark;
	var thousands = interp.thousand_separator;
	var locale = formatLocale({
		decimal: decimal,
		thousands: thousands,
		grouping: [3],
		currency: ["", ""],
	});
	var format, specifier;

	return function (value, spec) {
		if (value === null) return "";
		if (!spec) spec = ",.2f";
		if (spec !== specifier) {
			specifier = spec;
			format = locale.format(specifier);
		}
		return format(value);
	};
}

// https://stackoverflow.com/a/16148273
var comma_point = {
	test: shield(function (str) {
		return /^(\+|-)?\d{1,3}(,\d{3})*(\.\d+)?((e|E)(\+|-)?\d+)?$/.test(
			str.trim(),
		);
	}),
	parse: shield(function (str) {
		return parseFloat(str.replace(/,/g, ""));
	}),
	description: "Comma thousand separator, point decimal mark",
	thousand_separator: ",",
	decimal_mark: ".",
	id: "number$comma_point",
	example: "12,235.56",
};

var space_point = {
	test: shield(function (str) {
		return /^(\+|-)?\d{1,3}(\s\d{3})*(\.\d+)?((e|E)(\+|-)?\d+)?$/.test(
			str.trim(),
		);
	}),
	parse: shield(function (str) {
		return parseFloat(str.replace(/\s/g, ""));
	}),
	description: "Space thousand separator, point decimal mark",
	thousand_separator: " ",
	decimal_mark: ".",
	id: "number$space_point",
	example: "12 235.56",
};

var none_point = {
	test: shield(function (str) {
		return /^(\+|-)?\d+(\.\d+)?((e|E)(\+|-)?\d+)?$/.test(str.trim());
	}),
	parse: shield(function (str) {
		return parseFloat(str);
	}),
	description: "No thousand separator, point decimal mark",
	thousand_separator: "",
	decimal_mark: ".",
	id: "number$none_point",
	example: "12235.56",
};

var point_comma = {
	test: shield(function (str) {
		return /^(\+|-)?\d{1,3}(\.\d{3})*(,\d+)?((e|E)(\+|-)?\d+)?$/.test(
			str.trim(),
		);
	}),
	parse: shield(function (str) {
		return parseFloat(str.replace(/\./g, "").replace(/,/, "."));
	}),
	description: "Point thousand separator, comma decimal mark",
	thousand_separator: ".",
	decimal_mark: ",",
	id: "number$point_comma",
	example: "12.235,56",
};

var space_comma = {
	test: shield(function (str) {
		return /^(\+|-)?\d{1,3}(\s\d{3})*(,\d+)?((e|E)(\+|-)?\d+)?$/.test(
			str.trim(),
		);
	}),
	parse: shield(function (str) {
		return parseFloat(str.replace(/\s/g, "").replace(/,/, "."));
	}),
	description: "Space thousand separator, comma decimal mark",
	thousand_separator: " ",
	decimal_mark: ",",
	id: "number$space_comma",
	example: "12 235,56",
};

var none_comma = {
	test: shield(function (str) {
		return /^(\+|-)?\d+(,\d+)?((e|E)(\+|-)?\d+)?$/.test(str.trim());
	}),
	parse: shield(function (str) {
		return parseFloat(str.replace(/,/, "."));
	}),
	description: "No thousand separator, comma decimal mark",
	thousand_separator: "",
	decimal_mark: ",",
	id: "number$none_comma",
	example: "12235,56",
};

var number_interpretations = Object.freeze([
	comma_point,
	space_point,
	point_comma,
	space_comma,
	none_point,
	none_comma,
]);

number_interpretations.forEach(function (interp) {
	interp.type = "number";
	interp.format = getFormatFunction(interp);
	Object.freeze(interp);
});

var string_interpretation = Object.freeze({
	test: function (str) {
		return typeof str === "string" ? true : notAStringError(str);
	},
	parse: function (str) {
		return typeof str === "string" ? str : notAStringError(str);
	},
	format: function (str) {
		if (typeof str === "string") return str;
	},
	type: "string",
	description: "Arbitrary string",
	id: "string$arbitrary_string",
});

var INTERPRETATION_OPTIONS = Object.freeze({
	datetime: datetime_interpretations,
	number: number_interpretations,
});

var DEFAULT_INTERPRETATIONS_ARRAY = Object.freeze([
	"datetime",
	"number",
	"string",
]);

var DEFAULT_OPTIONS = Object.freeze({
	n_max: 250,
	n_failing_values: 0,
	failure_fraction: 5 / 100,
	sort: true,
});

var OPTION_KEYS = Object.freeze(Object.keys(DEFAULT_OPTIONS));

function snakeToCamel(snake_string) {
	return snake_string.replace(/_(\w)/g, function (match, capture) {
		return capture.toUpperCase();
	});
}

function noSort(a, b) {
	return a.index - b.index;
}
function sortBySuccess(a, b) {
	return b.n_success - a.n_success || noSort(a, b);
}

function trim(value) {
	return ("" + value).trim();
}

function createAccessorFunction(accessor) {
	if (accessor === undefined)
		return function (value) {
			return trim(value);
		};
	if (typeof accessor === "function")
		return function (value, index) {
			return trim(accessor(value, index));
		};
	return function (value) {
		return trim(value["" + accessor]);
	};
}

function createInterpreter(interpretations_array) {
	if (!interpretations_array)
		interpretations_array = DEFAULT_INTERPRETATIONS_ARRAY;
	else if (!Array.isArray(interpretations_array))
		interpretations_array = [interpretations_array];

	var interpretations = interpretations_array.reduce(function (
		arr,
		interp_string,
	) {
		var interps = INTERPRETATION_OPTIONS[interp_string];
		if (interps) Array.prototype.push.apply(arr, interps);
		return arr;
	}, []);

	var include_string = interpretations_array.indexOf("string") !== -1;

	var options = OPTION_KEYS.reduce(function (obj, key) {
		obj[key] = DEFAULT_OPTIONS[key];
		return obj;
	}, {});

	var interpreter = function (input_array, accessor) {
		accessor = createAccessorFunction(accessor);
		var data = input_array.map(accessor).filter(Boolean);
		if (!data.length) return include_string ? [string_interpretation] : [];
		var n = Math.min(options.n_max, data.length);
		var n_max_failure = Math.floor(n * options.failure_fraction);
		var n_failing_values = options.n_failing_values;
		var sortMethod = options.sort ? sortBySuccess : noSort;

		var valid_interpreters = interpretations
			.slice()
			.reduce(function (keep, interp, index) {
				var n_fail = (i = 0);
				var failing_values = [];
				var complete_failure = false;

				for (var i = 0; i < n; i++) {
					var val = data[i];
					var is_valid = interp.test(val);
					if (is_valid) continue;
					if (++n_fail > n_max_failure) complete_failure = true;
					else if (failing_values.indexOf(val) === -1) {
						failing_values.push(val);
						if (failing_values.length > n_failing_values)
							complete_failure = true;
					}
					if (complete_failure) break;
				}

				if (!complete_failure)
					keep.push({ interp: interp, n_success: n - n_fail, index: index });

				return keep;
			}, [])
			.sort(sortMethod)
			.map(function (valid) {
				return valid.interp;
			});

		if (include_string) valid_interpreters.push(string_interpretation);

		return valid_interpreters;
	};

	OPTION_KEYS.forEach(function (option) {
		interpreter[snakeToCamel(option)] = function (value) {
			if (value === undefined) return options[option];
			options[option] = value;
			return interpreter;
		};
	});

	return interpreter;
}

createInterpreter.DATETIME_IDS = Object.freeze(
	datetime_interpretations.map(function (d) {
		return d.id;
	}),
);
createInterpreter.NUMBER_IDS = Object.freeze(
	number_interpretations.map(function (d) {
		return d.id;
	}),
);
createInterpreter.STRING_IDS = Object.freeze([string_interpretation.id]);

createInterpreter.getInterpretation = (function () {
	var interpretations = datetime_interpretations.concat(
		number_interpretations,
		string_interpretation,
	);
	var lookup = interpretations.reduce(function (l, d) {
		l[d.id] = d;
		return l;
	}, {});
	return function (id) {
		return lookup[id];
	};
})();

createInterpreter._createAccessorFunction = createAccessorFunction;

// Polyfills for IE11 and Edge

// Add findIndex method to Array
// https://tc39.github.io/ecma262/#sec-array.prototype.findindex
if (!Array.prototype.findIndex) {
	Object.defineProperty(Array.prototype, "findIndex", {
		value: function(predicate) {
			if (this == null) {
				throw new TypeError("this is null or not defined");
			}
			var o = Object(this);
			var len = o.length >>> 0;
			if (typeof predicate !== "function") {
				throw new TypeError("predicate must be a function");
			}
			var this_arg = arguments[1];
			var k = 0;
			while (k < len) {
				var k_value = o[k];
				if (predicate.call(this_arg, k_value, k, o)) {
					return k;
				}
				k++;
			}
			return -1;
		},
		configurable: true,
		writable: true,
	});
}

createInterpreter().nMax(Infinity).nFailingValues(8).failureFraction(0.1);

/******************************************************************************
Copyright (c) Microsoft Corporation.

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
***************************************************************************** */
/* global Reflect, Promise, SuppressedError, Symbol */


typeof SuppressedError === "function" ? SuppressedError : function (error, suppressed, message) {
    var e = new Error(message);
    return e.name = "SuppressedError", e.error = error, e.suppressed = suppressed, e;
};

/* This file is used by the story player, and must be IE-compatible */
function isObject(x) {
    return !Array.isArray(x) && typeof x === "object" && x != null;
}

var localizations = {
	"de": {
		credits: {
			"default": "Erstellt mit Flourish",
		},
	},
	"en": {
		credits: {
			"default": { text: "A Flourish data visualization", url: "https://flourish.studio/" },
			"annotator": { text: "Interactive content by Flourish", url: "https://app.flourish.studio/@flourish/svg-annotator" },
			"bar-chart-race": { text: "A Flourish bar chart race", url: "https://flourish.studio/visualisations/bar-chart-race/" },
			"bubble-chart": { text: "A Flourish bubble chart", url: "https://flourish.studio/blog/introducing-bubble-chart-template/" },
			"cards": { text: "Interactive content by Flourish", url: "https://flourish.studio/blog/cards-template/" },
			"chart": { text: "A Flourish chart", url: "https://flourish.studio/visualisations/line-bar-pie-charts/" },
			"chord": { text: "A Flourish chord diagram", url: "https://flourish.studio/blog/how-to-make-a-chord-diagram/" },
			"countdown": { text: "Interactive content by Flourish", url: "https://flourish.studio/blog/number-ticker-countdown-templates/" },
			"data-explorer": { text: "A Flourish data explorer", url: "https://flourish.studio/blog/data-explorer-template/" },
			"draw": { text: "Interactive content by Flourish", url: "https://flourish.studio/blog/draw-the-line-chart/" },
			"election": { text: "A Flourish election chart", url: "https://app.flourish.studio/@flourish/election-results-chart" },
			"gantt": { text: "A Flourish gantt chart", url: "https://flourish.studio/blog/gantt-chart-template/" },
			"gauge": { text: "A Flourish gauge visualization", url: "https://flourish.studio/visualisations/gauge/" },
			"globe": { text: "A Flourish connections globe", url: "https://flourish.studio/visualisations/maps/" },
			"heatmap": { text: "A Flourish heatmap", url: "https://flourish.studio/visualisations/heatmaps/" },
			"hierarchy": { text: "A Flourish hierarchy chart", url: "https://flourish.studio/visualisations/treemaps/" },
			"map": { text: "A Flourish map", url: "https://flourish.studio/visualisations/maps/" },
			"marimekko": { text: "A Flourish marimekko chart", url: "https://flourish.studio/visualisations/marimekko-charts/" },
			"model": { text: "Interactive content by Flourish", url: "https://app.flourish.studio/@flourish/3d-viewer" },
			"network": { text: "A Flourish network chart", url: "https://flourish.studio/visualisations/network-charts/" },
			"number-ticker": { text: "Interactive content by Flourish", url: "https://flourish.studio/blog/number-ticker-countdown-templates/" },
			"parliament": { text: "A Flourish election chart", url: "https://flourish.studio/blog/how-to-make-parliament-chart/" },
			"photo-slider": { text: "Interactive content by Flourish", url: "https://app.flourish.studio/@flourish/photo-slider" },
			"pictogram": { text: "A Flourish pictogram", url: "https://flourish.studio/blog/pictogram-isotype/" },
			"quiz": { text: "A Flourish quiz", url: "https://app.flourish.studio/@flourish/quiz" },
			"radar": { text: "A Flourish radar chart", url: "https://flourish.studio/blog/create-online-radar-spider-charts/" },
			"ranking": { text: "A Flourish line chart race", url: "https://flourish.studio/blog/line-chart-race-updates/" },
			"sankey": { text: "A Flourish sankey chart", url: "https://flourish.studio/visualisations/sankey-charts/" },
			"scatter": { text: "A Flourish scatter chart", url: "https://flourish.studio/visualisations/scatter-charts/" },
			"slope": { text: "A Flourish slope chart", url: "https://flourish.studio/visualisations/slope-charts/" },
			"sports": { text: "A Flourish sports visualization", url: "https://app.flourish.studio/@flourish/sports-race" },
			"survey": { text: "A Flourish survey visualization", url: "https://flourish.studio/visualisations/survey-data/" },
			"table": { text: "A Flourish table", url: "https://flourish.studio/visualisations/create-a-table/" },
			"timeline": { text: "Interactive content by Flourish", url: "https://flourish.studio/blog/responsive-interactive-timeline/" },
			"text-annotator": { text: "Interactive content by Flourish", url: "https://flourish.studio/blog/text-annotator-template/" },
			"tournament": { text: "Interactive content by Flourish", url: "https://flourish.studio/visualisations/tournament-chart/" },
			"word-cloud": { text: "A Flourish data visualization", url: "https://flourish.studio/blog/online-wordcloud-custom-fonts/" },
		},
	},
	"es": {
		credits: {
			"default": "Creado con Flourish",
			"bar_race": { text: "Creado con Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
			"bar-chart-race": { text: "Creado con Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
		},
	},
	"fr": {
		credits: {
			"default": "Créé avec Flourish",
			"bar_race": { text: "Créé avec Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
			"bar-chart-race": { text: "Créé avec Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
		},
	},
	"it": {
		credits: {
			"default": "Creato con Flourish",
			"bar_race": { text: "Creato con Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
			"bar-chart-race": { text: "Creato con Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
		},
	},
	"mi": {
		credits: {
			"default": "Hangaia ki te Flourish",
			"bar_race": { text: "Hangaia ki te Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
			"bar-chart-race": { text: "Hangaia ki te Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
		},
	},
	"nl": {
		credits: {
			"default": "Gemaakt met Flourish",
			"bar_race": { text: "Gemaakt met Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
			"bar-chart-race": { text: "Gemaakt met Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
		},
	},
	"pt": {
		"default": "Feito com Flourish",
		"bar_race": { text: "Feito com Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
		"bar-chart-race": { text: "Feito com Flourish", url: "https://flourish.studio/visualisations/bar-chart-race/" },
	},
};

function createFlourishCredit(credit_url, query_string, public_url, credit_text) {
	credit_url = credit_url || "https://flourish.studio",
	query_string = query_string || "?utm_source=api&utm_campaign=" + window.location.href,
	public_url = public_url || "https://public.flourish.studio/",
	credit_text = credit_text || "A Flourish data visualization";

	var credit = document.createElement("div");
	credit.setAttribute("class", "flourish-credit");
	credit.setAttribute("style", "width:100%!important;margin:0 0 4px!important;text-align:right!important;font-family:Helvetica,sans-serif!important;color:#888!important;font-size:11px!important;font-weight:bold!important;font-style:normal!important;-webkit-font-smoothing:antialiased!important;box-shadow:none!important;");

	var a = document.createElement("a");
	a.setAttribute("href", credit_url + query_string);
	a.setAttribute("target", "_top");
	a.setAttribute("style", "display:inline-block!important;text-decoration:none!important;font:inherit!important;color:inherit!important;border:none!important;margin:0 5px!important;box-shadow:none!important;");
	credit.appendChild(a);

	var img = document.createElement("img");
	img.setAttribute("alt", "Flourish logo");
	img.setAttribute("src", public_url + "resources/bosh.svg");
	img.setAttribute("style", "font:inherit!important;width:auto!important;height:12px!important;border:none!important;margin:0 2px 0!important;vertical-align:middle!important;display:inline-block!important;box-shadow:none!important;");
	a.appendChild(img);

	var span = document.createElement("span");
	span.setAttribute("style", "font:inherit!important;color:#888!important;vertical-align:middle!important;display:inline-block!important;box-shadow:none!important;");
	span.appendChild(document.createTextNode(credit_text));
	a.appendChild(span);

	return credit;
}

function getLocalizedCreditTextAndUrl(lang, credit_key) {
	var credit_text, credit_url;
	lang = lang || "en", credit_key = credit_key || "";
	credit_text = localizations[lang].credits[credit_key] || localizations.en.credits[credit_key] || localizations.en.credits.default;
	if (typeof credit_text == "object") {
		if (credit_text.url) { credit_url = credit_text.url; }
		credit_text = credit_text.text;
	}
	return {
		credit_text: credit_text,
		credit_url: credit_url,
	};
}

// Embedded code - must work in IE
var enabled = false;

function getLocationData() {
	var data = {};
	if (window._Flourish_template_id) {
		data.template_id = window._Flourish_template_id;
	}
	if (window.Flourish && window.Flourish.app && window.Flourish.app.loaded_template_id) {
		data.template_id = window.Flourish.app.loaded_template_id;
	}

	if (window._Flourish_visualisation_id) {
		data.visualisation_id = window._Flourish_visualisation_id;
	}
	if (window.Flourish && window.Flourish.app && window.Flourish.app.loaded_visualisation) {
		data.visualisation_id = window.Flourish.app.loaded_visualisation.id;
	}

	if (window.Flourish && window.Flourish.app && window.Flourish.app.story) {
		data.story_id = window.Flourish.app.story.id;
		data.slide_count = window.Flourish.app.story.slides.length;
	}

	if (window.Flourish && window.Flourish.app && window.Flourish.app.current_slide) {
		// One indexed
		data.slide_index = window.Flourish.app.current_slide.index + 1;
	}
	return data;
}

function sendCustomerAnalyticsMessage(message) {
	if (!enabled) { return; }
	if (window.top === window.self) { return; }

	var embedded_window = window;
	if (embedded_window.location.pathname === "srcdoc") { embedded_window = embedded_window.parent; }

	var location_data = getLocationData();

	var message_with_metadata = {
		sender: "Flourish",
		method: "customerAnalytics",
	};

	for (var key in location_data) {
		if (location_data.hasOwnProperty(key)) {
			message_with_metadata[key] = location_data[key];
		}
	}

	for (var key in message) {
		if (message.hasOwnProperty(key)) {
			message_with_metadata[key] = message[key];
		}
	}

	embedded_window.parent.postMessage(JSON.stringify(message_with_metadata), "*");
}

function addAnalyticsListener(callback) {
	if (typeof callback !== "function") {
		throw new Error("Analytics callback is not a function");
	}
	window.Flourish._analytics_listeners.push(callback);
}

function initCustomerAnalytics() {
	enabled = true;

	var events = [
		{
			event_name: "click",
			action_name: "click",
			use_capture: true,
		},
		{
			event_name: "keydown",
			action_name: "key_down",
			use_capture: true,
		},
		{
			event_name: "mouseenter",
			action_name: "mouse_enter",
			use_capture: false,
		},
		{
			event_name: "mouseleave",
			action_name: "mouse_leave",
			use_capture: false,
		},
	];

	events.forEach(function(event) {
		document.body.addEventListener(event.event_name, function() {
			sendCustomerAnalyticsMessage({
				action: event.action_name,
			});
		}, event.use_capture);
	});
}

/*! @license DOMPurify 3.2.4 | (c) Cure53 and other contributors | Released under the Apache license 2.0 and Mozilla Public License 2.0 | github.com/cure53/DOMPurify/blob/3.2.4/LICENSE */

const {
  entries,
  setPrototypeOf,
  isFrozen,
  getPrototypeOf,
  getOwnPropertyDescriptor
} = Object;
let {
  freeze,
  seal,
  create
} = Object; // eslint-disable-line import/no-mutable-exports
let {
  apply,
  construct
} = typeof Reflect !== 'undefined' && Reflect;
if (!freeze) {
  freeze = function freeze(x) {
    return x;
  };
}
if (!seal) {
  seal = function seal(x) {
    return x;
  };
}
if (!apply) {
  apply = function apply(fun, thisValue, args) {
    return fun.apply(thisValue, args);
  };
}
if (!construct) {
  construct = function construct(Func, args) {
    return new Func(...args);
  };
}
const arrayForEach = unapply(Array.prototype.forEach);
const arrayLastIndexOf = unapply(Array.prototype.lastIndexOf);
const arrayPop = unapply(Array.prototype.pop);
const arrayPush = unapply(Array.prototype.push);
const arraySplice = unapply(Array.prototype.splice);
const stringToLowerCase = unapply(String.prototype.toLowerCase);
const stringToString = unapply(String.prototype.toString);
const stringMatch = unapply(String.prototype.match);
const stringReplace = unapply(String.prototype.replace);
const stringIndexOf = unapply(String.prototype.indexOf);
const stringTrim = unapply(String.prototype.trim);
const objectHasOwnProperty = unapply(Object.prototype.hasOwnProperty);
const regExpTest = unapply(RegExp.prototype.test);
const typeErrorCreate = unconstruct(TypeError);
/**
 * Creates a new function that calls the given function with a specified thisArg and arguments.
 *
 * @param func - The function to be wrapped and called.
 * @returns A new function that calls the given function with a specified thisArg and arguments.
 */
function unapply(func) {
  return function (thisArg) {
    for (var _len = arguments.length, args = new Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
      args[_key - 1] = arguments[_key];
    }
    return apply(func, thisArg, args);
  };
}
/**
 * Creates a new function that constructs an instance of the given constructor function with the provided arguments.
 *
 * @param func - The constructor function to be wrapped and called.
 * @returns A new function that constructs an instance of the given constructor function with the provided arguments.
 */
function unconstruct(func) {
  return function () {
    for (var _len2 = arguments.length, args = new Array(_len2), _key2 = 0; _key2 < _len2; _key2++) {
      args[_key2] = arguments[_key2];
    }
    return construct(func, args);
  };
}
/**
 * Add properties to a lookup table
 *
 * @param set - The set to which elements will be added.
 * @param array - The array containing elements to be added to the set.
 * @param transformCaseFunc - An optional function to transform the case of each element before adding to the set.
 * @returns The modified set with added elements.
 */
function addToSet(set, array) {
  let transformCaseFunc = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : stringToLowerCase;
  if (setPrototypeOf) {
    // Make 'in' and truthy checks like Boolean(set.constructor)
    // independent of any properties defined on Object.prototype.
    // Prevent prototype setters from intercepting set as a this value.
    setPrototypeOf(set, null);
  }
  let l = array.length;
  while (l--) {
    let element = array[l];
    if (typeof element === 'string') {
      const lcElement = transformCaseFunc(element);
      if (lcElement !== element) {
        // Config presets (e.g. tags.js, attrs.js) are immutable.
        if (!isFrozen(array)) {
          array[l] = lcElement;
        }
        element = lcElement;
      }
    }
    set[element] = true;
  }
  return set;
}
/**
 * Clean up an array to harden against CSPP
 *
 * @param array - The array to be cleaned.
 * @returns The cleaned version of the array
 */
function cleanArray(array) {
  for (let index = 0; index < array.length; index++) {
    const isPropertyExist = objectHasOwnProperty(array, index);
    if (!isPropertyExist) {
      array[index] = null;
    }
  }
  return array;
}
/**
 * Shallow clone an object
 *
 * @param object - The object to be cloned.
 * @returns A new object that copies the original.
 */
function clone(object) {
  const newObject = create(null);
  for (const [property, value] of entries(object)) {
    const isPropertyExist = objectHasOwnProperty(object, property);
    if (isPropertyExist) {
      if (Array.isArray(value)) {
        newObject[property] = cleanArray(value);
      } else if (value && typeof value === 'object' && value.constructor === Object) {
        newObject[property] = clone(value);
      } else {
        newObject[property] = value;
      }
    }
  }
  return newObject;
}
/**
 * This method automatically checks if the prop is function or getter and behaves accordingly.
 *
 * @param object - The object to look up the getter function in its prototype chain.
 * @param prop - The property name for which to find the getter function.
 * @returns The getter function found in the prototype chain or a fallback function.
 */
function lookupGetter(object, prop) {
  while (object !== null) {
    const desc = getOwnPropertyDescriptor(object, prop);
    if (desc) {
      if (desc.get) {
        return unapply(desc.get);
      }
      if (typeof desc.value === 'function') {
        return unapply(desc.value);
      }
    }
    object = getPrototypeOf(object);
  }
  function fallbackValue() {
    return null;
  }
  return fallbackValue;
}

const html$1 = freeze(['a', 'abbr', 'acronym', 'address', 'area', 'article', 'aside', 'audio', 'b', 'bdi', 'bdo', 'big', 'blink', 'blockquote', 'body', 'br', 'button', 'canvas', 'caption', 'center', 'cite', 'code', 'col', 'colgroup', 'content', 'data', 'datalist', 'dd', 'decorator', 'del', 'details', 'dfn', 'dialog', 'dir', 'div', 'dl', 'dt', 'element', 'em', 'fieldset', 'figcaption', 'figure', 'font', 'footer', 'form', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'head', 'header', 'hgroup', 'hr', 'html', 'i', 'img', 'input', 'ins', 'kbd', 'label', 'legend', 'li', 'main', 'map', 'mark', 'marquee', 'menu', 'menuitem', 'meter', 'nav', 'nobr', 'ol', 'optgroup', 'option', 'output', 'p', 'picture', 'pre', 'progress', 'q', 'rp', 'rt', 'ruby', 's', 'samp', 'section', 'select', 'shadow', 'small', 'source', 'spacer', 'span', 'strike', 'strong', 'style', 'sub', 'summary', 'sup', 'table', 'tbody', 'td', 'template', 'textarea', 'tfoot', 'th', 'thead', 'time', 'tr', 'track', 'tt', 'u', 'ul', 'var', 'video', 'wbr']);
const svg$1 = freeze(['svg', 'a', 'altglyph', 'altglyphdef', 'altglyphitem', 'animatecolor', 'animatemotion', 'animatetransform', 'circle', 'clippath', 'defs', 'desc', 'ellipse', 'filter', 'font', 'g', 'glyph', 'glyphref', 'hkern', 'image', 'line', 'lineargradient', 'marker', 'mask', 'metadata', 'mpath', 'path', 'pattern', 'polygon', 'polyline', 'radialgradient', 'rect', 'stop', 'style', 'switch', 'symbol', 'text', 'textpath', 'title', 'tref', 'tspan', 'view', 'vkern']);
const svgFilters = freeze(['feBlend', 'feColorMatrix', 'feComponentTransfer', 'feComposite', 'feConvolveMatrix', 'feDiffuseLighting', 'feDisplacementMap', 'feDistantLight', 'feDropShadow', 'feFlood', 'feFuncA', 'feFuncB', 'feFuncG', 'feFuncR', 'feGaussianBlur', 'feImage', 'feMerge', 'feMergeNode', 'feMorphology', 'feOffset', 'fePointLight', 'feSpecularLighting', 'feSpotLight', 'feTile', 'feTurbulence']);
// List of SVG elements that are disallowed by default.
// We still need to know them so that we can do namespace
// checks properly in case one wants to add them to
// allow-list.
const svgDisallowed = freeze(['animate', 'color-profile', 'cursor', 'discard', 'font-face', 'font-face-format', 'font-face-name', 'font-face-src', 'font-face-uri', 'foreignobject', 'hatch', 'hatchpath', 'mesh', 'meshgradient', 'meshpatch', 'meshrow', 'missing-glyph', 'script', 'set', 'solidcolor', 'unknown', 'use']);
const mathMl$1 = freeze(['math', 'menclose', 'merror', 'mfenced', 'mfrac', 'mglyph', 'mi', 'mlabeledtr', 'mmultiscripts', 'mn', 'mo', 'mover', 'mpadded', 'mphantom', 'mroot', 'mrow', 'ms', 'mspace', 'msqrt', 'mstyle', 'msub', 'msup', 'msubsup', 'mtable', 'mtd', 'mtext', 'mtr', 'munder', 'munderover', 'mprescripts']);
// Similarly to SVG, we want to know all MathML elements,
// even those that we disallow by default.
const mathMlDisallowed = freeze(['maction', 'maligngroup', 'malignmark', 'mlongdiv', 'mscarries', 'mscarry', 'msgroup', 'mstack', 'msline', 'msrow', 'semantics', 'annotation', 'annotation-xml', 'mprescripts', 'none']);
const text = freeze(['#text']);

const html = freeze(['accept', 'action', 'align', 'alt', 'autocapitalize', 'autocomplete', 'autopictureinpicture', 'autoplay', 'background', 'bgcolor', 'border', 'capture', 'cellpadding', 'cellspacing', 'checked', 'cite', 'class', 'clear', 'color', 'cols', 'colspan', 'controls', 'controlslist', 'coords', 'crossorigin', 'datetime', 'decoding', 'default', 'dir', 'disabled', 'disablepictureinpicture', 'disableremoteplayback', 'download', 'draggable', 'enctype', 'enterkeyhint', 'face', 'for', 'headers', 'height', 'hidden', 'high', 'href', 'hreflang', 'id', 'inputmode', 'integrity', 'ismap', 'kind', 'label', 'lang', 'list', 'loading', 'loop', 'low', 'max', 'maxlength', 'media', 'method', 'min', 'minlength', 'multiple', 'muted', 'name', 'nonce', 'noshade', 'novalidate', 'nowrap', 'open', 'optimum', 'pattern', 'placeholder', 'playsinline', 'popover', 'popovertarget', 'popovertargetaction', 'poster', 'preload', 'pubdate', 'radiogroup', 'readonly', 'rel', 'required', 'rev', 'reversed', 'role', 'rows', 'rowspan', 'spellcheck', 'scope', 'selected', 'shape', 'size', 'sizes', 'span', 'srclang', 'start', 'src', 'srcset', 'step', 'style', 'summary', 'tabindex', 'title', 'translate', 'type', 'usemap', 'valign', 'value', 'width', 'wrap', 'xmlns', 'slot']);
const svg = freeze(['accent-height', 'accumulate', 'additive', 'alignment-baseline', 'amplitude', 'ascent', 'attributename', 'attributetype', 'azimuth', 'basefrequency', 'baseline-shift', 'begin', 'bias', 'by', 'class', 'clip', 'clippathunits', 'clip-path', 'clip-rule', 'color', 'color-interpolation', 'color-interpolation-filters', 'color-profile', 'color-rendering', 'cx', 'cy', 'd', 'dx', 'dy', 'diffuseconstant', 'direction', 'display', 'divisor', 'dur', 'edgemode', 'elevation', 'end', 'exponent', 'fill', 'fill-opacity', 'fill-rule', 'filter', 'filterunits', 'flood-color', 'flood-opacity', 'font-family', 'font-size', 'font-size-adjust', 'font-stretch', 'font-style', 'font-variant', 'font-weight', 'fx', 'fy', 'g1', 'g2', 'glyph-name', 'glyphref', 'gradientunits', 'gradienttransform', 'height', 'href', 'id', 'image-rendering', 'in', 'in2', 'intercept', 'k', 'k1', 'k2', 'k3', 'k4', 'kerning', 'keypoints', 'keysplines', 'keytimes', 'lang', 'lengthadjust', 'letter-spacing', 'kernelmatrix', 'kernelunitlength', 'lighting-color', 'local', 'marker-end', 'marker-mid', 'marker-start', 'markerheight', 'markerunits', 'markerwidth', 'maskcontentunits', 'maskunits', 'max', 'mask', 'media', 'method', 'mode', 'min', 'name', 'numoctaves', 'offset', 'operator', 'opacity', 'order', 'orient', 'orientation', 'origin', 'overflow', 'paint-order', 'path', 'pathlength', 'patterncontentunits', 'patterntransform', 'patternunits', 'points', 'preservealpha', 'preserveaspectratio', 'primitiveunits', 'r', 'rx', 'ry', 'radius', 'refx', 'refy', 'repeatcount', 'repeatdur', 'restart', 'result', 'rotate', 'scale', 'seed', 'shape-rendering', 'slope', 'specularconstant', 'specularexponent', 'spreadmethod', 'startoffset', 'stddeviation', 'stitchtiles', 'stop-color', 'stop-opacity', 'stroke-dasharray', 'stroke-dashoffset', 'stroke-linecap', 'stroke-linejoin', 'stroke-miterlimit', 'stroke-opacity', 'stroke', 'stroke-width', 'style', 'surfacescale', 'systemlanguage', 'tabindex', 'tablevalues', 'targetx', 'targety', 'transform', 'transform-origin', 'text-anchor', 'text-decoration', 'text-rendering', 'textlength', 'type', 'u1', 'u2', 'unicode', 'values', 'viewbox', 'visibility', 'version', 'vert-adv-y', 'vert-origin-x', 'vert-origin-y', 'width', 'word-spacing', 'wrap', 'writing-mode', 'xchannelselector', 'ychannelselector', 'x', 'x1', 'x2', 'xmlns', 'y', 'y1', 'y2', 'z', 'zoomandpan']);
const mathMl = freeze(['accent', 'accentunder', 'align', 'bevelled', 'close', 'columnsalign', 'columnlines', 'columnspan', 'denomalign', 'depth', 'dir', 'display', 'displaystyle', 'encoding', 'fence', 'frame', 'height', 'href', 'id', 'largeop', 'length', 'linethickness', 'lspace', 'lquote', 'mathbackground', 'mathcolor', 'mathsize', 'mathvariant', 'maxsize', 'minsize', 'movablelimits', 'notation', 'numalign', 'open', 'rowalign', 'rowlines', 'rowspacing', 'rowspan', 'rspace', 'rquote', 'scriptlevel', 'scriptminsize', 'scriptsizemultiplier', 'selection', 'separator', 'separators', 'stretchy', 'subscriptshift', 'supscriptshift', 'symmetric', 'voffset', 'width', 'xmlns']);
const xml = freeze(['xlink:href', 'xml:id', 'xlink:title', 'xml:space', 'xmlns:xlink']);

// eslint-disable-next-line unicorn/better-regex
const MUSTACHE_EXPR = seal(/\{\{[\w\W]*|[\w\W]*\}\}/gm); // Specify template detection regex for SAFE_FOR_TEMPLATES mode
const ERB_EXPR = seal(/<%[\w\W]*|[\w\W]*%>/gm);
const TMPLIT_EXPR = seal(/\$\{[\w\W]*/gm); // eslint-disable-line unicorn/better-regex
const DATA_ATTR = seal(/^data-[\-\w.\u00B7-\uFFFF]+$/); // eslint-disable-line no-useless-escape
const ARIA_ATTR = seal(/^aria-[\-\w]+$/); // eslint-disable-line no-useless-escape
const IS_ALLOWED_URI = seal(/^(?:(?:(?:f|ht)tps?|mailto|tel|callto|sms|cid|xmpp):|[^a-z]|[a-z+.\-]+(?:[^a-z+.\-:]|$))/i // eslint-disable-line no-useless-escape
);
const IS_SCRIPT_OR_DATA = seal(/^(?:\w+script|data):/i);
const ATTR_WHITESPACE = seal(/[\u0000-\u0020\u00A0\u1680\u180E\u2000-\u2029\u205F\u3000]/g // eslint-disable-line no-control-regex
);
const DOCTYPE_NAME = seal(/^html$/i);
const CUSTOM_ELEMENT = seal(/^[a-z][.\w]*(-[.\w]+)+$/i);

var EXPRESSIONS = /*#__PURE__*/Object.freeze({
  __proto__: null,
  ARIA_ATTR: ARIA_ATTR,
  ATTR_WHITESPACE: ATTR_WHITESPACE,
  CUSTOM_ELEMENT: CUSTOM_ELEMENT,
  DATA_ATTR: DATA_ATTR,
  DOCTYPE_NAME: DOCTYPE_NAME,
  ERB_EXPR: ERB_EXPR,
  IS_ALLOWED_URI: IS_ALLOWED_URI,
  IS_SCRIPT_OR_DATA: IS_SCRIPT_OR_DATA,
  MUSTACHE_EXPR: MUSTACHE_EXPR,
  TMPLIT_EXPR: TMPLIT_EXPR
});

/* eslint-disable @typescript-eslint/indent */
// https://developer.mozilla.org/en-US/docs/Web/API/Node/nodeType
const NODE_TYPE = {
  element: 1,
  attribute: 2,
  text: 3,
  cdataSection: 4,
  entityReference: 5,
  // Deprecated
  entityNode: 6,
  // Deprecated
  progressingInstruction: 7,
  comment: 8,
  document: 9,
  documentType: 10,
  documentFragment: 11,
  notation: 12 // Deprecated
};
const getGlobal = function getGlobal() {
  return typeof window === 'undefined' ? null : window;
};
/**
 * Creates a no-op policy for internal use only.
 * Don't export this function outside this module!
 * @param trustedTypes The policy factory.
 * @param purifyHostElement The Script element used to load DOMPurify (to determine policy name suffix).
 * @return The policy created (or null, if Trusted Types
 * are not supported or creating the policy failed).
 */
const _createTrustedTypesPolicy = function _createTrustedTypesPolicy(trustedTypes, purifyHostElement) {
  if (typeof trustedTypes !== 'object' || typeof trustedTypes.createPolicy !== 'function') {
    return null;
  }
  // Allow the callers to control the unique policy name
  // by adding a data-tt-policy-suffix to the script element with the DOMPurify.
  // Policy creation with duplicate names throws in Trusted Types.
  let suffix = null;
  const ATTR_NAME = 'data-tt-policy-suffix';
  if (purifyHostElement && purifyHostElement.hasAttribute(ATTR_NAME)) {
    suffix = purifyHostElement.getAttribute(ATTR_NAME);
  }
  const policyName = 'dompurify' + (suffix ? '#' + suffix : '');
  try {
    return trustedTypes.createPolicy(policyName, {
      createHTML(html) {
        return html;
      },
      createScriptURL(scriptUrl) {
        return scriptUrl;
      }
    });
  } catch (_) {
    // Policy creation failed (most likely another DOMPurify script has
    // already run). Skip creating the policy, as this will only cause errors
    // if TT are enforced.
    console.warn('TrustedTypes policy ' + policyName + ' could not be created.');
    return null;
  }
};
const _createHooksMap = function _createHooksMap() {
  return {
    afterSanitizeAttributes: [],
    afterSanitizeElements: [],
    afterSanitizeShadowDOM: [],
    beforeSanitizeAttributes: [],
    beforeSanitizeElements: [],
    beforeSanitizeShadowDOM: [],
    uponSanitizeAttribute: [],
    uponSanitizeElement: [],
    uponSanitizeShadowNode: []
  };
};
function createDOMPurify() {
  let window = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : getGlobal();
  const DOMPurify = root => createDOMPurify(root);
  DOMPurify.version = '3.2.4';
  DOMPurify.removed = [];
  if (!window || !window.document || window.document.nodeType !== NODE_TYPE.document || !window.Element) {
    // Not running in a browser, provide a factory function
    // so that you can pass your own Window
    DOMPurify.isSupported = false;
    return DOMPurify;
  }
  let {
    document
  } = window;
  const originalDocument = document;
  const currentScript = originalDocument.currentScript;
  const {
    DocumentFragment,
    HTMLTemplateElement,
    Node,
    Element,
    NodeFilter,
    NamedNodeMap = window.NamedNodeMap || window.MozNamedAttrMap,
    HTMLFormElement,
    DOMParser,
    trustedTypes
  } = window;
  const ElementPrototype = Element.prototype;
  const cloneNode = lookupGetter(ElementPrototype, 'cloneNode');
  const remove = lookupGetter(ElementPrototype, 'remove');
  const getNextSibling = lookupGetter(ElementPrototype, 'nextSibling');
  const getChildNodes = lookupGetter(ElementPrototype, 'childNodes');
  const getParentNode = lookupGetter(ElementPrototype, 'parentNode');
  // As per issue #47, the web-components registry is inherited by a
  // new document created via createHTMLDocument. As per the spec
  // (http://w3c.github.io/webcomponents/spec/custom/#creating-and-passing-registries)
  // a new empty registry is used when creating a template contents owner
  // document, so we use that as our parent document to ensure nothing
  // is inherited.
  if (typeof HTMLTemplateElement === 'function') {
    const template = document.createElement('template');
    if (template.content && template.content.ownerDocument) {
      document = template.content.ownerDocument;
    }
  }
  let trustedTypesPolicy;
  let emptyHTML = '';
  const {
    implementation,
    createNodeIterator,
    createDocumentFragment,
    getElementsByTagName
  } = document;
  const {
    importNode
  } = originalDocument;
  let hooks = _createHooksMap();
  /**
   * Expose whether this browser supports running the full DOMPurify.
   */
  DOMPurify.isSupported = typeof entries === 'function' && typeof getParentNode === 'function' && implementation && implementation.createHTMLDocument !== undefined;
  const {
    MUSTACHE_EXPR,
    ERB_EXPR,
    TMPLIT_EXPR,
    DATA_ATTR,
    ARIA_ATTR,
    IS_SCRIPT_OR_DATA,
    ATTR_WHITESPACE,
    CUSTOM_ELEMENT
  } = EXPRESSIONS;
  let {
    IS_ALLOWED_URI: IS_ALLOWED_URI$1
  } = EXPRESSIONS;
  /**
   * We consider the elements and attributes below to be safe. Ideally
   * don't add any new ones but feel free to remove unwanted ones.
   */
  /* allowed element names */
  let ALLOWED_TAGS = null;
  const DEFAULT_ALLOWED_TAGS = addToSet({}, [...html$1, ...svg$1, ...svgFilters, ...mathMl$1, ...text]);
  /* Allowed attribute names */
  let ALLOWED_ATTR = null;
  const DEFAULT_ALLOWED_ATTR = addToSet({}, [...html, ...svg, ...mathMl, ...xml]);
  /*
   * Configure how DOMPurify should handle custom elements and their attributes as well as customized built-in elements.
   * @property {RegExp|Function|null} tagNameCheck one of [null, regexPattern, predicate]. Default: `null` (disallow any custom elements)
   * @property {RegExp|Function|null} attributeNameCheck one of [null, regexPattern, predicate]. Default: `null` (disallow any attributes not on the allow list)
   * @property {boolean} allowCustomizedBuiltInElements allow custom elements derived from built-ins if they pass CUSTOM_ELEMENT_HANDLING.tagNameCheck. Default: `false`.
   */
  let CUSTOM_ELEMENT_HANDLING = Object.seal(create(null, {
    tagNameCheck: {
      writable: true,
      configurable: false,
      enumerable: true,
      value: null
    },
    attributeNameCheck: {
      writable: true,
      configurable: false,
      enumerable: true,
      value: null
    },
    allowCustomizedBuiltInElements: {
      writable: true,
      configurable: false,
      enumerable: true,
      value: false
    }
  }));
  /* Explicitly forbidden tags (overrides ALLOWED_TAGS/ADD_TAGS) */
  let FORBID_TAGS = null;
  /* Explicitly forbidden attributes (overrides ALLOWED_ATTR/ADD_ATTR) */
  let FORBID_ATTR = null;
  /* Decide if ARIA attributes are okay */
  let ALLOW_ARIA_ATTR = true;
  /* Decide if custom data attributes are okay */
  let ALLOW_DATA_ATTR = true;
  /* Decide if unknown protocols are okay */
  let ALLOW_UNKNOWN_PROTOCOLS = false;
  /* Decide if self-closing tags in attributes are allowed.
   * Usually removed due to a mXSS issue in jQuery 3.0 */
  let ALLOW_SELF_CLOSE_IN_ATTR = true;
  /* Output should be safe for common template engines.
   * This means, DOMPurify removes data attributes, mustaches and ERB
   */
  let SAFE_FOR_TEMPLATES = false;
  /* Output should be safe even for XML used within HTML and alike.
   * This means, DOMPurify removes comments when containing risky content.
   */
  let SAFE_FOR_XML = true;
  /* Decide if document with <html>... should be returned */
  let WHOLE_DOCUMENT = false;
  /* Track whether config is already set on this instance of DOMPurify. */
  let SET_CONFIG = false;
  /* Decide if all elements (e.g. style, script) must be children of
   * document.body. By default, browsers might move them to document.head */
  let FORCE_BODY = false;
  /* Decide if a DOM `HTMLBodyElement` should be returned, instead of a html
   * string (or a TrustedHTML object if Trusted Types are supported).
   * If `WHOLE_DOCUMENT` is enabled a `HTMLHtmlElement` will be returned instead
   */
  let RETURN_DOM = false;
  /* Decide if a DOM `DocumentFragment` should be returned, instead of a html
   * string  (or a TrustedHTML object if Trusted Types are supported) */
  let RETURN_DOM_FRAGMENT = false;
  /* Try to return a Trusted Type object instead of a string, return a string in
   * case Trusted Types are not supported  */
  let RETURN_TRUSTED_TYPE = false;
  /* Output should be free from DOM clobbering attacks?
   * This sanitizes markups named with colliding, clobberable built-in DOM APIs.
   */
  let SANITIZE_DOM = true;
  /* Achieve full DOM Clobbering protection by isolating the namespace of named
   * properties and JS variables, mitigating attacks that abuse the HTML/DOM spec rules.
   *
   * HTML/DOM spec rules that enable DOM Clobbering:
   *   - Named Access on Window (§7.3.3)
   *   - DOM Tree Accessors (§3.1.5)
   *   - Form Element Parent-Child Relations (§4.10.3)
   *   - Iframe srcdoc / Nested WindowProxies (§4.8.5)
   *   - HTMLCollection (§4.2.10.2)
   *
   * Namespace isolation is implemented by prefixing `id` and `name` attributes
   * with a constant string, i.e., `user-content-`
   */
  let SANITIZE_NAMED_PROPS = false;
  const SANITIZE_NAMED_PROPS_PREFIX = 'user-content-';
  /* Keep element content when removing element? */
  let KEEP_CONTENT = true;
  /* If a `Node` is passed to sanitize(), then performs sanitization in-place instead
   * of importing it into a new Document and returning a sanitized copy */
  let IN_PLACE = false;
  /* Allow usage of profiles like html, svg and mathMl */
  let USE_PROFILES = {};
  /* Tags to ignore content of when KEEP_CONTENT is true */
  let FORBID_CONTENTS = null;
  const DEFAULT_FORBID_CONTENTS = addToSet({}, ['annotation-xml', 'audio', 'colgroup', 'desc', 'foreignobject', 'head', 'iframe', 'math', 'mi', 'mn', 'mo', 'ms', 'mtext', 'noembed', 'noframes', 'noscript', 'plaintext', 'script', 'style', 'svg', 'template', 'thead', 'title', 'video', 'xmp']);
  /* Tags that are safe for data: URIs */
  let DATA_URI_TAGS = null;
  const DEFAULT_DATA_URI_TAGS = addToSet({}, ['audio', 'video', 'img', 'source', 'image', 'track']);
  /* Attributes safe for values like "javascript:" */
  let URI_SAFE_ATTRIBUTES = null;
  const DEFAULT_URI_SAFE_ATTRIBUTES = addToSet({}, ['alt', 'class', 'for', 'id', 'label', 'name', 'pattern', 'placeholder', 'role', 'summary', 'title', 'value', 'style', 'xmlns']);
  const MATHML_NAMESPACE = 'http://www.w3.org/1998/Math/MathML';
  const SVG_NAMESPACE = 'http://www.w3.org/2000/svg';
  const HTML_NAMESPACE = 'http://www.w3.org/1999/xhtml';
  /* Document namespace */
  let NAMESPACE = HTML_NAMESPACE;
  let IS_EMPTY_INPUT = false;
  /* Allowed XHTML+XML namespaces */
  let ALLOWED_NAMESPACES = null;
  const DEFAULT_ALLOWED_NAMESPACES = addToSet({}, [MATHML_NAMESPACE, SVG_NAMESPACE, HTML_NAMESPACE], stringToString);
  let MATHML_TEXT_INTEGRATION_POINTS = addToSet({}, ['mi', 'mo', 'mn', 'ms', 'mtext']);
  let HTML_INTEGRATION_POINTS = addToSet({}, ['annotation-xml']);
  // Certain elements are allowed in both SVG and HTML
  // namespace. We need to specify them explicitly
  // so that they don't get erroneously deleted from
  // HTML namespace.
  const COMMON_SVG_AND_HTML_ELEMENTS = addToSet({}, ['title', 'style', 'font', 'a', 'script']);
  /* Parsing of strict XHTML documents */
  let PARSER_MEDIA_TYPE = null;
  const SUPPORTED_PARSER_MEDIA_TYPES = ['application/xhtml+xml', 'text/html'];
  const DEFAULT_PARSER_MEDIA_TYPE = 'text/html';
  let transformCaseFunc = null;
  /* Keep a reference to config to pass to hooks */
  let CONFIG = null;
  /* Ideally, do not touch anything below this line */
  /* ______________________________________________ */
  const formElement = document.createElement('form');
  const isRegexOrFunction = function isRegexOrFunction(testValue) {
    return testValue instanceof RegExp || testValue instanceof Function;
  };
  /**
   * _parseConfig
   *
   * @param cfg optional config literal
   */
  // eslint-disable-next-line complexity
  const _parseConfig = function _parseConfig() {
    let cfg = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : {};
    if (CONFIG && CONFIG === cfg) {
      return;
    }
    /* Shield configuration object from tampering */
    if (!cfg || typeof cfg !== 'object') {
      cfg = {};
    }
    /* Shield configuration object from prototype pollution */
    cfg = clone(cfg);
    PARSER_MEDIA_TYPE =
    // eslint-disable-next-line unicorn/prefer-includes
    SUPPORTED_PARSER_MEDIA_TYPES.indexOf(cfg.PARSER_MEDIA_TYPE) === -1 ? DEFAULT_PARSER_MEDIA_TYPE : cfg.PARSER_MEDIA_TYPE;
    // HTML tags and attributes are not case-sensitive, converting to lowercase. Keeping XHTML as is.
    transformCaseFunc = PARSER_MEDIA_TYPE === 'application/xhtml+xml' ? stringToString : stringToLowerCase;
    /* Set configuration parameters */
    ALLOWED_TAGS = objectHasOwnProperty(cfg, 'ALLOWED_TAGS') ? addToSet({}, cfg.ALLOWED_TAGS, transformCaseFunc) : DEFAULT_ALLOWED_TAGS;
    ALLOWED_ATTR = objectHasOwnProperty(cfg, 'ALLOWED_ATTR') ? addToSet({}, cfg.ALLOWED_ATTR, transformCaseFunc) : DEFAULT_ALLOWED_ATTR;
    ALLOWED_NAMESPACES = objectHasOwnProperty(cfg, 'ALLOWED_NAMESPACES') ? addToSet({}, cfg.ALLOWED_NAMESPACES, stringToString) : DEFAULT_ALLOWED_NAMESPACES;
    URI_SAFE_ATTRIBUTES = objectHasOwnProperty(cfg, 'ADD_URI_SAFE_ATTR') ? addToSet(clone(DEFAULT_URI_SAFE_ATTRIBUTES), cfg.ADD_URI_SAFE_ATTR, transformCaseFunc) : DEFAULT_URI_SAFE_ATTRIBUTES;
    DATA_URI_TAGS = objectHasOwnProperty(cfg, 'ADD_DATA_URI_TAGS') ? addToSet(clone(DEFAULT_DATA_URI_TAGS), cfg.ADD_DATA_URI_TAGS, transformCaseFunc) : DEFAULT_DATA_URI_TAGS;
    FORBID_CONTENTS = objectHasOwnProperty(cfg, 'FORBID_CONTENTS') ? addToSet({}, cfg.FORBID_CONTENTS, transformCaseFunc) : DEFAULT_FORBID_CONTENTS;
    FORBID_TAGS = objectHasOwnProperty(cfg, 'FORBID_TAGS') ? addToSet({}, cfg.FORBID_TAGS, transformCaseFunc) : {};
    FORBID_ATTR = objectHasOwnProperty(cfg, 'FORBID_ATTR') ? addToSet({}, cfg.FORBID_ATTR, transformCaseFunc) : {};
    USE_PROFILES = objectHasOwnProperty(cfg, 'USE_PROFILES') ? cfg.USE_PROFILES : false;
    ALLOW_ARIA_ATTR = cfg.ALLOW_ARIA_ATTR !== false; // Default true
    ALLOW_DATA_ATTR = cfg.ALLOW_DATA_ATTR !== false; // Default true
    ALLOW_UNKNOWN_PROTOCOLS = cfg.ALLOW_UNKNOWN_PROTOCOLS || false; // Default false
    ALLOW_SELF_CLOSE_IN_ATTR = cfg.ALLOW_SELF_CLOSE_IN_ATTR !== false; // Default true
    SAFE_FOR_TEMPLATES = cfg.SAFE_FOR_TEMPLATES || false; // Default false
    SAFE_FOR_XML = cfg.SAFE_FOR_XML !== false; // Default true
    WHOLE_DOCUMENT = cfg.WHOLE_DOCUMENT || false; // Default false
    RETURN_DOM = cfg.RETURN_DOM || false; // Default false
    RETURN_DOM_FRAGMENT = cfg.RETURN_DOM_FRAGMENT || false; // Default false
    RETURN_TRUSTED_TYPE = cfg.RETURN_TRUSTED_TYPE || false; // Default false
    FORCE_BODY = cfg.FORCE_BODY || false; // Default false
    SANITIZE_DOM = cfg.SANITIZE_DOM !== false; // Default true
    SANITIZE_NAMED_PROPS = cfg.SANITIZE_NAMED_PROPS || false; // Default false
    KEEP_CONTENT = cfg.KEEP_CONTENT !== false; // Default true
    IN_PLACE = cfg.IN_PLACE || false; // Default false
    IS_ALLOWED_URI$1 = cfg.ALLOWED_URI_REGEXP || IS_ALLOWED_URI;
    NAMESPACE = cfg.NAMESPACE || HTML_NAMESPACE;
    MATHML_TEXT_INTEGRATION_POINTS = cfg.MATHML_TEXT_INTEGRATION_POINTS || MATHML_TEXT_INTEGRATION_POINTS;
    HTML_INTEGRATION_POINTS = cfg.HTML_INTEGRATION_POINTS || HTML_INTEGRATION_POINTS;
    CUSTOM_ELEMENT_HANDLING = cfg.CUSTOM_ELEMENT_HANDLING || {};
    if (cfg.CUSTOM_ELEMENT_HANDLING && isRegexOrFunction(cfg.CUSTOM_ELEMENT_HANDLING.tagNameCheck)) {
      CUSTOM_ELEMENT_HANDLING.tagNameCheck = cfg.CUSTOM_ELEMENT_HANDLING.tagNameCheck;
    }
    if (cfg.CUSTOM_ELEMENT_HANDLING && isRegexOrFunction(cfg.CUSTOM_ELEMENT_HANDLING.attributeNameCheck)) {
      CUSTOM_ELEMENT_HANDLING.attributeNameCheck = cfg.CUSTOM_ELEMENT_HANDLING.attributeNameCheck;
    }
    if (cfg.CUSTOM_ELEMENT_HANDLING && typeof cfg.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements === 'boolean') {
      CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements = cfg.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements;
    }
    if (SAFE_FOR_TEMPLATES) {
      ALLOW_DATA_ATTR = false;
    }
    if (RETURN_DOM_FRAGMENT) {
      RETURN_DOM = true;
    }
    /* Parse profile info */
    if (USE_PROFILES) {
      ALLOWED_TAGS = addToSet({}, text);
      ALLOWED_ATTR = [];
      if (USE_PROFILES.html === true) {
        addToSet(ALLOWED_TAGS, html$1);
        addToSet(ALLOWED_ATTR, html);
      }
      if (USE_PROFILES.svg === true) {
        addToSet(ALLOWED_TAGS, svg$1);
        addToSet(ALLOWED_ATTR, svg);
        addToSet(ALLOWED_ATTR, xml);
      }
      if (USE_PROFILES.svgFilters === true) {
        addToSet(ALLOWED_TAGS, svgFilters);
        addToSet(ALLOWED_ATTR, svg);
        addToSet(ALLOWED_ATTR, xml);
      }
      if (USE_PROFILES.mathMl === true) {
        addToSet(ALLOWED_TAGS, mathMl$1);
        addToSet(ALLOWED_ATTR, mathMl);
        addToSet(ALLOWED_ATTR, xml);
      }
    }
    /* Merge configuration parameters */
    if (cfg.ADD_TAGS) {
      if (ALLOWED_TAGS === DEFAULT_ALLOWED_TAGS) {
        ALLOWED_TAGS = clone(ALLOWED_TAGS);
      }
      addToSet(ALLOWED_TAGS, cfg.ADD_TAGS, transformCaseFunc);
    }
    if (cfg.ADD_ATTR) {
      if (ALLOWED_ATTR === DEFAULT_ALLOWED_ATTR) {
        ALLOWED_ATTR = clone(ALLOWED_ATTR);
      }
      addToSet(ALLOWED_ATTR, cfg.ADD_ATTR, transformCaseFunc);
    }
    if (cfg.ADD_URI_SAFE_ATTR) {
      addToSet(URI_SAFE_ATTRIBUTES, cfg.ADD_URI_SAFE_ATTR, transformCaseFunc);
    }
    if (cfg.FORBID_CONTENTS) {
      if (FORBID_CONTENTS === DEFAULT_FORBID_CONTENTS) {
        FORBID_CONTENTS = clone(FORBID_CONTENTS);
      }
      addToSet(FORBID_CONTENTS, cfg.FORBID_CONTENTS, transformCaseFunc);
    }
    /* Add #text in case KEEP_CONTENT is set to true */
    if (KEEP_CONTENT) {
      ALLOWED_TAGS['#text'] = true;
    }
    /* Add html, head and body to ALLOWED_TAGS in case WHOLE_DOCUMENT is true */
    if (WHOLE_DOCUMENT) {
      addToSet(ALLOWED_TAGS, ['html', 'head', 'body']);
    }
    /* Add tbody to ALLOWED_TAGS in case tables are permitted, see #286, #365 */
    if (ALLOWED_TAGS.table) {
      addToSet(ALLOWED_TAGS, ['tbody']);
      delete FORBID_TAGS.tbody;
    }
    if (cfg.TRUSTED_TYPES_POLICY) {
      if (typeof cfg.TRUSTED_TYPES_POLICY.createHTML !== 'function') {
        throw typeErrorCreate('TRUSTED_TYPES_POLICY configuration option must provide a "createHTML" hook.');
      }
      if (typeof cfg.TRUSTED_TYPES_POLICY.createScriptURL !== 'function') {
        throw typeErrorCreate('TRUSTED_TYPES_POLICY configuration option must provide a "createScriptURL" hook.');
      }
      // Overwrite existing TrustedTypes policy.
      trustedTypesPolicy = cfg.TRUSTED_TYPES_POLICY;
      // Sign local variables required by `sanitize`.
      emptyHTML = trustedTypesPolicy.createHTML('');
    } else {
      // Uninitialized policy, attempt to initialize the internal dompurify policy.
      if (trustedTypesPolicy === undefined) {
        trustedTypesPolicy = _createTrustedTypesPolicy(trustedTypes, currentScript);
      }
      // If creating the internal policy succeeded sign internal variables.
      if (trustedTypesPolicy !== null && typeof emptyHTML === 'string') {
        emptyHTML = trustedTypesPolicy.createHTML('');
      }
    }
    // Prevent further manipulation of configuration.
    // Not available in IE8, Safari 5, etc.
    if (freeze) {
      freeze(cfg);
    }
    CONFIG = cfg;
  };
  /* Keep track of all possible SVG and MathML tags
   * so that we can perform the namespace checks
   * correctly. */
  const ALL_SVG_TAGS = addToSet({}, [...svg$1, ...svgFilters, ...svgDisallowed]);
  const ALL_MATHML_TAGS = addToSet({}, [...mathMl$1, ...mathMlDisallowed]);
  /**
   * @param element a DOM element whose namespace is being checked
   * @returns Return false if the element has a
   *  namespace that a spec-compliant parser would never
   *  return. Return true otherwise.
   */
  const _checkValidNamespace = function _checkValidNamespace(element) {
    let parent = getParentNode(element);
    // In JSDOM, if we're inside shadow DOM, then parentNode
    // can be null. We just simulate parent in this case.
    if (!parent || !parent.tagName) {
      parent = {
        namespaceURI: NAMESPACE,
        tagName: 'template'
      };
    }
    const tagName = stringToLowerCase(element.tagName);
    const parentTagName = stringToLowerCase(parent.tagName);
    if (!ALLOWED_NAMESPACES[element.namespaceURI]) {
      return false;
    }
    if (element.namespaceURI === SVG_NAMESPACE) {
      // The only way to switch from HTML namespace to SVG
      // is via <svg>. If it happens via any other tag, then
      // it should be killed.
      if (parent.namespaceURI === HTML_NAMESPACE) {
        return tagName === 'svg';
      }
      // The only way to switch from MathML to SVG is via`
      // svg if parent is either <annotation-xml> or MathML
      // text integration points.
      if (parent.namespaceURI === MATHML_NAMESPACE) {
        return tagName === 'svg' && (parentTagName === 'annotation-xml' || MATHML_TEXT_INTEGRATION_POINTS[parentTagName]);
      }
      // We only allow elements that are defined in SVG
      // spec. All others are disallowed in SVG namespace.
      return Boolean(ALL_SVG_TAGS[tagName]);
    }
    if (element.namespaceURI === MATHML_NAMESPACE) {
      // The only way to switch from HTML namespace to MathML
      // is via <math>. If it happens via any other tag, then
      // it should be killed.
      if (parent.namespaceURI === HTML_NAMESPACE) {
        return tagName === 'math';
      }
      // The only way to switch from SVG to MathML is via
      // <math> and HTML integration points
      if (parent.namespaceURI === SVG_NAMESPACE) {
        return tagName === 'math' && HTML_INTEGRATION_POINTS[parentTagName];
      }
      // We only allow elements that are defined in MathML
      // spec. All others are disallowed in MathML namespace.
      return Boolean(ALL_MATHML_TAGS[tagName]);
    }
    if (element.namespaceURI === HTML_NAMESPACE) {
      // The only way to switch from SVG to HTML is via
      // HTML integration points, and from MathML to HTML
      // is via MathML text integration points
      if (parent.namespaceURI === SVG_NAMESPACE && !HTML_INTEGRATION_POINTS[parentTagName]) {
        return false;
      }
      if (parent.namespaceURI === MATHML_NAMESPACE && !MATHML_TEXT_INTEGRATION_POINTS[parentTagName]) {
        return false;
      }
      // We disallow tags that are specific for MathML
      // or SVG and should never appear in HTML namespace
      return !ALL_MATHML_TAGS[tagName] && (COMMON_SVG_AND_HTML_ELEMENTS[tagName] || !ALL_SVG_TAGS[tagName]);
    }
    // For XHTML and XML documents that support custom namespaces
    if (PARSER_MEDIA_TYPE === 'application/xhtml+xml' && ALLOWED_NAMESPACES[element.namespaceURI]) {
      return true;
    }
    // The code should never reach this place (this means
    // that the element somehow got namespace that is not
    // HTML, SVG, MathML or allowed via ALLOWED_NAMESPACES).
    // Return false just in case.
    return false;
  };
  /**
   * _forceRemove
   *
   * @param node a DOM node
   */
  const _forceRemove = function _forceRemove(node) {
    arrayPush(DOMPurify.removed, {
      element: node
    });
    try {
      // eslint-disable-next-line unicorn/prefer-dom-node-remove
      getParentNode(node).removeChild(node);
    } catch (_) {
      remove(node);
    }
  };
  /**
   * _removeAttribute
   *
   * @param name an Attribute name
   * @param element a DOM node
   */
  const _removeAttribute = function _removeAttribute(name, element) {
    try {
      arrayPush(DOMPurify.removed, {
        attribute: element.getAttributeNode(name),
        from: element
      });
    } catch (_) {
      arrayPush(DOMPurify.removed, {
        attribute: null,
        from: element
      });
    }
    element.removeAttribute(name);
    // We void attribute values for unremovable "is" attributes
    if (name === 'is') {
      if (RETURN_DOM || RETURN_DOM_FRAGMENT) {
        try {
          _forceRemove(element);
        } catch (_) {}
      } else {
        try {
          element.setAttribute(name, '');
        } catch (_) {}
      }
    }
  };
  /**
   * _initDocument
   *
   * @param dirty - a string of dirty markup
   * @return a DOM, filled with the dirty markup
   */
  const _initDocument = function _initDocument(dirty) {
    /* Create a HTML document */
    let doc = null;
    let leadingWhitespace = null;
    if (FORCE_BODY) {
      dirty = '<remove></remove>' + dirty;
    } else {
      /* If FORCE_BODY isn't used, leading whitespace needs to be preserved manually */
      const matches = stringMatch(dirty, /^[\r\n\t ]+/);
      leadingWhitespace = matches && matches[0];
    }
    if (PARSER_MEDIA_TYPE === 'application/xhtml+xml' && NAMESPACE === HTML_NAMESPACE) {
      // Root of XHTML doc must contain xmlns declaration (see https://www.w3.org/TR/xhtml1/normative.html#strict)
      dirty = '<html xmlns="http://www.w3.org/1999/xhtml"><head></head><body>' + dirty + '</body></html>';
    }
    const dirtyPayload = trustedTypesPolicy ? trustedTypesPolicy.createHTML(dirty) : dirty;
    /*
     * Use the DOMParser API by default, fallback later if needs be
     * DOMParser not work for svg when has multiple root element.
     */
    if (NAMESPACE === HTML_NAMESPACE) {
      try {
        doc = new DOMParser().parseFromString(dirtyPayload, PARSER_MEDIA_TYPE);
      } catch (_) {}
    }
    /* Use createHTMLDocument in case DOMParser is not available */
    if (!doc || !doc.documentElement) {
      doc = implementation.createDocument(NAMESPACE, 'template', null);
      try {
        doc.documentElement.innerHTML = IS_EMPTY_INPUT ? emptyHTML : dirtyPayload;
      } catch (_) {
        // Syntax error if dirtyPayload is invalid xml
      }
    }
    const body = doc.body || doc.documentElement;
    if (dirty && leadingWhitespace) {
      body.insertBefore(document.createTextNode(leadingWhitespace), body.childNodes[0] || null);
    }
    /* Work on whole document or just its body */
    if (NAMESPACE === HTML_NAMESPACE) {
      return getElementsByTagName.call(doc, WHOLE_DOCUMENT ? 'html' : 'body')[0];
    }
    return WHOLE_DOCUMENT ? doc.documentElement : body;
  };
  /**
   * Creates a NodeIterator object that you can use to traverse filtered lists of nodes or elements in a document.
   *
   * @param root The root element or node to start traversing on.
   * @return The created NodeIterator
   */
  const _createNodeIterator = function _createNodeIterator(root) {
    return createNodeIterator.call(root.ownerDocument || root, root,
    // eslint-disable-next-line no-bitwise
    NodeFilter.SHOW_ELEMENT | NodeFilter.SHOW_COMMENT | NodeFilter.SHOW_TEXT | NodeFilter.SHOW_PROCESSING_INSTRUCTION | NodeFilter.SHOW_CDATA_SECTION, null);
  };
  /**
   * _isClobbered
   *
   * @param element element to check for clobbering attacks
   * @return true if clobbered, false if safe
   */
  const _isClobbered = function _isClobbered(element) {
    return element instanceof HTMLFormElement && (typeof element.nodeName !== 'string' || typeof element.textContent !== 'string' || typeof element.removeChild !== 'function' || !(element.attributes instanceof NamedNodeMap) || typeof element.removeAttribute !== 'function' || typeof element.setAttribute !== 'function' || typeof element.namespaceURI !== 'string' || typeof element.insertBefore !== 'function' || typeof element.hasChildNodes !== 'function');
  };
  /**
   * Checks whether the given object is a DOM node.
   *
   * @param value object to check whether it's a DOM node
   * @return true is object is a DOM node
   */
  const _isNode = function _isNode(value) {
    return typeof Node === 'function' && value instanceof Node;
  };
  function _executeHooks(hooks, currentNode, data) {
    arrayForEach(hooks, hook => {
      hook.call(DOMPurify, currentNode, data, CONFIG);
    });
  }
  /**
   * _sanitizeElements
   *
   * @protect nodeName
   * @protect textContent
   * @protect removeChild
   * @param currentNode to check for permission to exist
   * @return true if node was killed, false if left alive
   */
  const _sanitizeElements = function _sanitizeElements(currentNode) {
    let content = null;
    /* Execute a hook if present */
    _executeHooks(hooks.beforeSanitizeElements, currentNode, null);
    /* Check if element is clobbered or can clobber */
    if (_isClobbered(currentNode)) {
      _forceRemove(currentNode);
      return true;
    }
    /* Now let's check the element's type and name */
    const tagName = transformCaseFunc(currentNode.nodeName);
    /* Execute a hook if present */
    _executeHooks(hooks.uponSanitizeElement, currentNode, {
      tagName,
      allowedTags: ALLOWED_TAGS
    });
    /* Detect mXSS attempts abusing namespace confusion */
    if (currentNode.hasChildNodes() && !_isNode(currentNode.firstElementChild) && regExpTest(/<[/\w]/g, currentNode.innerHTML) && regExpTest(/<[/\w]/g, currentNode.textContent)) {
      _forceRemove(currentNode);
      return true;
    }
    /* Remove any occurrence of processing instructions */
    if (currentNode.nodeType === NODE_TYPE.progressingInstruction) {
      _forceRemove(currentNode);
      return true;
    }
    /* Remove any kind of possibly harmful comments */
    if (SAFE_FOR_XML && currentNode.nodeType === NODE_TYPE.comment && regExpTest(/<[/\w]/g, currentNode.data)) {
      _forceRemove(currentNode);
      return true;
    }
    /* Remove element if anything forbids its presence */
    if (!ALLOWED_TAGS[tagName] || FORBID_TAGS[tagName]) {
      /* Check if we have a custom element to handle */
      if (!FORBID_TAGS[tagName] && _isBasicCustomElement(tagName)) {
        if (CUSTOM_ELEMENT_HANDLING.tagNameCheck instanceof RegExp && regExpTest(CUSTOM_ELEMENT_HANDLING.tagNameCheck, tagName)) {
          return false;
        }
        if (CUSTOM_ELEMENT_HANDLING.tagNameCheck instanceof Function && CUSTOM_ELEMENT_HANDLING.tagNameCheck(tagName)) {
          return false;
        }
      }
      /* Keep content except for bad-listed elements */
      if (KEEP_CONTENT && !FORBID_CONTENTS[tagName]) {
        const parentNode = getParentNode(currentNode) || currentNode.parentNode;
        const childNodes = getChildNodes(currentNode) || currentNode.childNodes;
        if (childNodes && parentNode) {
          const childCount = childNodes.length;
          for (let i = childCount - 1; i >= 0; --i) {
            const childClone = cloneNode(childNodes[i], true);
            childClone.__removalCount = (currentNode.__removalCount || 0) + 1;
            parentNode.insertBefore(childClone, getNextSibling(currentNode));
          }
        }
      }
      _forceRemove(currentNode);
      return true;
    }
    /* Check whether element has a valid namespace */
    if (currentNode instanceof Element && !_checkValidNamespace(currentNode)) {
      _forceRemove(currentNode);
      return true;
    }
    /* Make sure that older browsers don't get fallback-tag mXSS */
    if ((tagName === 'noscript' || tagName === 'noembed' || tagName === 'noframes') && regExpTest(/<\/no(script|embed|frames)/i, currentNode.innerHTML)) {
      _forceRemove(currentNode);
      return true;
    }
    /* Sanitize element content to be template-safe */
    if (SAFE_FOR_TEMPLATES && currentNode.nodeType === NODE_TYPE.text) {
      /* Get the element's text content */
      content = currentNode.textContent;
      arrayForEach([MUSTACHE_EXPR, ERB_EXPR, TMPLIT_EXPR], expr => {
        content = stringReplace(content, expr, ' ');
      });
      if (currentNode.textContent !== content) {
        arrayPush(DOMPurify.removed, {
          element: currentNode.cloneNode()
        });
        currentNode.textContent = content;
      }
    }
    /* Execute a hook if present */
    _executeHooks(hooks.afterSanitizeElements, currentNode, null);
    return false;
  };
  /**
   * _isValidAttribute
   *
   * @param lcTag Lowercase tag name of containing element.
   * @param lcName Lowercase attribute name.
   * @param value Attribute value.
   * @return Returns true if `value` is valid, otherwise false.
   */
  // eslint-disable-next-line complexity
  const _isValidAttribute = function _isValidAttribute(lcTag, lcName, value) {
    /* Make sure attribute cannot clobber */
    if (SANITIZE_DOM && (lcName === 'id' || lcName === 'name') && (value in document || value in formElement)) {
      return false;
    }
    /* Allow valid data-* attributes: At least one character after "-"
        (https://html.spec.whatwg.org/multipage/dom.html#embedding-custom-non-visible-data-with-the-data-*-attributes)
        XML-compatible (https://html.spec.whatwg.org/multipage/infrastructure.html#xml-compatible and http://www.w3.org/TR/xml/#d0e804)
        We don't need to check the value; it's always URI safe. */
    if (ALLOW_DATA_ATTR && !FORBID_ATTR[lcName] && regExpTest(DATA_ATTR, lcName)) ; else if (ALLOW_ARIA_ATTR && regExpTest(ARIA_ATTR, lcName)) ; else if (!ALLOWED_ATTR[lcName] || FORBID_ATTR[lcName]) {
      if (
      // First condition does a very basic check if a) it's basically a valid custom element tagname AND
      // b) if the tagName passes whatever the user has configured for CUSTOM_ELEMENT_HANDLING.tagNameCheck
      // and c) if the attribute name passes whatever the user has configured for CUSTOM_ELEMENT_HANDLING.attributeNameCheck
      _isBasicCustomElement(lcTag) && (CUSTOM_ELEMENT_HANDLING.tagNameCheck instanceof RegExp && regExpTest(CUSTOM_ELEMENT_HANDLING.tagNameCheck, lcTag) || CUSTOM_ELEMENT_HANDLING.tagNameCheck instanceof Function && CUSTOM_ELEMENT_HANDLING.tagNameCheck(lcTag)) && (CUSTOM_ELEMENT_HANDLING.attributeNameCheck instanceof RegExp && regExpTest(CUSTOM_ELEMENT_HANDLING.attributeNameCheck, lcName) || CUSTOM_ELEMENT_HANDLING.attributeNameCheck instanceof Function && CUSTOM_ELEMENT_HANDLING.attributeNameCheck(lcName)) ||
      // Alternative, second condition checks if it's an `is`-attribute, AND
      // the value passes whatever the user has configured for CUSTOM_ELEMENT_HANDLING.tagNameCheck
      lcName === 'is' && CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements && (CUSTOM_ELEMENT_HANDLING.tagNameCheck instanceof RegExp && regExpTest(CUSTOM_ELEMENT_HANDLING.tagNameCheck, value) || CUSTOM_ELEMENT_HANDLING.tagNameCheck instanceof Function && CUSTOM_ELEMENT_HANDLING.tagNameCheck(value))) ; else {
        return false;
      }
      /* Check value is safe. First, is attr inert? If so, is safe */
    } else if (URI_SAFE_ATTRIBUTES[lcName]) ; else if (regExpTest(IS_ALLOWED_URI$1, stringReplace(value, ATTR_WHITESPACE, ''))) ; else if ((lcName === 'src' || lcName === 'xlink:href' || lcName === 'href') && lcTag !== 'script' && stringIndexOf(value, 'data:') === 0 && DATA_URI_TAGS[lcTag]) ; else if (ALLOW_UNKNOWN_PROTOCOLS && !regExpTest(IS_SCRIPT_OR_DATA, stringReplace(value, ATTR_WHITESPACE, ''))) ; else if (value) {
      return false;
    } else ;
    return true;
  };
  /**
   * _isBasicCustomElement
   * checks if at least one dash is included in tagName, and it's not the first char
   * for more sophisticated checking see https://github.com/sindresorhus/validate-element-name
   *
   * @param tagName name of the tag of the node to sanitize
   * @returns Returns true if the tag name meets the basic criteria for a custom element, otherwise false.
   */
  const _isBasicCustomElement = function _isBasicCustomElement(tagName) {
    return tagName !== 'annotation-xml' && stringMatch(tagName, CUSTOM_ELEMENT);
  };
  /**
   * _sanitizeAttributes
   *
   * @protect attributes
   * @protect nodeName
   * @protect removeAttribute
   * @protect setAttribute
   *
   * @param currentNode to sanitize
   */
  const _sanitizeAttributes = function _sanitizeAttributes(currentNode) {
    /* Execute a hook if present */
    _executeHooks(hooks.beforeSanitizeAttributes, currentNode, null);
    const {
      attributes
    } = currentNode;
    /* Check if we have attributes; if not we might have a text node */
    if (!attributes || _isClobbered(currentNode)) {
      return;
    }
    const hookEvent = {
      attrName: '',
      attrValue: '',
      keepAttr: true,
      allowedAttributes: ALLOWED_ATTR,
      forceKeepAttr: undefined
    };
    let l = attributes.length;
    /* Go backwards over all attributes; safely remove bad ones */
    while (l--) {
      const attr = attributes[l];
      const {
        name,
        namespaceURI,
        value: attrValue
      } = attr;
      const lcName = transformCaseFunc(name);
      let value = name === 'value' ? attrValue : stringTrim(attrValue);
      /* Execute a hook if present */
      hookEvent.attrName = lcName;
      hookEvent.attrValue = value;
      hookEvent.keepAttr = true;
      hookEvent.forceKeepAttr = undefined; // Allows developers to see this is a property they can set
      _executeHooks(hooks.uponSanitizeAttribute, currentNode, hookEvent);
      value = hookEvent.attrValue;
      /* Full DOM Clobbering protection via namespace isolation,
       * Prefix id and name attributes with `user-content-`
       */
      if (SANITIZE_NAMED_PROPS && (lcName === 'id' || lcName === 'name')) {
        // Remove the attribute with this value
        _removeAttribute(name, currentNode);
        // Prefix the value and later re-create the attribute with the sanitized value
        value = SANITIZE_NAMED_PROPS_PREFIX + value;
      }
      /* Work around a security issue with comments inside attributes */
      if (SAFE_FOR_XML && regExpTest(/((--!?|])>)|<\/(style|title)/i, value)) {
        _removeAttribute(name, currentNode);
        continue;
      }
      /* Did the hooks approve of the attribute? */
      if (hookEvent.forceKeepAttr) {
        continue;
      }
      /* Remove attribute */
      _removeAttribute(name, currentNode);
      /* Did the hooks approve of the attribute? */
      if (!hookEvent.keepAttr) {
        continue;
      }
      /* Work around a security issue in jQuery 3.0 */
      if (!ALLOW_SELF_CLOSE_IN_ATTR && regExpTest(/\/>/i, value)) {
        _removeAttribute(name, currentNode);
        continue;
      }
      /* Sanitize attribute content to be template-safe */
      if (SAFE_FOR_TEMPLATES) {
        arrayForEach([MUSTACHE_EXPR, ERB_EXPR, TMPLIT_EXPR], expr => {
          value = stringReplace(value, expr, ' ');
        });
      }
      /* Is `value` valid for this attribute? */
      const lcTag = transformCaseFunc(currentNode.nodeName);
      if (!_isValidAttribute(lcTag, lcName, value)) {
        continue;
      }
      /* Handle attributes that require Trusted Types */
      if (trustedTypesPolicy && typeof trustedTypes === 'object' && typeof trustedTypes.getAttributeType === 'function') {
        if (namespaceURI) ; else {
          switch (trustedTypes.getAttributeType(lcTag, lcName)) {
            case 'TrustedHTML':
              {
                value = trustedTypesPolicy.createHTML(value);
                break;
              }
            case 'TrustedScriptURL':
              {
                value = trustedTypesPolicy.createScriptURL(value);
                break;
              }
          }
        }
      }
      /* Handle invalid data-* attribute set by try-catching it */
      try {
        if (namespaceURI) {
          currentNode.setAttributeNS(namespaceURI, name, value);
        } else {
          /* Fallback to setAttribute() for browser-unrecognized namespaces e.g. "x-schema". */
          currentNode.setAttribute(name, value);
        }
        if (_isClobbered(currentNode)) {
          _forceRemove(currentNode);
        } else {
          arrayPop(DOMPurify.removed);
        }
      } catch (_) {}
    }
    /* Execute a hook if present */
    _executeHooks(hooks.afterSanitizeAttributes, currentNode, null);
  };
  /**
   * _sanitizeShadowDOM
   *
   * @param fragment to iterate over recursively
   */
  const _sanitizeShadowDOM = function _sanitizeShadowDOM(fragment) {
    let shadowNode = null;
    const shadowIterator = _createNodeIterator(fragment);
    /* Execute a hook if present */
    _executeHooks(hooks.beforeSanitizeShadowDOM, fragment, null);
    while (shadowNode = shadowIterator.nextNode()) {
      /* Execute a hook if present */
      _executeHooks(hooks.uponSanitizeShadowNode, shadowNode, null);
      /* Sanitize tags and elements */
      _sanitizeElements(shadowNode);
      /* Check attributes next */
      _sanitizeAttributes(shadowNode);
      /* Deep shadow DOM detected */
      if (shadowNode.content instanceof DocumentFragment) {
        _sanitizeShadowDOM(shadowNode.content);
      }
    }
    /* Execute a hook if present */
    _executeHooks(hooks.afterSanitizeShadowDOM, fragment, null);
  };
  // eslint-disable-next-line complexity
  DOMPurify.sanitize = function (dirty) {
    let cfg = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : {};
    let body = null;
    let importedNode = null;
    let currentNode = null;
    let returnNode = null;
    /* Make sure we have a string to sanitize.
      DO NOT return early, as this will return the wrong type if
      the user has requested a DOM object rather than a string */
    IS_EMPTY_INPUT = !dirty;
    if (IS_EMPTY_INPUT) {
      dirty = '<!-->';
    }
    /* Stringify, in case dirty is an object */
    if (typeof dirty !== 'string' && !_isNode(dirty)) {
      if (typeof dirty.toString === 'function') {
        dirty = dirty.toString();
        if (typeof dirty !== 'string') {
          throw typeErrorCreate('dirty is not a string, aborting');
        }
      } else {
        throw typeErrorCreate('toString is not a function');
      }
    }
    /* Return dirty HTML if DOMPurify cannot run */
    if (!DOMPurify.isSupported) {
      return dirty;
    }
    /* Assign config vars */
    if (!SET_CONFIG) {
      _parseConfig(cfg);
    }
    /* Clean up removed elements */
    DOMPurify.removed = [];
    /* Check if dirty is correctly typed for IN_PLACE */
    if (typeof dirty === 'string') {
      IN_PLACE = false;
    }
    if (IN_PLACE) {
      /* Do some early pre-sanitization to avoid unsafe root nodes */
      if (dirty.nodeName) {
        const tagName = transformCaseFunc(dirty.nodeName);
        if (!ALLOWED_TAGS[tagName] || FORBID_TAGS[tagName]) {
          throw typeErrorCreate('root node is forbidden and cannot be sanitized in-place');
        }
      }
    } else if (dirty instanceof Node) {
      /* If dirty is a DOM element, append to an empty document to avoid
         elements being stripped by the parser */
      body = _initDocument('<!---->');
      importedNode = body.ownerDocument.importNode(dirty, true);
      if (importedNode.nodeType === NODE_TYPE.element && importedNode.nodeName === 'BODY') {
        /* Node is already a body, use as is */
        body = importedNode;
      } else if (importedNode.nodeName === 'HTML') {
        body = importedNode;
      } else {
        // eslint-disable-next-line unicorn/prefer-dom-node-append
        body.appendChild(importedNode);
      }
    } else {
      /* Exit directly if we have nothing to do */
      if (!RETURN_DOM && !SAFE_FOR_TEMPLATES && !WHOLE_DOCUMENT &&
      // eslint-disable-next-line unicorn/prefer-includes
      dirty.indexOf('<') === -1) {
        return trustedTypesPolicy && RETURN_TRUSTED_TYPE ? trustedTypesPolicy.createHTML(dirty) : dirty;
      }
      /* Initialize the document to work on */
      body = _initDocument(dirty);
      /* Check we have a DOM node from the data */
      if (!body) {
        return RETURN_DOM ? null : RETURN_TRUSTED_TYPE ? emptyHTML : '';
      }
    }
    /* Remove first element node (ours) if FORCE_BODY is set */
    if (body && FORCE_BODY) {
      _forceRemove(body.firstChild);
    }
    /* Get node iterator */
    const nodeIterator = _createNodeIterator(IN_PLACE ? dirty : body);
    /* Now start iterating over the created document */
    while (currentNode = nodeIterator.nextNode()) {
      /* Sanitize tags and elements */
      _sanitizeElements(currentNode);
      /* Check attributes next */
      _sanitizeAttributes(currentNode);
      /* Shadow DOM detected, sanitize it */
      if (currentNode.content instanceof DocumentFragment) {
        _sanitizeShadowDOM(currentNode.content);
      }
    }
    /* If we sanitized `dirty` in-place, return it. */
    if (IN_PLACE) {
      return dirty;
    }
    /* Return sanitized string or DOM */
    if (RETURN_DOM) {
      if (RETURN_DOM_FRAGMENT) {
        returnNode = createDocumentFragment.call(body.ownerDocument);
        while (body.firstChild) {
          // eslint-disable-next-line unicorn/prefer-dom-node-append
          returnNode.appendChild(body.firstChild);
        }
      } else {
        returnNode = body;
      }
      if (ALLOWED_ATTR.shadowroot || ALLOWED_ATTR.shadowrootmode) {
        /*
          AdoptNode() is not used because internal state is not reset
          (e.g. the past names map of a HTMLFormElement), this is safe
          in theory but we would rather not risk another attack vector.
          The state that is cloned by importNode() is explicitly defined
          by the specs.
        */
        returnNode = importNode.call(originalDocument, returnNode, true);
      }
      return returnNode;
    }
    let serializedHTML = WHOLE_DOCUMENT ? body.outerHTML : body.innerHTML;
    /* Serialize doctype if allowed */
    if (WHOLE_DOCUMENT && ALLOWED_TAGS['!doctype'] && body.ownerDocument && body.ownerDocument.doctype && body.ownerDocument.doctype.name && regExpTest(DOCTYPE_NAME, body.ownerDocument.doctype.name)) {
      serializedHTML = '<!DOCTYPE ' + body.ownerDocument.doctype.name + '>\n' + serializedHTML;
    }
    /* Sanitize final string template-safe */
    if (SAFE_FOR_TEMPLATES) {
      arrayForEach([MUSTACHE_EXPR, ERB_EXPR, TMPLIT_EXPR], expr => {
        serializedHTML = stringReplace(serializedHTML, expr, ' ');
      });
    }
    return trustedTypesPolicy && RETURN_TRUSTED_TYPE ? trustedTypesPolicy.createHTML(serializedHTML) : serializedHTML;
  };
  DOMPurify.setConfig = function () {
    let cfg = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : {};
    _parseConfig(cfg);
    SET_CONFIG = true;
  };
  DOMPurify.clearConfig = function () {
    CONFIG = null;
    SET_CONFIG = false;
  };
  DOMPurify.isValidAttribute = function (tag, attr, value) {
    /* Initialize shared config vars if necessary. */
    if (!CONFIG) {
      _parseConfig({});
    }
    const lcTag = transformCaseFunc(tag);
    const lcName = transformCaseFunc(attr);
    return _isValidAttribute(lcTag, lcName, value);
  };
  DOMPurify.addHook = function (entryPoint, hookFunction) {
    if (typeof hookFunction !== 'function') {
      return;
    }
    arrayPush(hooks[entryPoint], hookFunction);
  };
  DOMPurify.removeHook = function (entryPoint, hookFunction) {
    if (hookFunction !== undefined) {
      const index = arrayLastIndexOf(hooks[entryPoint], hookFunction);
      return index === -1 ? undefined : arraySplice(hooks[entryPoint], index, 1)[0];
    }
    return arrayPop(hooks[entryPoint]);
  };
  DOMPurify.removeHooks = function (entryPoint) {
    hooks[entryPoint] = [];
  };
  DOMPurify.removeAllHooks = function () {
    hooks = _createHooksMap();
  };
  return DOMPurify;
}
var purify = createDOMPurify();

function parseQueryParams() {
	// Query string parameters
	var location = window.location;
	// We use srcdoc to load the decrypted content for password-protected projects,
	// which creates a nested window.
	if (location.href == "about:srcdoc") { location = window.parent.location; }
	var params = {};
	(function (query, re, match) {
		while (match = re.exec(query)) {
			params[decodeURIComponent(match[1])] = decodeURIComponent(match[2]);
		}
	})(location.search.substring(1).replace(/\+/g, "%20"), /([^&=]+)=?([^&]*)/g);
	return params;
}

/* This file is used by the story player, and must be IE-compatible */


var is_fixed_height;
var is_amp;

function isFixedHeight() {
	if (is_fixed_height == undefined) {
		var params = parseQueryParams();
		// "referrer" in params implies this is an Embedly embed
		// Check whether embedding site is known to support dynamic resizing
		if ("referrer" in params) { is_fixed_height = /^https:\/\/medium.com\//.test(params.referrer); }
		else { is_fixed_height = !("auto" in params); }
	}
	return is_fixed_height;
}

function getHeightForBreakpoint(width) {
	var breakpoint_width = width || window.innerWidth;
	if (breakpoint_width > 999) { return 650; }
	if (breakpoint_width > 599) { return 575; }
	return 400;
}

function initScrolly(opts) {
	if (!opts) { return; }
	if (window.top === window.self) { return; }
	var embedded_window = window;
	if (embedded_window.location.pathname == "srcdoc") { embedded_window = embedded_window.parent; }
	var message = {
		sender: "Flourish",
		method: "scrolly",
		captions: opts.captions,
		hasScrollyTransformFix: opts.hasScrollyTransformFix,
	};
	embedded_window.parent.postMessage(JSON.stringify(message), "*");
}

function notifyParentWindow(height, opts) {
	if (window.top === window.self) { return; }
	var embedded_window = window;
	if (embedded_window.location.pathname == "srcdoc") { embedded_window = embedded_window.parent; }
	if (is_amp) {
		// Message is not stringified for AMP
		height = parseInt(height, 10);
		embedded_window.parent.postMessage({
			sentinel: "amp",
			type: "embed-size",
			height: height,
		}, "*");
		return;
	}
	var message = {
		sender: "Flourish",
		context: "iframe.resize",
		method: "resize", // backwards compatibility
		height: height,
		src: embedded_window.location.toString(),
	};
	if (opts) {
		for (var name in opts) { message[name] = opts[name]; }
	}
	embedded_window.parent.postMessage(JSON.stringify(message), "*");
}

function isSafari() {
	// Some example user agents:
	// Safari iOS: Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1
	// Chrome OS X: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36
	// Embedded WkWebview on iOS: Mozilla/5.0 (iPhone; CPU iPhone OS 12_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/16D5039a
	return (navigator.userAgent.indexOf("Safari") !== -1 || navigator.userAgent.indexOf("iPhone") !== -1) && navigator.userAgent.indexOf("Chrome") == -1;
}

function isString(s) {
	return typeof s === "string" || s instanceof String;
}

function isPossibleHeight(n) {
	if (typeof n === "number") {
		return !isNaN(n) && (n >= 0);
	}
	else if (isString(n)) {
		// First regex checks there is at least one digit in n and rejectsedge cases like "" and "px" that would pass second regex
		// Given first regex, second regex makes sure that n is either a pure number or a number with a valid CSS unit
		// Units based on https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units#lengths plus %
		return /\d/.test(n) && /^[0-9]*(\.[0-9]*)?(cm|mm|Q|in|pc|pt|px|em|ex|ch|rem|lh|vw|vh|vmin|vmax|%)?$/i.test(n);
	}
	return false;
}

function validateWarnMessage(message) {
	if (message.method !== "warn") {
		console.warn("BUG: validateWarnMessage called for method" + message.method);
		return false;
	}
	if ((message.message != null) && !isString(message.message)) { return false; }
	if ((message.explanation != null) && !isString(message.explanation)) { return false; }
	return true;
}

function validateResizeMessage(message) {
	if (message.method !== "resize") {
		console.warn("BUG: validateResizeMessage called for method" + message.method);
		return false;
	}
	if (!isString(message.src)) { return false; }
	if (!isString(message.context)) { return false; }
	if (!isPossibleHeight(message.height)) { return false; }
	return true;
}

function validateSetSettingMessage(_message) {
	throw new Error("Validation for setSetting is not implemented yet; see issue #4328");
}

function validateScrolly(message) {
	if (message.method !== "scrolly") {
		console.warn("BUG: validateScrolly called for method" + message.method);
		return false;
	}
	if (!Array.isArray(message.captions)) { return false; }
	return true;
}

function validateCustomerAnalyticsMessage(message) {
	if (message.method !== "customerAnalytics") {
		console.warn("BUG: validateCustomerAnalyticsMessage called for method" + message.method);
		return false;
	}
	// We don't consume customer analytics messages; they're just passed
	// on, and their structure is up to the customer, so there's no
	// point in validating them.
	return true;
}

function validateRequestUpload(message) {
	if (message.method !== "request-upload") {
		console.warn("BUG: validateResizeMessage called for method" + message.method);
		return false;
	}
	// FIXME: when adding validation for setSetting (see above) we should
	// also validate that this is a valid setting name of appropriate type
	if (!isString(message.name)) { return false; }
	if (!(message.accept == null || isString(message.accept))) { return false; }
	return true;
}

function getMessageValidators(methods) {
	var available_message_validators = {
		"warn": validateWarnMessage,
		"resize": validateResizeMessage,
		"setSetting": validateSetSettingMessage,
		"customerAnalytics": validateCustomerAnalyticsMessage,
		"request-upload": validateRequestUpload,
		"scrolly": validateScrolly,
	};
	var validators = {};
	for (var i = 0; i < methods.length; i++) {
		var method = methods[i];
		if (available_message_validators[method]) {
			validators[method] = available_message_validators[method];
		}
		else {
			throw new Error("No validator found for method " + method);
		}
	}
	return validators;
}

function startEventListeners(callback, allowed_methods, embed_domain) {
	var message_validators = getMessageValidators(allowed_methods);
	window.addEventListener("message", function(event) {
		var is_accepted_event_origin = (function () {
			if (event.origin == document.location.origin) {
				return true;
			}
			// If company has configured a custom origin for downloaded projects, allow it
			if (embed_domain) {
				const origin = event.origin.toLowerCase();
				embed_domain = embed_domain.toLowerCase();

				// Allow the domain itself…
				if (origin.endsWith("//" + embed_domain)) { return true; }

				// and subdomains
				if (origin.endsWith("." + embed_domain)) { return true; }
			}
			if (event.origin.match(/\/\/localhost:\d+$|\/\/(?:public|app)\.flourish.devlocal$|\/\/flourish-api\.com$|\.flourish\.(?:local(:\d+)?|net|rocks|studio)$|\.uri\.sh$|\/\/flourish-user-templates\.com$/)) {
				return true;
			}
			return false;
		})();

		// event.source is null when the message is sent by an extension
		// https://developer.mozilla.org/en-US/docs/Web/API/Window/postMessage#Using_window.postMessage_in_extensions
		if (event.source == null) { return; }
		if (!is_accepted_event_origin) { return; }
		var message;
		try {
			message = typeof event.data === "object" ? event.data : JSON.parse(event.data);
		}
		catch (e) {
			console.warn("Unexpected non-JSON message: " + JSON.stringify(event.data));
			return;
		}
		if (message.sender !== "Flourish") { return; }
		if (!message.method) {
			console.warn("The 'method' property was missing from message", message);
			return;
		}
		if (!Object.prototype.hasOwnProperty.call(message_validators, message.method)) {
			console.warn("No validator implemented for message", message);
			return;
		}
		if (!message_validators[message.method](message)) {
			console.warn("Validation failed for the message", message);
			return;
		}
		var frames = document.querySelectorAll("iframe");
		for (var i=0; i < frames.length; i++) {
			if (frames[i].contentWindow == event.source || frames[i].contentWindow == event.source.parent) {
				callback(message, frames[i]);
				return;
			}
		}
		console.warn("could not find frame", message);
	});

	if (isSafari()) {
		window.addEventListener("resize", onSafariWindowResize);
		onSafariWindowResize();
	}
}

function onSafariWindowResize() {
	// Ensure all iframes without explicit width attribute are sized to fit their container
	var containers = document.querySelectorAll(".flourish-embed");
	for (var i=0; i < containers.length; i++) {
		var container = containers[i];
		if (container.getAttribute("data-width")) { continue; }
		var iframe = container.querySelector("iframe");
		// When embeds are dynamically loaded, we might have a container without a
		// loaded iframe yet
		if (!iframe) { continue; }
		var computed_style = window.getComputedStyle(container);
		var width = container.offsetWidth - parseFloat(computed_style.paddingLeft) - parseFloat(computed_style.paddingRight);
		iframe.style.width = width + "px";
	}
}

function createScrolly(iframe, captions, hasScrollyTransformFix) {
	var parent = iframe.parentNode;

	// Fallback to avoid any situation where the scrolly gets initialised twice
	if (parent.classList.contains("fl-scrolly-wrapper")) {
		console.warn("createScrolly is being called more than once per story. This should not happen.");
		return;
	}

	parent.classList.add("fl-scrolly-wrapper");
	parent.style.position = "relative";
	parent.style.paddingBottom = "1px";
	parent.style.transform = "translate3d(0, 0, 0)"; // Workaround for Safari https://stackoverflow.com/questions/50224855/not-respecting-z-index-on-safari-with-position-sticky

	// On Windows + Chromium, there is a bug where dropdowns open in the wrong
	// place in scrollies that is related to the sticky position of the iframe.
	// This workaround retriggers the transform to fix the dropdown positioning
	// (specifically, the transform is toggled between 0 and 1).
	// More context here: https://canvadev.atlassian.net/browse/FLOURISH-2379
	const is_windows = navigator.platform.indexOf("Win") > -1;
	const is_chromium = !!window.chrome &&
		(navigator.userAgent.indexOf("Chrome") > -1 ||
		navigator.userAgent.indexOf("Edg") > -1 ||
		navigator.userAgent.indexOf("OPR") > -1);

	if (is_windows && is_chromium && hasScrollyTransformFix) {
		let scroll_timeout;
		let transform = 0;
		window.addEventListener("scroll", function() {
			clearTimeout(scroll_timeout);

			scroll_timeout = setTimeout(() => {
				transform = transform === 0 ? 1 : 0;
				parent.style.transform = `translateZ(${transform}px)`;
			}, 100);
		});
	}

	iframe.style.position = "sticky";
	var h = parent.getAttribute("data-height") || null;
	if (!h) { // Scrollies require fixed height to work well, so if not height set …
		h = "80vh"; // … use a sensible fallback
		iframe.style.height = h; // And update the iframe height directly
	}
	iframe.style.top = "calc(50vh - " + h + "/2)";

	var credit = parent.querySelector(".flourish-credit");
	if (credit) {
		credit.style.position = "sticky";
		credit.style.top = "calc(50vh + " + h + "/2)";
	}

	captions.forEach(function(d, i) {
		var has_content = typeof d == "string" && d.trim() != "";
		var step = document.createElement("div");
		step.setAttribute("data-slide", i);
		step.classList.add("fl-scrolly-caption");
		step.style.position = "relative";
		step.style.transform = "translate3d(0,0,0)"; // Workaround for Safari https://stackoverflow.com/questions/50224855/not-respecting-z-index-on-safari-with-position-sticky
		step.style.textAlign= "center";
		step.style.maxWidth = "500px";
		step.style.height = "auto";
		step.style.marginTop = "0";
		step.style.marginBottom = has_content ? "100vh" : "50vh";
		step.style.marginLeft = "auto";
		step.style.marginRight = "auto";
		var caption = document.createElement("div");
		// eslint-disable-next-line flourish-security/dompurify
		caption.innerHTML = purify.sanitize(d, { ADD_ATTR: ["target"] });
		caption.style.visibility = has_content ? "" : "hidden";
		caption.style.display = "inline-block";
		caption.style.paddingTop = "1.25em";
		caption.style.paddingRight = "1.25em";
		caption.style.paddingBottom = "1.25em";
		caption.style.paddingLeft = "1.25em";
		caption.style.background = "rgba(255,255,255,0.9)";
		caption.style.boxShadow = "0px 0px 10px rgba(0,0,0,0.2)";
		caption.style.borderRadius = "10px";
		caption.style.textAlign = "center";
		caption.style.maxWidth = "100%";
		caption.style.margin = "0 20px";
		caption.style.overflowX = "hidden";
		step.appendChild(caption);
		parent.appendChild(step);
	});
	initIntersection(parent);
}

function initIntersection(container) {
	var t = "0%"; // Trigger when hits viewport; could be set by user in the future
	var observer = new IntersectionObserver(function(entries) {
		entries.forEach(function(entry) {
			if (entry.isIntersecting) {
				var iframe = container.querySelector("iframe");
				if (iframe) { iframe.src = iframe.src.replace(/#slide-.*/, "") + "#slide-" + entry.target.getAttribute("data-slide"); }
			}
		});
	}, { rootMargin: "0px 0px -" + t + " 0px" });

	var steps = container.querySelectorAll(".fl-scrolly-caption");
	for (var i = 0; i < steps.length; i++) {
		observer.observe(steps[i]);
	}

	// Set a max width on any images in the captions, to avoid ugly overflowing
	// in the rare cases where the
	// This won't happen much, but it is possible to paste an image into a
	// story caption, so better to handle this nicely since there's no other
	// way for the user to set it.
	var images = container.querySelectorAll(".fl-scrolly-caption img");
	images.forEach(function(img) { img.style.maxWidth = "100%"; });
}

function createEmbedIframe(embed_url, container, width, height, play_on_load) {
	var iframe = document.createElement("iframe");
	iframe.setAttribute("scrolling", "no");
	iframe.setAttribute("frameborder", "0");
	iframe.setAttribute("title", "Interactive or visual content");
	iframe.setAttribute("sandbox", "allow-same-origin allow-forms allow-scripts allow-downloads allow-popups allow-popups-to-escape-sandbox allow-top-navigation-by-user-activation");
	container.appendChild(iframe);

	// If the iframe doesn't have an offset parent, either the element or a parent
	// is set to display: none. This can cause problems with visualisation loading, so
	// we need to poll for the iframe being displayed before loading the visualisation.
	// FIXME: In Chrome, fixed position elements also return null for `offsetParent`.
	// The chances of an embed which is both position: fixed and display: none are
	// pretty small, so fuhgeddaboudit . If it's an issue in the future, we'll have to
	// recurse through the parent elements to make sure the iframe is displaying.
	if (iframe.offsetParent || getComputedStyle(iframe).position === "fixed") {
		setIframeContent(embed_url, container, iframe, width, height, play_on_load);
	}
	else {
		var poll_item = {
			embed_url: embed_url,
			container: container,
			iframe: iframe,
			width: width,
			height: height,
			play_on_load: play_on_load,
		};
		// If this is the first embed on the page which is isn't displayed, set up a
		// list of hidden iframes to poll
		if (!window._flourish_poll_items) {
			window._flourish_poll_items = [poll_item];
		}
		else {
			// Otherwise, add this to the list of iframes which are being polled
			window._flourish_poll_items.push(poll_item);
		}

		if (window._flourish_poll_items.length > 1) {
			// If there were already items in the array then we have already started
			// polling in a different embed script, so we can return. This iframe will
			// have its contents set by the other embed script.
			return iframe;
		}

		// Poll to see whether any of the iframes have started displaying
		var interval = setInterval(function() {
			window._flourish_poll_items = window._flourish_poll_items.filter(function(item) {
				if (!item.iframe.offsetParent) {
					// It's still not displaying, so return true to leave it in the array
					return true;
				}

				// It's displaying, so set the content, and return false to remove it from
				// the array
				setIframeContent(item.embed_url, item.container, item.iframe, item.width, item.height, item.play_on_load);
				return false;
			});

			if (!window._flourish_poll_items.length) {
				// All of the iframes are displaying, so we can stop polling. If another
				// embed is added later, a new interval will be created by that embed script.
				clearInterval(interval);
			}
		}, 500);
	}
	return iframe;
}

function setIframeContent(embed_url, container, iframe, width, height, play_on_load) {
	var width_in_px;
	if (width && typeof width === "number") {
		width_in_px = width;
		width = "" + width + "px";
	}
	// The regular expression below detects widths that have been explicitly
	// expressed in px units. (It turns out CSS is more complicated than you may
	// have realised.)
	else if (width && width.match(/^[ \t\r\n\f]*([+-]?\d+|\d*\.\d+(?:[eE][+-]?\d+)?)(?:\\?[Pp]|\\0{0,4}[57]0(?:\r\n|[ \t\r\n\f])?)(?:\\?[Xx]|\\0{0,4}[57]8(?:\r\n|[ \t\r\n\f])?)[ \t\r\n\f]*$/)) {
		width_in_px = parseFloat(width);
	}

	if (height && typeof height === "number") { height = "" + height + "px"; }
	// Odd design decision in Safari means need to set fixed width rather than %
	// as will try and size iframe to content otherwise. Must also set scrolling=no
	if (width) { iframe.style.width = width; }
	else if (isSafari()) { iframe.style.width = container.offsetWidth + "px"; }
	else { iframe.style.width = "100%"; }

	var fixed_height = !!height;
	if (!fixed_height) {
		if (embed_url.match(/\?/)) { embed_url += "&auto=1"; }
		else { embed_url += "?auto=1"; }
		// For initial height, use our standard breakpoints, based on the explicit
		// pixel width if we know it, or the iframe's measured width if not.
		height = getHeightForBreakpoint(width_in_px || iframe.offsetWidth) + "px";
	}

	if (height) {
		if (height.charAt(height.length - 1) === "%") {
			height = (parseFloat(height) / 100) * container.parentNode.offsetHeight + "px";
		}
		iframe.style.height = height;
	}

	iframe.setAttribute("src", embed_url + (play_on_load ? "#play-on-load" : ""));

	return iframe;
}

function initEmbedding() {
	is_amp = window.location.hash == "#amp=1";
	return {
		createEmbedIframe: createEmbedIframe,
		isFixedHeight: isFixedHeight,
		getHeightForBreakpoint: getHeightForBreakpoint,
		startEventListeners: startEventListeners,
		notifyParentWindow: notifyParentWindow,
		initScrolly: initScrolly,
		createScrolly: createScrolly,
		isSafari: isSafari,
		initCustomerAnalytics: initCustomerAnalytics,
		addAnalyticsListener: addAnalyticsListener,
		sendCustomerAnalyticsMessage: sendCustomerAnalyticsMessage,
	};
}

var VERSION = "5.4.2";

var DEFAULTS = {
	api_url: "https://flourish-api.com/api/v1/live",
	public_bucket_prefix: "https://public.flourish.studio/",
	base_visualisation_data_format: "array",
};

// Properties that cannot (yet) be changed on update():
var IMMUTABLE_PROPERTIES = [
	"api_key", "template", "version", "container", "base_visualisation_id",
];

// Lookup for templates that the API script has loaded on to the page.
// This is needed for the update method to identify whether a particular
// call to Flourish.update(opts) is for a typed template.
var template_lookup = {};

function stringify(o) {
	if (!o && o !== 0) { return ""; }
	else if (typeof o === "object") {
		for (var k in o) { o[k] = stringify(o[k]); }
		return o;
	}
	else { return "" + o; }
}

function shallowCopy(o) {
	var r = {};
	for (var k in o) { r[k] = o[k]; }
	return r;
}

// Expects an object at the top level.
// Does not deep-copy arrays, which is okay here
// since the data structures we expect to receive
// have arrays only of strings.
function deepCopy(obj) {
	if (obj == null) { return obj; }
	var copy = {};
	for (var k in obj) {
		if (Array.isArray(obj[k])) {
			copy[k] = obj[k].slice();
		}
		else if (isObject(obj[k])) {
			copy[k] = deepCopy(obj[k]);
		}
		else {
			copy[k] = obj[k];
		}
	}
	return copy;
}

var embedding = null;

function getColumnTypeMetadata(column) {
	const interpreter = createInterpreter();
	const interpretation = interpreter(column)[0];

	return {
		type: interpretation.type,
		type_id: interpretation.id,
		output_format_id: interpretation.id,
	};
}

function Fleet(opts) {
	this._validateOpts(opts);

	this.template_loaded = false;
	this.metadata_loaded = false;
	this.company_state = null;
	this.template_settings = null;
	this._queued_methods = [];

	for (var prop in DEFAULTS) {
		if (!opts.hasOwnProperty(prop)) { opts[prop] = DEFAULTS[prop]; }
	}

	if (opts.base_visualisation_id) {
		var that = this;
		this._loadBaseVisualisation(opts, function(error, base) {
			if (error) {
				console.error(error.message);
				return;
			}
			opts = mergeObjects(base, opts);
			that._loadFleet(opts);
		});
	}
	else {
		this._loadFleet(opts);
	}
}

Fleet.prototype._loadBaseVisualisation = function Fleet__loadBaseVisualisation(opts, callback) {
	var xhr = new XMLHttpRequest();
	xhr.addEventListener("load", function() {
		if (this.status != 200) {
			var error = new Error("Fetching the base visualisation failed");
			return callback(error);
		}
		var parsed_json = JSON.parse(this.responseText);
		return callback(null, parsed_json);
	});

	const data_format = opts.base_visualisation_data_format;
	if (!["array", "object"].includes(data_format)) {
		return callback(
			new Error(`The base_visualisation_data_format parameter must be either "array" or "object"`),
		);
	}
	const path = data_format == "array" ? "/visualisation.json" : "/visualisation-object.json";

	xhr.open("GET", opts.public_bucket_prefix + "visualisation/" + opts.base_visualisation_id + path);
	xhr.send();
};

Fleet.prototype._loadFleet = function Fleet__loadFleet(opts) {
	this.original_properties = {};
	for (var i = 0; i < IMMUTABLE_PROPERTIES.length; i++) {
		var k = IMMUTABLE_PROPERTIES[i];
		this.original_properties[k] = opts[k];
	}

	// PATCHED: Added window.embedding check to allow R package to override createEmbedIframe
	// See R_package/README.md for details. Must reapply this patch when updating flourish-live.
	if (!embedding) { embedding = window.embedding || initEmbedding(); }
	var embed_url = opts.api_url + "/template" +
		"?api_key=" + opts.api_key +
		"&api_version=" + encodeURIComponent(VERSION) +
		"&template=" + encodeURIComponent(opts.template) +
		"&version=" + opts.version;

	var container = (typeof opts.container === "string") ? document.querySelector(opts.container) : opts.container;

	this.iframe = embedding.createEmbedIframe(embed_url, container, opts.width, opts.height, false);

	var that = this;
	this.iframe.addEventListener("load", function() {
		that.template_loaded = true;
		if (that.metadata_loaded) {
			that._init(
				{
					state: opts.state,
					data: that._data,
					typed_template: that.typed_template,
				},
				opts.callback,
			);
		}
	});

	embedding.startEventListeners(
		function(message, frame) {
			if (message.method == "resize") {
				var height = message.height;
				var type = typeof height;
				// Add "px" if height is a number or a string representing a pure number
				if (type === "number" || (type === "string" && !isNaN(height))) { message.height += "px"; }
				frame.style.height = message.height;
			}
		},
		["resize"],
	);

	var xhr = new XMLHttpRequest();
	xhr.addEventListener("load", function () {
		if (this.status === 500) {
			console.error(JSON.parse(this.responseText));
			return;
		}
		if (this.status != 200) {
			console.error("Fetching the template and data bindings from the server failed");
			return;
		}
		var parsed_json = JSON.parse(this.responseText);

		that.typed_template = parsed_json.typed_template;

		// Store a reference to the template in the templates_loaded lookup object,
		// for future reference by the update method.
		if (!template_lookup[opts.template]) { template_lookup[opts.template] = {}; }
		if (template_lookup[opts.template][opts.version] === undefined) {
			template_lookup[opts.template][opts.version] = that.typed_template;
		}

		that._prepareDataBindings(parsed_json.data_bindings);
		that.template_settings = parsed_json.settings || {};
		that.company_state = that._getCompanyState(parsed_json.company_custom);
		that.metadata_loaded = true;
		that._prepareData(opts);
		if (that.template_loaded) {
			that._init(
				{
					state: opts.state,
					data: that._data,
					typed_template: that.typed_template,
				},
				opts.callback,
			);
		}

		if (!parsed_json.hide_credit) {
			var template_name = opts.template.replace(/^@?flourish\//, "");
			var local_credits = getLocalizedCreditTextAndUrl(opts.lang, template_name);
			var credit = createFlourishCredit(local_credits.credit_url,
				null, null, local_credits.credit_text);
			container.appendChild(credit);
		}
	});

	xhr.open("GET", opts.api_url + "/metadata?api_key=" + opts.api_key + "&template=" + encodeURIComponent(opts.template) + "&version=" + opts.version);
	xhr.send();
};

// Calculate the base state which the state passed to the API is
// merged over. This will return an empty object unless the API key
// owner is in a company with custom settings.
Fleet.prototype._getCompanyState = function Fleet__getCompanyState(company_custom) {
	if (!company_custom) { return {}; }
	return company_custom.settings || {};
};

function isNonArrayObject(o) {
	return (o instanceof Object) && !Array.isArray(o) && o !== null;
}

function mergeObjects(o1, o2) {
	// Deep clone the first object so we won't modify it on merging:
	var k, v, result = JSON.parse(JSON.stringify(o1));
	for (k in o2) {
		v = o2[k];
		// If both corresponding values are objects, recursively
		// merge them, otherwise o2's value is used:
		if (isNonArrayObject(result[k]) && isNonArrayObject(v)) {
			result[k] = mergeObjects(result[k], v);
		}
		else { result[k] = v; }
	}
	return result;
}

Fleet.prototype._mergeState = function Fleet__mergeState(state) {
	return mergeObjects(this.company_state, state);
};

Fleet.prototype._prepareDataBindings = function Fleet__prepareDataBindings(data_bindings_array) {
	var data_bindings = {};

	for (var i = 0; i < data_bindings_array.length; i++) {
		var d = data_bindings_array[i];
		if (typeof d === "string") { continue; }

		if (!(d.dataset in data_bindings)) {
			data_bindings[d.dataset] = [];
		}
		data_bindings[d.dataset].push(d);
	}

	this._data_bindings = data_bindings;
	this._parsed_bindings = {};

	for (var dataset in data_bindings) {
		this._parseDataset(dataset);
	}
};

Fleet.prototype._parseDataset = function Fleet__parseDataset(dataset) {
	if (!this._parsed_bindings[dataset]) {
		var kd = this._parsed_bindings[dataset] = {
			dataset: dataset,
			mandatory_keys: [],
			optional_keys: [],
			columns_keys: [],
			default_values: {},
			has_mandatory_key: false,
		};

		var data_bindings = this._data_bindings;
		for (var key in data_bindings[dataset]) {
			var d = data_bindings[dataset][key];
			switch (d.type) {
				case "column":
					if (!d.optional) {
						kd.mandatory_keys.push(d.key);
						kd.has_mandatory_key = true;
					}
					else {
						kd.optional_keys.push(d.key);
					}
					break;

				case "columns":
					kd.default_values[d.key] = [];
					kd.columns_keys.push(d.key);
					break;
			}
		}
	}
};

Fleet.prototype._getColumnNames = function Fleet__getColumnNames(kd, column_names, optional_keys_used, number_of_columns) {
	var result = {};

	var dataset = kd.dataset;
	var column_name;
	for (var i = 0; i < kd.mandatory_keys.length; i++) {
		var mandatory_key = kd.mandatory_keys[i];
		column_name = (column_names && column_names[dataset] && column_names[dataset][mandatory_key]) || mandatory_key;

		result[mandatory_key] = column_name;
	}

	for (var i = 0; i < kd.optional_keys.length; i++) {
		var optional_key = kd.optional_keys[i];
		if (!optional_keys_used[optional_key]) { continue; }
		column_name = (column_names && column_names[dataset] && column_names[dataset][optional_key]) || optional_key;

		result[optional_key] = column_name;
	}

	for (var i = 0; i < kd.columns_keys.length; i++) {
		var columns_key = kd.columns_keys[i];
		if (column_names && column_names[dataset] && column_names[dataset][columns_key]) {
			column_name = column_names[dataset][columns_key];
			if (typeof column_name === "string") { column_name = [column_name]; }
			if (!Array.isArray(column_name) || column_name.length != number_of_columns[columns_key]) {
				throw new Error("Flourish: number of column names (" + column_name.length
					+ ") does not match the number of columns (" + number_of_columns[columns_key]
					+ ") for dataset “" + dataset + "” and key “" + columns_key + "”");
			}
		}
		else {
			column_name = [];
			for (var j = 0; j < number_of_columns[columns_key]; j++) {
				column_name.push(columns_key + " " + (j+1));
			}
		}

		result[columns_key] = column_name;
	}

	return result;
};

// TODO: test with untyped template

/** Returns metadata and interpretations (useful for parsing the data in a column) for bound columns in the dataset */
Fleet.prototype._getColumnTypesForDataset = function Fleet__getColumnTypesForDataset(data, bindings, column_type_overrides) {
	const all_bindings = Object.entries(bindings.column_bindings).concat(Object.entries(bindings.columns_bindings));
	const metadata = {};
	const interpretations = {};

	for (const [binding_name, binding_value] of all_bindings) {
		const is_multicolumn_binding = Array.isArray(binding_value);

		// bound_columns_identifiers is an array of column indexes or column names,
		// depending on if the data is in the 'array-of-arrays' or the 'array-of-objects' format.
		const bound_columns_identifiers = is_multicolumn_binding ? binding_value : [binding_value];

		for (let i = 0; i < bound_columns_identifiers.length; i++) {
			// If the data is in 'array-of-arrays' format, column_key should be a column index.
			// If the data is in 'array-of-objects' format, column_key should be a binding name.
			const column_key = bound_columns_identifiers[i];
			let type_override = column_type_overrides[column_key];

			const column_type_metadata = getColumnTypeMetadata(
				data.map(row => is_multicolumn_binding ? row[binding_name][i] : row[binding_name]),
			);

			// If the current column has a type override, add it to the metadata obj
			if (type_override) {
				// If one or more required keys are missing from the override object,
				// interpret the column and get them from the interpretation object.
				const required_keys = ["type", "type_id"];
				const override_keys = Object.keys(type_override);
				const missing_required_keys = required_keys.filter(required_key => !override_keys.includes(required_key));

				if (missing_required_keys.length) {
					console.warn(
						`Metadata for column '${column_key}' is missing a '${missing_required_keys.join("' and '")}' property.`
						+ " Flourish will interpret and populate the missing properties.",
					);

					missing_required_keys.forEach(function(missing_key) {
						type_override[missing_key] = column_type_metadata[missing_key];
					});
				}

				// If an output_format_id isn't set in the override, make it the same as the type_id
				if (!override_keys.includes("output_format_id")) {
					type_override.output_format_id = type_override.type_id;
				}

				if (!validateMetadata(type_override, column_key)) {
					throw new Error(`Metadata for column '${column_key}' is invalid.`);
				}

				if (is_multicolumn_binding) {
					if (!metadata[binding_name]) { metadata[binding_name] = []; }
					if (!interpretations[binding_name]) { interpretations[binding_name] = []; }
					metadata[binding_name].push(type_override);
					interpretations[binding_name].push(createInterpreter.getInterpretation(type_override.type_id));
				}
				else {
					metadata[binding_name] = type_override;
					interpretations[binding_name] = createInterpreter.getInterpretation(type_override.type_id);
				}
			}
			// If there are no user-specified types for a column on a multi-column
			// binding, interpret the column and add the type info to the metadata obj
			else if (is_multicolumn_binding) {
				if (!metadata[binding_name]) { metadata[binding_name] = []; }
				if (!interpretations[binding_name]) { interpretations[binding_name] = []; }

				const interpretation = createInterpreter.getInterpretation(column_type_metadata.type_id);
				metadata[binding_name].push(column_type_metadata);
				interpretations[binding_name].push(interpretation);
			}
			// If there are no user-specified types for a column on a single column
			// binding, interpret the column type and add it to the metadata obj
			else {
				metadata[binding_name] = column_type_metadata;
				interpretations[binding_name] = createInterpreter.getInterpretation(column_type_metadata.type_id);
			}
		}

		// Empty multi-column data bindings should still add an empty array
		// to the metadata object
		if (is_multicolumn_binding && !bound_columns_identifiers.length) {
			metadata[binding_name] = [];
		}
	}
	return { metadata, interpretations };
};

function validateMetadata(metadata, identifier_) {
	var identifier = identifier_ ? "Validation error in Column '" + identifier_ + "':" : "";

	// output_format_id is optional, so make sure if it's not provided, it
	// uses type_id for testing purposes
	if (!metadata.output_format_id) { metadata.output_format_id = metadata.type_id; }

	const required_keys = ["type", "type_id"];
	const metadata_keys = Object.keys(metadata);
	const missing_required_keys = required_keys.filter(required_key => !metadata_keys.includes(required_key));
	if (missing_required_keys.length) {
		console.error(identifier, "Metadata is missing required key: ", missing_required_keys.join(" and "), metadata);
		return false;
	}
	if (Object.values(metadata).some(v => typeof v != "string")) {
		console.error(identifier, "All properties in metadata need to be string", metadata);
		return false;
	}
	if (!["string", "number", "datetime"].includes(metadata.type)) {
		console.error(identifier, "Metadata 'type' property needs to be one of 'string', 'datetime' or 'number'", metadata);
		return false;
	}
	var type_id_type = metadata.type_id.split("$")[0];
	var output_id_type = metadata.output_format_id.split("$")[0];
	if (!(type_id_type === output_id_type && output_id_type === metadata.type)) {
		var type_id_mismatch = type_id_type !== metadata.type;
		var output_id_mismatch = output_id_type !== type_id_type;
		if (type_id_mismatch) { console.error(identifier, "Metadata 'type_id' type should match 'type'", metadata); }
		if (output_id_mismatch) { console.error(identifier, "Metadata 'output_format_id' type should match 'type_id'", metadata); }

		return false;
	}
	return true;
}

/** Parse data values according to the data types of their columns */
Fleet.prototype._parseTypedDataForDataset = function Fleet__parseTypedDataForDataset(data, types) {
	const parsed_data = data.map(row => {
		return Object.keys(row).reduce((parsed_data, binding) => {
			if (Array.isArray(row[binding])) {
				parsed_data[binding] = row[binding].map((value, i) => {
					if (typeof value === "number") { return value; }
					else { return types[binding][i].parse(value); }
				});
			}
			else if (typeof row[binding] === "number") { parsed_data[binding] = row[binding]; }
			else { parsed_data[binding] = types[binding].parse(row[binding]); }

			return parsed_data;
		}, {});
	});

	// Mapping through data removes doesn't transfer its named keys (like 'column_names')
	// to the parsed copy - so we copy those keys across now
	const data_keys = Object.keys(data);
	const parsed_data_keys = Object.keys(parsed_data);

	// Compare the length of parsed_data with data to see if any keys are missing
	if (parsed_data_keys.length -1 !== data_keys.length) {
		// Add the missing keys to parsed_data
		for (var i = 0; i < data_keys.length; i++) {
			if (!parsed_data_keys.includes(data_keys[i])) {
				parsed_data[data_keys[i]] = data[data_keys[i]];
			}
		}
	}
	return parsed_data;
};

function arrayToObjectKeys(arr) {
	return arr.reduce(function(obj, key) {
		obj[key] = true;
		return obj;
	}, {});
}

function getOrCreateDataset(data, dataset) {
	if (!data[dataset]) {
		data[dataset] = [];
		data[dataset].column_names = {};
	}
	return data[dataset];
}

function splitBindings(dataset, bindings, kd) {
	var result = { column_bindings: {}, columns_bindings: {} };
	for (var k in bindings) {
		var v = bindings[k];
		// FIXME: make a simple object lookup in kd instead of repeatedly iterating over these arrays
		if (kd.columns_keys.indexOf(k) >= 0) {
			result.columns_bindings[k] = v;
		}
		else if (kd.mandatory_keys.indexOf(k) >= 0 || kd.optional_keys.indexOf(k) >= 0) {
			result.column_bindings[k] = v;
		}
		else {
			throw new Error("Flourish: unknown binding “" + k + "” found for dataset “" + dataset + "”");
		}
	}
	return result;
}

function addMissingColumnNames(dataset, parsed_bindings, data_bindings) {
	var column_names = dataset.column_names;
	var mandatory_keys = arrayToObjectKeys(parsed_bindings.mandatory_keys);
	for (var i = 0; i < data_bindings.length; i++) {
		var binding = data_bindings[i];
		var key = binding.key;
		if (column_names[key] !== undefined) { continue; }
		if (binding.type === "columns") { column_names[key] = []; }
		else if (mandatory_keys[key]) { column_names[key] = binding.name; }
	}
}

// This function will take a row from a dataset in the shape that
// Flourish expects and do the following:
//   - add default values for any columns or optional column types
//   - do a number of checks for consistency of the data, and throw
//     an exception on finding any inconsistency
//   - record which optional keys have been used in the
//     optional_keys_used object.
//   - record the expected number of values for each columns type
function fixRow(d, kd, optional_keys_used, number_of_columns) {
	// Assign default values
	for (var k in kd.default_values) {
		if (!(k in d)) { d[k] = kd.default_values[k]; }
	}

	// Check that mandatory keys are present in each row
	for (var j = 0; j < kd.mandatory_keys.length; j++) {
		var mandatory_key = kd.mandatory_keys[j];
		if (!(mandatory_key in d)) {
			throw new Error("required key “" + mandatory_key + "” is missing");
		}
	}

	// Check that optional keys are used or not used consistently,
	// and record which are used in  the optional_keys_used object.
	for (var j = 0; j < kd.optional_keys.length; j++) {
		var optional_key = kd.optional_keys[j];
		if (optional_key in optional_keys_used) {
			if (optional_keys_used[optional_key] != (optional_key in d)) {
				throw new Error("the optional key “" + optional_key + "” is used in some rows but not in others");
			}
		}
		else {
			optional_keys_used[optional_key] = (optional_key in d);
		}
	}

	// Check that columns keys are used consistently, and record
	// how many columns each uses, in the number_of_columns object.
	//
	// TODO: Should we support having an inconsistent number of entries in a columns key?
	// We could assume the longest array determines the length.
	for (var j = 0; j < kd.columns_keys.length; j++) {
		var columns_key = kd.columns_keys[j];

		// If an atomic value is passed where an array is expected, treat it
		// as a single-element array.
		if (typeof d[columns_key] !== "object") {
			d[columns_key] = [d[columns_key]];
		}
		if (columns_key in number_of_columns) {
			if (number_of_columns[columns_key] != (d[columns_key].length)) {
				throw new Error("the columns key “" + columns_key + "” has an inconsistent number of entries");
			}
		}
		else {
			number_of_columns[columns_key] = d[columns_key].length;
		}
	}
}

Fleet.prototype._prepareData = function Fleet__prepareData(opts) {
	if ("column_names" in opts) { this.column_names = deepCopy(opts.column_names); }
	if (opts.bindings) {
		this._prepareDataFromExternalFormat(opts.data, opts.bindings, opts.metadata || {});
	}
	else {
		this._prepareDataFlourishShape(opts.data, this.column_names); // TODO: make this work with column types
	}
};

Fleet.prototype._prepareDataFromExternalFormat = function Fleet__prepareDataFromExternalFormat(data, bindings, column_types) {
	this._data = {};

	for (var dataset in bindings) {
		var kd = this._parsed_bindings[dataset]; // kd is short for “key data”
		var bindings_object = splitBindings(dataset, bindings[dataset], kd);
		var reshaped_data = flourishify(data[dataset] || [], bindings_object.column_bindings, bindings_object.columns_bindings);

		var number_of_columns = {};
		var optional_keys_used = {};
		for (var i = 0; i < reshaped_data.length; i++) {
			try {
				fixRow(reshaped_data[i], kd, optional_keys_used, number_of_columns, dataset);
			}
			catch (e) {
				throw new Error("Flourish: in dataset “" + dataset + "”, " + e.message);
			}
		}

		if (this.typed_template) {
			const { metadata, interpretations } = this._getColumnTypesForDataset(reshaped_data, bindings_object, column_types[dataset] || {});
			const parsed_data = this._parseTypedDataForDataset(reshaped_data, interpretations);
			parsed_data.metadata = metadata; // append column types to the parsed data object
			reshaped_data = parsed_data;
		}

		this._data[dataset] = reshaped_data;
	}

	// Fill in missing datasets and column names
	for (var dataset in this._data_bindings) {
		var d = getOrCreateDataset(this._data, dataset);
		var parsed_bindings = this._parsed_bindings[dataset];
		var data_bindings = this._data_bindings[dataset];
		addMissingColumnNames(d, parsed_bindings, data_bindings);
	}
};

Fleet.prototype._prepareDataFlourishShape = function Fleet__prepareDataFlourishShape(data, column_names) {
	var data_bindings = this._data_bindings;

	for (var dataset in data) {
		if (!(dataset in data_bindings)) {
			throw new Error("Flourish: the dataset “" + dataset + "” is not supported by this template");
		}
	}

	this._data = {};
	for (var dataset in data_bindings) {
		var kd = this._parsed_bindings[dataset]; // kd is short for “key data”

		if (kd.has_mandatory_key && !(dataset in data)) {
			throw new Error("Flourish: the dataset “" + dataset + "” must be specified");
		}

		var number_of_columns = {};
		var optional_keys_used = {};
		this._data[dataset] = [];
		for (var i = 0; i < data[dataset].length; i++) {
			var d = shallowCopy(data[dataset][i]);
			this._data[dataset].push(d);
			try {
				fixRow(d, kd, optional_keys_used, number_of_columns);
			}
			catch (e) {
				throw new Error("Flourish: in dataset “" + dataset + "”, " + e.message);
			}
		}

		this._data[dataset].column_names = this._getColumnNames(kd, column_names, optional_keys_used, number_of_columns);
	}
};

Fleet.prototype._init = function Fleet__init(opts, callback) {
	var that = this;
	that._send("setFixedHeight", null, function() {
		that._draw(opts, function() {
			if (callback) { callback(that); }

			for (var i = 0; i < that._queued_methods.length; i++) {
				var m = that._queued_methods[i];
				m[0].apply(that, m.slice(1));
			}
			that._queued_methods = null;
		});
	});
};

Fleet.prototype._queue = function Fleet__queue() {
	// Convert the pseudo-array arguments to a real array args.
	var args = [];
	for (var i = 0; i < arguments.length; i++) {
		args.push(arguments[i]);
	}

	// If initialisation is complete and the queued methods
	// have already been run, then run this method immediately
	// rather than queueing it.
	if (!this._queued_methods) {
		args[0].apply(this, args.slice(1));
		return;
	}

	// Otherwise add it to the queue
	this._queued_methods.push(args);
};

function wrapInQueue(f) {
	return function() {
		var args = [f];
		for (var i = 0; i < arguments.length; i++) {
			args.push(arguments[i]);
		}
		this._queue.apply(this, args);
	};
}

Fleet.prototype._send = function Fleet__send(method, argument, callback) {
	var channel = new MessageChannel();
	channel.port1.onmessage = callback;

	this.iframe.contentWindow.postMessage({
		sender: "Flourish",
		method: method,
		argument: argument,
	}, "*", [channel.port2]);
};

Fleet.prototype.snapshot = wrapInQueue(function Fleet_snapshot(snapshot_opts, callback) {
	const scale = +(snapshot_opts.scale || 1);
	if (isNaN(scale)) {
		return callback(new Error(`Malformed image scale “${snapshot_opts.scale}”`));
	}
	if (typeof snapshot_opts.download !== "boolean") {
		return callback(new Error(`The “download” option must be a boolean, not “${snapshot_opts.download}}”`));
	}
	const download = !!snapshot_opts.download;
	let format = (snapshot_opts.format || "png");
	if (!["png", "jpeg", "svg"].includes(format)) {
		return callback(new Error(`Unknown image format “${snapshot_opts.format}” - must be one of “png”, “jpeg” or “svg”`));
	}
	const filename = snapshot_opts.filename || "Flourish API image";
	if (typeof filename !== "string") {
		return callback(new Error(`Filename must be a string (not “${filename}”)`));
	}
	const width = this.iframe.clientWidth;
	const height = this.iframe.clientHeight;
	const timeout_ms = +(snapshot_opts.timeout_ms || 0);
	if (isNaN(timeout_ms)) {
		return callback(new Error(`Malformed timeout “${snapshot_opts.timeout_ms}”`));
	}
	const wait_for_animation_ms = +(snapshot_opts.wait_for_animation_ms || 0);
	if (isNaN(wait_for_animation_ms)) {
		return callback(new Error(`Malformed wait_for_animation_ms “${snapshot_opts.wait_for_animation_ms}”`));
	}
	const quiet = !!snapshot_opts.quiet;
	const transparent_background = !!snapshot_opts.transparent_background;

	return this._send("snapshot", {
		download,
		filename,
		format,
		scale,
		width,
		height,
		timeout_ms,
		wait_for_animation_ms,
		quiet,
		transparent_background,
	}, (event) => {
		if (event.data.result.status === "error") {
			return callback(event.data.result.error);
		}
		return callback(null, event.data.result);
	});
});

Fleet.prototype._draw = function Fleet_draw(opts, callback) {
	return this._send("sync", {
		draw: true,
		state: this._mergeState(opts.state),
		data: opts.typed_template ? opts.data : stringify(opts.data),
	}, callback);
};

Fleet.prototype._update = function Fleet__update(opts, callback) {
	var argument = {
		update: true,
		state: this._mergeState(opts.state),
	};
	if (opts.data) {
		argument.data = opts.typed_template ? opts.data : stringify(opts.data);
	}
	return this._send("sync", argument, callback);
};

Fleet.prototype._validateOpts = function Fleet__validateOpts(opts, update) {
	if (update) {
		for (var i = 0; i < IMMUTABLE_PROPERTIES.length; i++) {
			var k = IMMUTABLE_PROPERTIES[i];
			if (k in opts && opts[k] != this.original_properties[k]) {
				throw new Error("Flourish: changing the '" + k + "' is not yet supported");
			}
		}
	}

	if (opts.bindings && opts.column_names) {
		throw new Error(
			"Flourish: you must supply exactly one of opts.bindings and opts.column_names - " +
			"these correspond to different ways that your data might be shaped",
		);
	}

	if (opts.metadata && (typeof opts.metadata !== "object" || Array.isArray(opts.metadata) || opts.metadata === null)) {
		throw new Error("Flourish: opts.metadata must be an object");
	}
};

Fleet.prototype.getState = wrapInQueue(function Fleet_getState(callback) {
	return this._send("getState", null, function(obj) {
		if (!("data" in obj) || !("result" in obj.data)) {
			return callback(new Error("Template state not found"));
		}
		return callback(null, obj.data.result);
	});
});

Fleet.prototype.update = wrapInQueue(function Fleet_update(opts, callback) {
	this._validateOpts(opts, true);
	const { template, version } = this.original_properties;
	opts.typed_template = template_lookup[template][version]; // flag if the template being updated is typed
	// FIXME (?): one might conceivably want to change the bindings or
	// column names on update, in which case _prepareData should be
	// re-run on the data which was last passed in. We're not sure
	// that we want to support this, however - it'd mean keeping an
	// extra copy of the passed in data in memory.
	if ("data" in opts) {
		this._prepareData(opts);
		return this._update({ state: opts.state, data: this._data, typed_template: opts.typed_template }, callback);
	}
	return this._update({ state: opts.state }, callback);
});

var index = {
	VERSION: VERSION,
	Live: Fleet,
};

// Export to global scope for htmlwidgets
window.Flourish = index;
window.Fleet = Fleet;

return index;

})();
