package com.google.gdata.data.youtube;

import com.google.gdata.data.AbstractExtension;
import com.google.gdata.data.AttributeGenerator;
import com.google.gdata.data.AttributeHelper;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.util.ParseException;

/* JADX INFO: loaded from: classes.dex */
@ExtensionDescription.Default(localName = "state", nsAlias = YouTubeNamespace.PREFIX, nsUri = YouTubeNamespace.URI)
public class YtPublicationState extends AbstractExtension {
    private String description;
    private String helpUrl;
    private String reasonCode;
    private State state;

    /* JADX INFO: loaded from: classes3.dex */
    public enum State {
        INCOMPLETE,
        PROCESSING,
        REJECTED,
        FAILED,
        DELETED,
        RESTRICTED
    }

    public YtPublicationState() {
    }

    public YtPublicationState(State state, String str, String str2, String str3) {
        this.state = state;
        this.reasonCode = str;
        this.helpUrl = str2;
        this.description = str3;
    }

    public YtPublicationState(State state) {
        this.state = state;
    }

    public State getState() {
        return this.state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public String getReasonCode() {
        return this.reasonCode;
    }

    public void setReasonCode(String str) {
        this.reasonCode = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public String getHelpUrl() {
        return this.helpUrl;
    }

    public void setHelpUrl(String str) {
        this.helpUrl = str;
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void putAttributes(AttributeGenerator attributeGenerator) {
        super.putAttributes(attributeGenerator);
        attributeGenerator.put("name", this.state, new AttributeHelper.LowerCaseEnumToAttributeValue());
        attributeGenerator.put("reasonCode", this.reasonCode);
        attributeGenerator.put("helpUrl", this.helpUrl);
        attributeGenerator.setContent(this.description);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void consumeAttributes(AttributeHelper attributeHelper) throws ParseException {
        super.consumeAttributes(attributeHelper);
        this.state = (State) attributeHelper.consumeEnum("name", true, State.class, null, new AttributeHelper.LowerCaseEnumToAttributeValue());
        this.reasonCode = attributeHelper.consume("reasonCode", false);
        this.helpUrl = attributeHelper.consume("helpUrl", false);
        this.description = attributeHelper.consumeContent(false);
    }
}
