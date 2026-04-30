package com.crashlytics.android.answers;

/* JADX INFO: loaded from: classes2.dex */
public class SearchEvent extends PredefinedEvent<SearchEvent> {
    static final String QUERY_ATTRIBUTE = "query";
    static final String TYPE = "search";

    public SearchEvent putQuery(String str) {
        this.predefinedAttributes.put("query", str);
        return this;
    }

    @Override // com.crashlytics.android.answers.PredefinedEvent
    String getPredefinedType() {
        return "search";
    }
}
