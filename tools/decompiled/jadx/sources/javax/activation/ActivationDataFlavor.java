package javax.activation;

import java.awt.datatransfer.DataFlavor;

/* JADX INFO: loaded from: classes3.dex */
public class ActivationDataFlavor extends DataFlavor {
    private String humanPresentableName;
    private MimeType mimeObject;
    private String mimeType;
    private Class representationClass;

    public ActivationDataFlavor(Class cls, String str, String str2) {
        super(str, str2);
        this.mimeType = null;
        this.mimeObject = null;
        this.humanPresentableName = null;
        this.representationClass = null;
        this.mimeType = str;
        this.humanPresentableName = str2;
        this.representationClass = cls;
    }

    public ActivationDataFlavor(Class cls, String str) {
        super(cls, str);
        this.mimeType = null;
        this.mimeObject = null;
        this.humanPresentableName = null;
        this.representationClass = null;
        this.mimeType = super.getMimeType();
        this.representationClass = cls;
        this.humanPresentableName = str;
    }

    public ActivationDataFlavor(String str, String str2) {
        super(str, str2);
        this.mimeType = null;
        this.mimeObject = null;
        this.humanPresentableName = null;
        this.representationClass = null;
        this.mimeType = str;
        try {
            this.representationClass = Class.forName("java.io.InputStream");
        } catch (ClassNotFoundException e2) {
        }
        this.humanPresentableName = str2;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Class getRepresentationClass() {
        return this.representationClass;
    }

    public String getHumanPresentableName() {
        return this.humanPresentableName;
    }

    public void setHumanPresentableName(String str) {
        this.humanPresentableName = str;
    }

    public boolean equals(DataFlavor dataFlavor) {
        return isMimeTypeEqual(dataFlavor) && dataFlavor.getRepresentationClass() == this.representationClass;
    }

    public boolean isMimeTypeEqual(String str) {
        MimeType mimeType;
        try {
            if (this.mimeObject == null) {
                this.mimeObject = new MimeType(this.mimeType);
            }
            mimeType = new MimeType(str);
        } catch (MimeTypeParseException e2) {
            mimeType = null;
        }
        return this.mimeObject.match(mimeType);
    }

    protected String normalizeMimeTypeParameter(String str, String str2) {
        return str2;
    }

    protected String normalizeMimeType(String str) {
        return str;
    }
}
