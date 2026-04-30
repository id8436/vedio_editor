package com.dropbox.core.v2.teamlog;

import com.d.a.a.g;
import com.d.a.a.j;
import com.d.a.a.k;
import com.d.a.a.o;
import com.dropbox.core.stone.UnionSerializer;
import com.dropbox.core.v2.teamlog.FileLogInfo;
import com.dropbox.core.v2.teamlog.FolderLogInfo;
import com.dropbox.core.v2.teamlog.PaperDocumentLogInfo;
import com.dropbox.core.v2.teamlog.PaperFolderLogInfo;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class AssetLogInfo {
    public static final AssetLogInfo OTHER = new AssetLogInfo().withTag(Tag.OTHER);
    private Tag _tag;
    private FileLogInfo fileValue;
    private FolderLogInfo folderValue;
    private PaperDocumentLogInfo paperDocumentValue;
    private PaperFolderLogInfo paperFolderValue;

    public enum Tag {
        FILE,
        FOLDER,
        PAPER_DOCUMENT,
        PAPER_FOLDER,
        OTHER
    }

    private AssetLogInfo() {
    }

    private AssetLogInfo withTag(Tag tag) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo._tag = tag;
        return assetLogInfo;
    }

    private AssetLogInfo withTagAndFile(Tag tag, FileLogInfo fileLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo._tag = tag;
        assetLogInfo.fileValue = fileLogInfo;
        return assetLogInfo;
    }

    private AssetLogInfo withTagAndFolder(Tag tag, FolderLogInfo folderLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo._tag = tag;
        assetLogInfo.folderValue = folderLogInfo;
        return assetLogInfo;
    }

    private AssetLogInfo withTagAndPaperDocument(Tag tag, PaperDocumentLogInfo paperDocumentLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo._tag = tag;
        assetLogInfo.paperDocumentValue = paperDocumentLogInfo;
        return assetLogInfo;
    }

    private AssetLogInfo withTagAndPaperFolder(Tag tag, PaperFolderLogInfo paperFolderLogInfo) {
        AssetLogInfo assetLogInfo = new AssetLogInfo();
        assetLogInfo._tag = tag;
        assetLogInfo.paperFolderValue = paperFolderLogInfo;
        return assetLogInfo;
    }

    public Tag tag() {
        return this._tag;
    }

    public boolean isFile() {
        return this._tag == Tag.FILE;
    }

    public static AssetLogInfo file(FileLogInfo fileLogInfo) {
        if (fileLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AssetLogInfo().withTagAndFile(Tag.FILE, fileLogInfo);
    }

    public FileLogInfo getFileValue() {
        if (this._tag != Tag.FILE) {
            throw new IllegalStateException("Invalid tag: required Tag.FILE, but was Tag." + this._tag.name());
        }
        return this.fileValue;
    }

    public boolean isFolder() {
        return this._tag == Tag.FOLDER;
    }

    public static AssetLogInfo folder(FolderLogInfo folderLogInfo) {
        if (folderLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AssetLogInfo().withTagAndFolder(Tag.FOLDER, folderLogInfo);
    }

    public FolderLogInfo getFolderValue() {
        if (this._tag != Tag.FOLDER) {
            throw new IllegalStateException("Invalid tag: required Tag.FOLDER, but was Tag." + this._tag.name());
        }
        return this.folderValue;
    }

    public boolean isPaperDocument() {
        return this._tag == Tag.PAPER_DOCUMENT;
    }

    public static AssetLogInfo paperDocument(PaperDocumentLogInfo paperDocumentLogInfo) {
        if (paperDocumentLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AssetLogInfo().withTagAndPaperDocument(Tag.PAPER_DOCUMENT, paperDocumentLogInfo);
    }

    public PaperDocumentLogInfo getPaperDocumentValue() {
        if (this._tag != Tag.PAPER_DOCUMENT) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_DOCUMENT, but was Tag." + this._tag.name());
        }
        return this.paperDocumentValue;
    }

    public boolean isPaperFolder() {
        return this._tag == Tag.PAPER_FOLDER;
    }

    public static AssetLogInfo paperFolder(PaperFolderLogInfo paperFolderLogInfo) {
        if (paperFolderLogInfo == null) {
            throw new IllegalArgumentException("Value is null");
        }
        return new AssetLogInfo().withTagAndPaperFolder(Tag.PAPER_FOLDER, paperFolderLogInfo);
    }

    public PaperFolderLogInfo getPaperFolderValue() {
        if (this._tag != Tag.PAPER_FOLDER) {
            throw new IllegalStateException("Invalid tag: required Tag.PAPER_FOLDER, but was Tag." + this._tag.name());
        }
        return this.paperFolderValue;
    }

    public boolean isOther() {
        return this._tag == Tag.OTHER;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this._tag, this.fileValue, this.folderValue, this.paperDocumentValue, this.paperFolderValue});
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AssetLogInfo)) {
            return false;
        }
        AssetLogInfo assetLogInfo = (AssetLogInfo) obj;
        if (this._tag != assetLogInfo._tag) {
            return false;
        }
        switch (this._tag) {
            case FILE:
                return this.fileValue == assetLogInfo.fileValue || this.fileValue.equals(assetLogInfo.fileValue);
            case FOLDER:
                return this.folderValue == assetLogInfo.folderValue || this.folderValue.equals(assetLogInfo.folderValue);
            case PAPER_DOCUMENT:
                return this.paperDocumentValue == assetLogInfo.paperDocumentValue || this.paperDocumentValue.equals(assetLogInfo.paperDocumentValue);
            case PAPER_FOLDER:
                return this.paperFolderValue == assetLogInfo.paperFolderValue || this.paperFolderValue.equals(assetLogInfo.paperFolderValue);
            case OTHER:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        return Serializer.INSTANCE.serialize(this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize(this, true);
    }

    class Serializer extends UnionSerializer<AssetLogInfo> {
        public static final Serializer INSTANCE = new Serializer();

        Serializer() {
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AssetLogInfo assetLogInfo, g gVar) throws IOException {
            switch (assetLogInfo.tag()) {
                case FILE:
                    gVar.e();
                    writeTag("file", gVar);
                    FileLogInfo.Serializer.INSTANCE.serialize(assetLogInfo.fileValue, gVar, true);
                    gVar.f();
                    break;
                case FOLDER:
                    gVar.e();
                    writeTag("folder", gVar);
                    FolderLogInfo.Serializer.INSTANCE.serialize(assetLogInfo.folderValue, gVar, true);
                    gVar.f();
                    break;
                case PAPER_DOCUMENT:
                    gVar.e();
                    writeTag("paper_document", gVar);
                    PaperDocumentLogInfo.Serializer.INSTANCE.serialize(assetLogInfo.paperDocumentValue, gVar, true);
                    gVar.f();
                    break;
                case PAPER_FOLDER:
                    gVar.e();
                    writeTag("paper_folder", gVar);
                    PaperFolderLogInfo.Serializer.INSTANCE.serialize(assetLogInfo.paperFolderValue, gVar, true);
                    gVar.f();
                    break;
                default:
                    gVar.b("other");
                    break;
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public AssetLogInfo deserialize(k kVar) throws IOException {
            boolean z;
            String tag;
            AssetLogInfo assetLogInfoPaperFolder;
            if (kVar.c() == o.VALUE_STRING) {
                tag = getStringValue(kVar);
                kVar.a();
                z = true;
            } else {
                z = false;
                expectStartObject(kVar);
                tag = readTag(kVar);
            }
            if (tag == null) {
                throw new j(kVar, "Required field missing: .tag");
            }
            if ("file".equals(tag)) {
                assetLogInfoPaperFolder = AssetLogInfo.file(FileLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("folder".equals(tag)) {
                assetLogInfoPaperFolder = AssetLogInfo.folder(FolderLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_document".equals(tag)) {
                assetLogInfoPaperFolder = AssetLogInfo.paperDocument(PaperDocumentLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else if ("paper_folder".equals(tag)) {
                assetLogInfoPaperFolder = AssetLogInfo.paperFolder(PaperFolderLogInfo.Serializer.INSTANCE.deserialize(kVar, true));
            } else {
                assetLogInfoPaperFolder = AssetLogInfo.OTHER;
            }
            if (!z) {
                skipFields(kVar);
                expectEndObject(kVar);
            }
            return assetLogInfoPaperFolder;
        }
    }
}
