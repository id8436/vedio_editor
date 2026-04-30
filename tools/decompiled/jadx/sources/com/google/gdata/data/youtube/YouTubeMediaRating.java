package com.google.gdata.data.youtube;

import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.media.mediarss.MediaRating;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.util.ParseException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(isRepeatable = true, localName = "rating", nsAlias = "media", nsUri = MediaRssNamespace.URI)
public class YouTubeMediaRating extends MediaRating {
    private static final String ALL_COUNTRIES = "all";
    private CountryState countryState = CountryState.UNSET;
    private Set<String> countries = Collections.emptySet();

    /* JADX INFO: loaded from: classes3.dex */
    enum CountryState {
        UNSET,
        ALL,
        COUNTRIES
    }

    public static ExtensionDescription getDefaultDescription() {
        return ExtensionDescription.getDefaultDescription(YouTubeMediaRating.class);
    }

    @Override // com.google.gdata.data.media.mediarss.MediaRating, com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        String strJoin;
        super.putAttributes(attributeGenerator);
        switch (this.countryState) {
            case ALL:
                strJoin = "all";
                break;
            case COUNTRIES:
                strJoin = join(this.countries);
                break;
            case UNSET:
                strJoin = null;
                break;
            default:
                throw new IllegalStateException("Unknown state " + this.countryState);
        }
        if (strJoin != null) {
            attributeGenerator.put("yt:country", strJoin);
        }
    }

    @Override // com.google.gdata.data.media.mediarss.MediaRating, com.google.gdata.data.media.mediarss.AbstractElementWithContent, com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        String strConsume = attributeHelper.consume(BehanceSDKUrlUtil.PARAM_KEY_COUNTRY, false);
        if (strConsume == null) {
            clearCountry();
        } else if ("all".equals(strConsume)) {
            setAllCountries();
        } else {
            setCountries(split(strConsume));
        }
    }

    public boolean hasCountries() {
        return this.countryState == CountryState.COUNTRIES;
    }

    public void setAllCountries() {
        this.countryState = CountryState.ALL;
        this.countries = Collections.emptySet();
    }

    public void clearCountry() {
        this.countryState = CountryState.UNSET;
        this.countries = Collections.emptySet();
    }

    public void setCountries(Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            clearCountry();
            return;
        }
        this.countryState = CountryState.COUNTRIES;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        this.countries = Collections.unmodifiableSet(linkedHashSet);
    }

    public Set<String> getCountries() {
        return this.countries;
    }

    private static String join(Collection<String> collection) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : collection) {
            if (z) {
                z = false;
            } else {
                sb.append(' ');
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private static Set<String> split(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, " ");
        if (stringTokenizer.countTokens() == 0) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (stringTokenizer.hasMoreTokens()) {
            linkedHashSet.add(stringTokenizer.nextToken());
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }
}
