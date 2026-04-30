package com.google.gdata.client;

import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ICategory;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.common.base.CharEscapers;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.mortbay.jetty.servlet.ServletHandler;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class Query {
    public static final int UNDEFINED = -1;
    private String author;
    private URL feedUrl;
    private String fields;
    private DateTime publishedMax;
    private DateTime publishedMin;
    private String queryString;
    private DateTime updatedMax;
    private DateTime updatedMin;
    private List<CategoryFilter> categoryFilters = new LinkedList();
    private int startIndex = -1;
    private int maxResults = -1;
    private ResultFormat resultFormat = ResultFormat.DEFAULT;
    private boolean strict = false;
    private List<CustomParameter> customParameters = new ArrayList();

    public enum ResultFormat {
        DEFAULT(ServletHandler.__DEFAULT_SERVLET),
        ATOM("atom"),
        RSS("rss"),
        JSON("json"),
        JSONC("jsonc"),
        ATOM_IN_SCRIPT("atom-in-script"),
        RSS_IN_SCRIPT("rss-in-script"),
        JSON_IN_SCRIPT("json-in-script"),
        JSONC_IN_SCRIPT("jsonc-in-script"),
        JSON_XD("json-xd"),
        ATOM_SERVICE("atom-service");

        private String paramValue;

        ResultFormat(String str) {
            this.paramValue = str;
        }

        public String paramValue() {
            return this.paramValue;
        }
    }

    public Query(URL url) {
        this.feedUrl = url;
    }

    public URL getFeedUrl() {
        return this.feedUrl;
    }

    public void setFields(String str) {
        this.fields = str;
    }

    public String getFields() {
        return this.fields;
    }

    public void setFullTextQuery(String str) {
        this.queryString = str;
    }

    public String getFullTextQuery() {
        return this.queryString;
    }

    public class CategoryFilter {
        private final List<ICategory> categories;
        private final List<ICategory> excludeCategories;

        public List<ICategory> getCategories() {
            return this.categories;
        }

        public List<ICategory> getExcludeCategories() {
            return this.excludeCategories;
        }

        public CategoryFilter() {
            this.categories = new LinkedList();
            this.excludeCategories = new LinkedList();
        }

        public CategoryFilter(List<ICategory> list, List<ICategory> list2) {
            if (list != null) {
                this.categories = list;
            } else {
                this.categories = new LinkedList();
            }
            if (list2 != null) {
                this.excludeCategories = list2;
            } else {
                this.excludeCategories = new LinkedList();
            }
        }

        public CategoryFilter(ICategory iCategory) {
            this();
            this.categories.add(iCategory);
        }

        public void addCategory(ICategory iCategory) {
            this.categories.add(iCategory);
        }

        public void addExcludeCategory(ICategory iCategory) {
            this.excludeCategories.add(iCategory);
        }

        private String getQueryString(ICategory iCategory) {
            StringBuilder sb = new StringBuilder();
            String scheme = iCategory.getScheme();
            if (scheme != null) {
                sb.append("{");
                sb.append(scheme);
                sb.append("}");
            }
            sb.append(iCategory.getTerm());
            return sb.toString();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (ICategory iCategory : this.categories) {
                if (z) {
                    z = false;
                } else {
                    sb.append(BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR);
                }
                sb.append(getQueryString(iCategory));
            }
            for (ICategory iCategory2 : this.excludeCategories) {
                if (z) {
                    z = false;
                } else {
                    sb.append(BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR);
                }
                sb.append("-");
                sb.append(getQueryString(iCategory2));
            }
            return sb.toString();
        }
    }

    public void addCategoryFilter(CategoryFilter categoryFilter) {
        this.categoryFilters.add(categoryFilter);
    }

    public List<CategoryFilter> getCategoryFilters() {
        return Collections.unmodifiableList(this.categoryFilters);
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setUpdatedMin(DateTime dateTime) {
        this.updatedMin = dateTime;
    }

    public DateTime getUpdatedMin() {
        return this.updatedMin;
    }

    public void setUpdatedMax(DateTime dateTime) {
        this.updatedMax = dateTime;
    }

    public DateTime getUpdatedMax() {
        return this.updatedMax;
    }

    public void setPublishedMin(DateTime dateTime) {
        this.publishedMin = dateTime;
    }

    public DateTime getPublishedMin() {
        return this.publishedMin;
    }

    public void setPublishedMax(DateTime dateTime) {
        this.publishedMax = dateTime;
    }

    public DateTime getPublishedMax() {
        return this.publishedMax;
    }

    public void setStartIndex(int i) {
        if (i != -1 && i < 1) {
            throw new IllegalArgumentException("Start index must be positive");
        }
        this.startIndex = i;
    }

    public int getStartIndex() {
        return this.startIndex;
    }

    public void setMaxResults(int i) {
        if (i != -1 && i < 0) {
            throw new IllegalArgumentException("Max results must be zero or larger");
        }
        this.maxResults = i;
    }

    public int getMaxResults() {
        return this.maxResults;
    }

    public void setResultFormat(ResultFormat resultFormat) {
        this.resultFormat = resultFormat;
    }

    public ResultFormat getResultFormat() {
        return this.resultFormat;
    }

    public void setStrict(boolean z) {
        this.strict = z;
    }

    public boolean isStrict() {
        return this.strict;
    }

    public class CustomParameter {
        private String name;
        private String value;

        public CustomParameter(String str, String str2) {
            this.name = str;
            this.value = str2;
        }

        public String getName() {
            return this.name;
        }

        public String getValue() {
            return this.value;
        }
    }

    public void addCustomParameter(CustomParameter customParameter) {
        if (customParameter == null) {
            throw new NullPointerException("Null custom parameter");
        }
        this.customParameters.add(customParameter);
    }

    public List<CustomParameter> getCustomParameters() {
        return this.customParameters;
    }

    public List<CustomParameter> getCustomParameters(String str) {
        ArrayList arrayList = new ArrayList();
        for (CustomParameter customParameter : this.customParameters) {
            if (customParameter.name.equals(str)) {
                arrayList.add(customParameter);
            }
        }
        return arrayList;
    }

    protected void appendQueryParameter(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        sb.append(sb.length() != 0 ? '&' : '?');
        sb.append(str);
        sb.append(Engagement.Comparison.EQ);
        sb.append(str2);
    }

    public boolean isValidState() {
        return this.resultFormat != ResultFormat.JSON_XD;
    }

    public URI getQueryUri() {
        if (!isValidState()) {
            throw new IllegalStateException("Unsupported Query");
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (this.categoryFilters.size() != 0) {
                sb.append("-");
                for (CategoryFilter categoryFilter : this.categoryFilters) {
                    sb.append(URIUtil.SLASH);
                    sb.append(CharEscapers.uriEscaper().escape(categoryFilter.toString()));
                }
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.queryString != null) {
                appendQueryParameter(sb2, "q", CharEscapers.uriEscaper().escape(this.queryString));
            }
            if (this.author != null) {
                appendQueryParameter(sb2, GDataProtocol.Query.AUTHOR, CharEscapers.uriEscaper().escape(this.author));
            }
            if (this.resultFormat != ResultFormat.DEFAULT) {
                appendQueryParameter(sb2, GDataProtocol.Parameter.ALT, this.resultFormat.paramValue());
            }
            if (this.updatedMin != null) {
                appendQueryParameter(sb2, GDataProtocol.Query.UPDATED_MIN, CharEscapers.uriEscaper().escape(this.updatedMin.toString()));
            }
            if (this.updatedMax != null) {
                appendQueryParameter(sb2, GDataProtocol.Query.UPDATED_MAX, CharEscapers.uriEscaper().escape(this.updatedMax.toString()));
            }
            if (this.publishedMin != null) {
                appendQueryParameter(sb2, GDataProtocol.Query.PUBLISHED_MIN, CharEscapers.uriEscaper().escape(this.publishedMin.toString()));
            }
            if (this.publishedMax != null) {
                appendQueryParameter(sb2, GDataProtocol.Query.PUBLISHED_MAX, CharEscapers.uriEscaper().escape(this.publishedMax.toString()));
            }
            if (this.startIndex != -1) {
                appendQueryParameter(sb2, GDataProtocol.Query.START_INDEX, Integer.toString(this.startIndex));
            }
            if (this.maxResults != -1) {
                appendQueryParameter(sb2, GDataProtocol.Query.MAX_RESULTS, Integer.toString(this.maxResults));
            }
            if (this.fields != null) {
                appendQueryParameter(sb2, "fields", CharEscapers.uriEscaper().escape(this.fields));
            }
            if (this.strict) {
                appendQueryParameter(sb2, GDataProtocol.Parameter.STRICT, "true");
            }
            for (CustomParameter customParameter : this.customParameters) {
                appendQueryParameter(sb2, CharEscapers.uriEscaper().escape(customParameter.name), CharEscapers.uriEscaper().escape(customParameter.value));
            }
            return new URI(sb.toString() + sb2.toString());
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException("Unable to encode query URI", e2);
        } catch (URISyntaxException e3) {
            throw new IllegalStateException("Unable to construct query URI", e3);
        }
    }

    public URL getUrl() {
        try {
            String string = getQueryUri().toString();
            if (string.length() == 0) {
                return this.feedUrl;
            }
            String string2 = this.feedUrl.toString();
            StringBuilder sb = new StringBuilder(string2);
            if (!string2.endsWith(URIUtil.SLASH) && !string.startsWith("?")) {
                sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            }
            sb.append(string);
            return new URL(sb.toString());
        } catch (MalformedURLException e2) {
            throw new IllegalStateException("Unable to create query URL", e2);
        }
    }

    public final void setStringCustomParameter(String str, String str2) {
        List<CustomParameter> customParameters = getCustomParameters();
        Iterator<CustomParameter> it = getCustomParameters(str).iterator();
        while (it.hasNext()) {
            customParameters.remove(it.next());
        }
        if (str2 != null) {
            customParameters.add(new CustomParameter(str, str2));
        }
    }

    public final String getStringCustomParameter(String str) {
        List<CustomParameter> customParameters = getCustomParameters(str);
        if (customParameters.size() == 0) {
            return null;
        }
        return customParameters.get(0).getValue();
    }

    public final void setIntegerCustomParameter(String str, Integer num) {
        if (num == null) {
            setStringCustomParameter(str, null);
        } else {
            setStringCustomParameter(str, num.toString());
        }
    }

    public final Integer getIntegerCustomParameter(String str) {
        String stringCustomParameter = getStringCustomParameter(str);
        if (stringCustomParameter == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(stringCustomParameter));
        } catch (NumberFormatException e2) {
            return null;
        }
    }
}
