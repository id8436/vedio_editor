package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public class LocaleUtils {
    private static final ConcurrentMap<String, List<Locale>> cLanguagesByCountry = new ConcurrentHashMap();
    private static final ConcurrentMap<String, List<Locale>> cCountriesByLanguage = new ConcurrentHashMap();

    public static Locale toLocale(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length != 2 && length != 5 && length < 7) {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        char cCharAt = str.charAt(0);
        char cCharAt2 = str.charAt(1);
        if (cCharAt < 'a' || cCharAt > 'z' || cCharAt2 < 'a' || cCharAt2 > 'z') {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (length == 2) {
            return new Locale(str, "");
        }
        if (str.charAt(2) != '_') {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        char cCharAt3 = str.charAt(3);
        if (cCharAt3 == '_') {
            return new Locale(str.substring(0, 2), "", str.substring(4));
        }
        char cCharAt4 = str.charAt(4);
        if (cCharAt3 < 'A' || cCharAt3 > 'Z' || cCharAt4 < 'A' || cCharAt4 > 'Z') {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        if (length == 5) {
            return new Locale(str.substring(0, 2), str.substring(3, 5));
        }
        if (str.charAt(5) != '_') {
            throw new IllegalArgumentException("Invalid locale format: " + str);
        }
        return new Locale(str.substring(0, 2), str.substring(3, 5), str.substring(6));
    }

    public static List<Locale> localeLookupList(Locale locale) {
        return localeLookupList(locale, locale);
    }

    public static List<Locale> localeLookupList(Locale locale, Locale locale2) {
        ArrayList arrayList = new ArrayList(4);
        if (locale != null) {
            arrayList.add(locale);
            if (locale.getVariant().length() > 0) {
                arrayList.add(new Locale(locale.getLanguage(), locale.getCountry()));
            }
            if (locale.getCountry().length() > 0) {
                arrayList.add(new Locale(locale.getLanguage(), ""));
            }
            if (!arrayList.contains(locale2)) {
                arrayList.add(locale2);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static List<Locale> availableLocaleList() {
        return SyncAvoid.AVAILABLE_LOCALE_LIST;
    }

    public static Set<Locale> availableLocaleSet() {
        return SyncAvoid.AVAILABLE_LOCALE_SET;
    }

    public static boolean isAvailableLocale(Locale locale) {
        return availableLocaleList().contains(locale);
    }

    public static List<Locale> languagesByCountry(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<Locale> list = cLanguagesByCountry.get(str);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            List<Locale> listAvailableLocaleList = availableLocaleList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < listAvailableLocaleList.size()) {
                    Locale locale = listAvailableLocaleList.get(i2);
                    if (str.equals(locale.getCountry()) && locale.getVariant().length() == 0) {
                        arrayList.add(locale);
                    }
                    i = i2 + 1;
                } else {
                    cLanguagesByCountry.putIfAbsent(str, Collections.unmodifiableList(arrayList));
                    return cLanguagesByCountry.get(str);
                }
            }
        } else {
            return list;
        }
    }

    public static List<Locale> countriesByLanguage(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        List<Locale> list = cCountriesByLanguage.get(str);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            List<Locale> listAvailableLocaleList = availableLocaleList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < listAvailableLocaleList.size()) {
                    Locale locale = listAvailableLocaleList.get(i2);
                    if (str.equals(locale.getLanguage()) && locale.getCountry().length() != 0 && locale.getVariant().length() == 0) {
                        arrayList.add(locale);
                    }
                    i = i2 + 1;
                } else {
                    cCountriesByLanguage.putIfAbsent(str, Collections.unmodifiableList(arrayList));
                    return cCountriesByLanguage.get(str);
                }
            }
        } else {
            return list;
        }
    }

    class SyncAvoid {
        private static List<Locale> AVAILABLE_LOCALE_LIST = Collections.unmodifiableList(new ArrayList(Arrays.asList(Locale.getAvailableLocales())));
        private static Set<Locale> AVAILABLE_LOCALE_SET = Collections.unmodifiableSet(new HashSet(LocaleUtils.availableLocaleList()));

        SyncAvoid() {
        }
    }
}
