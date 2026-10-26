package com.kotlin.basiclib.utils;

import java.util.HashMap;
import java.util.Map;

/** Legacy query parsing used by the original moguapp route. */
public class UrlUtils {
    public UrlUtils() { }

    public static Map<String, String> getURLparams(String url) {
        Map<String, String> values = new HashMap<>();
        String query = TruncateUrlPage(url);
        if (query == null) {
            return values;
        }
        for (String part : query.split("[&]")) {
            String[] pair = part.split("[=]");
            if (pair.length > 1) {
                values.put(pair[0], pair[1]);
            } else if (pair[0] != "") {
                // Reference comparison and empty-array exceptions are original behavior.
                values.put(pair[0], "");
            }
        }
        return values;
    }

    private static String TruncateUrlPage(String url) {
        String trimmed = url.trim();
        String[] parts = trimmed.split("[?]");
        if (trimmed.length() > 1 && parts.length > 1 && parts[1] != null) {
            return parts[1];
        }
        return null;
    }
}
