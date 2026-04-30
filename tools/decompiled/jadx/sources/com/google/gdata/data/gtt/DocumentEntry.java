package com.google.gdata.data.gtt;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.Deleted;
import com.google.gdata.data.extensions.LastModifiedBy;
import com.google.gdata.data.media.MediaEntry;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class DocumentEntry extends MediaEntry<DocumentEntry> {
    public DocumentEntry() {
    }

    public DocumentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(DocumentEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(DocumentEntry.class, new ExtensionDescription(Deleted.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "deleted", false, false, false));
            extensionProfile.declare(DocumentEntry.class, DocumentSource.class);
            extensionProfile.declare(DocumentEntry.class, GlossariesElement.class);
            new GlossariesElement().declareExtensions(extensionProfile);
            extensionProfile.declare(DocumentEntry.class, LastModifiedBy.class);
            extensionProfile.declare(DocumentEntry.class, NumberOfSourceWords.class);
            extensionProfile.declare(DocumentEntry.class, PercentComplete.class);
            extensionProfile.declare(DocumentEntry.class, SourceLanguage.class);
            extensionProfile.declare(DocumentEntry.class, TargetLanguage.class);
            extensionProfile.declare(DocumentEntry.class, TmsElement.class);
            new TmsElement().declareExtensions(extensionProfile);
        }
    }

    public Deleted getDeleted() {
        return (Deleted) getExtension(Deleted.class);
    }

    public void setDeleted(Deleted deleted) {
        if (deleted == null) {
            removeExtension(Deleted.class);
        } else {
            setExtension(deleted);
        }
    }

    public boolean hasDeleted() {
        return hasExtension(Deleted.class);
    }

    public DocumentSource getDocumentSource() {
        return (DocumentSource) getExtension(DocumentSource.class);
    }

    public void setDocumentSource(DocumentSource documentSource) {
        if (documentSource == null) {
            removeExtension(DocumentSource.class);
        } else {
            setExtension(documentSource);
        }
    }

    public boolean hasDocumentSource() {
        return hasExtension(DocumentSource.class);
    }

    public GlossariesElement getGlossary() {
        return (GlossariesElement) getExtension(GlossariesElement.class);
    }

    public void setGlossary(GlossariesElement glossariesElement) {
        if (glossariesElement == null) {
            removeExtension(GlossariesElement.class);
        } else {
            setExtension(glossariesElement);
        }
    }

    public boolean hasGlossary() {
        return hasExtension(GlossariesElement.class);
    }

    public LastModifiedBy getLastModifiedBy() {
        return (LastModifiedBy) getExtension(LastModifiedBy.class);
    }

    public void setLastModifiedBy(LastModifiedBy lastModifiedBy) {
        if (lastModifiedBy == null) {
            removeExtension(LastModifiedBy.class);
        } else {
            setExtension(lastModifiedBy);
        }
    }

    public boolean hasLastModifiedBy() {
        return hasExtension(LastModifiedBy.class);
    }

    public NumberOfSourceWords getNumberOfSourceWords() {
        return (NumberOfSourceWords) getExtension(NumberOfSourceWords.class);
    }

    public void setNumberOfSourceWords(NumberOfSourceWords numberOfSourceWords) {
        if (numberOfSourceWords == null) {
            removeExtension(NumberOfSourceWords.class);
        } else {
            setExtension(numberOfSourceWords);
        }
    }

    public boolean hasNumberOfSourceWords() {
        return hasExtension(NumberOfSourceWords.class);
    }

    public PercentComplete getPercentComplete() {
        return (PercentComplete) getExtension(PercentComplete.class);
    }

    public void setPercentComplete(PercentComplete percentComplete) {
        if (percentComplete == null) {
            removeExtension(PercentComplete.class);
        } else {
            setExtension(percentComplete);
        }
    }

    public boolean hasPercentComplete() {
        return hasExtension(PercentComplete.class);
    }

    public SourceLanguage getSourceLanguage() {
        return (SourceLanguage) getExtension(SourceLanguage.class);
    }

    public void setSourceLanguage(SourceLanguage sourceLanguage) {
        if (sourceLanguage == null) {
            removeExtension(SourceLanguage.class);
        } else {
            setExtension(sourceLanguage);
        }
    }

    public boolean hasSourceLanguage() {
        return hasExtension(SourceLanguage.class);
    }

    public TargetLanguage getTargetLanguage() {
        return (TargetLanguage) getExtension(TargetLanguage.class);
    }

    public void setTargetLanguage(TargetLanguage targetLanguage) {
        if (targetLanguage == null) {
            removeExtension(TargetLanguage.class);
        } else {
            setExtension(targetLanguage);
        }
    }

    public boolean hasTargetLanguage() {
        return hasExtension(TargetLanguage.class);
    }

    public TmsElement getTranslationMemory() {
        return (TmsElement) getExtension(TmsElement.class);
    }

    public void setTranslationMemory(TmsElement tmsElement) {
        if (tmsElement == null) {
            removeExtension(TmsElement.class);
        } else {
            setExtension(tmsElement);
        }
    }

    public boolean hasTranslationMemory() {
        return hasExtension(TmsElement.class);
    }

    public Link getAccessControlListLink() {
        return getLink("http://schemas.google.com/acl/2007#accessControlList", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{DocumentEntry " + super.toString() + "}";
    }
}
