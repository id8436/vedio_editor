package com.google.gdata.data.analytics;

import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.util.ParseException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "destination", nsAlias = AnalyticsNamespace.GA_ALIAS, nsUri = AnalyticsNamespace.GA)
public class Destination extends ExtensionPoint {
    private static final String CASESENSITIVE = "caseSensitive";
    private static final String EXPRESSION = "expression";
    private static final String MATCHTYPE = "matchType";
    private static final String STEP1REQUIRED = "step1Required";
    static final String XML_NAME = "destination";
    private Boolean caseSensitive = null;
    private String expression = null;
    private String matchType = null;
    private Boolean step1Required = null;

    /* JADX INFO: loaded from: classes3.dex */
    public final class MatchType {
        public static final String EXACT = "exact";
        public static final String HEAD = "head";
        public static final String REGEX = "regex";
    }

    public Destination() {
    }

    public Destination(Boolean bool, String str, String str2, Boolean bool2) {
        setCaseSensitive(bool);
        setExpression(str);
        setMatchType(str2);
        setStep1Required(bool2);
        setImmutable(true);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(Destination.class)) {
            extensionProfile.declare(Destination.class, Step.getDefaultDescription(false, true));
        }
    }

    public Boolean getCaseSensitive() {
        return this.caseSensitive;
    }

    public void setCaseSensitive(Boolean bool) {
        throwExceptionIfImmutable();
        this.caseSensitive = bool;
    }

    public boolean hasCaseSensitive() {
        return getCaseSensitive() != null;
    }

    public String getExpression() {
        return this.expression;
    }

    public void setExpression(String str) {
        throwExceptionIfImmutable();
        this.expression = str;
    }

    public boolean hasExpression() {
        return getExpression() != null;
    }

    public String getMatchType() {
        return this.matchType;
    }

    public void setMatchType(String str) {
        throwExceptionIfImmutable();
        this.matchType = str;
    }

    public boolean hasMatchType() {
        return getMatchType() != null;
    }

    public Boolean getStep1Required() {
        return this.step1Required;
    }

    public void setStep1Required(Boolean bool) {
        throwExceptionIfImmutable();
        this.step1Required = bool;
    }

    public boolean hasStep1Required() {
        return getStep1Required() != null;
    }

    public List<Step> getSteps() {
        return getRepeatingExtension(Step.class);
    }

    public void addStep(Step step) {
        getSteps().add(step);
    }

    public boolean hasSteps() {
        return hasRepeatingExtension(Step.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
        if (this.caseSensitive == null) {
            throwExceptionForMissingAttribute(CASESENSITIVE);
        }
        if (this.expression == null) {
            throwExceptionForMissingAttribute(EXPRESSION);
        }
        if (this.matchType == null) {
            throwExceptionForMissingAttribute(MATCHTYPE);
        }
        if (this.step1Required == null) {
            throwExceptionForMissingAttribute(STEP1REQUIRED);
        }
    }

    public static ExtensionDescription getDefaultDescription(boolean z, boolean z2) {
        ExtensionDescription defaultDescription = ExtensionDescription.getDefaultDescription(Destination.class);
        defaultDescription.setRequired(z);
        defaultDescription.setRepeatable(z2);
        return defaultDescription;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        attributeGenerator.put(CASESENSITIVE, (Object) this.caseSensitive);
        attributeGenerator.put(EXPRESSION, this.expression);
        attributeGenerator.put(MATCHTYPE, this.matchType);
        attributeGenerator.put(STEP1REQUIRED, (Object) this.step1Required);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        this.caseSensitive = Boolean.valueOf(attributeHelper.consumeBoolean(CASESENSITIVE, true));
        this.expression = attributeHelper.consume(EXPRESSION, true);
        this.matchType = attributeHelper.consume(MATCHTYPE, true);
        this.step1Required = Boolean.valueOf(attributeHelper.consumeBoolean(STEP1REQUIRED, true));
    }

    public String toString() {
        return "{Destination caseSensitive=" + this.caseSensitive + " expression=" + this.expression + " matchType=" + this.matchType + " step1Required=" + this.step1Required + "}";
    }
}
