.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
.super Ljava/lang/Object;
.source "AdobeDCXMetadataPath.java"


# instance fields
.field private _name:Ljava/lang/String;

.field private _schema:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadataPath.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;I)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadataPath.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPPathFactory;->composeStructFieldPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadataPath.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static getAttributionName()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "http://creativecommons.org/ns#"

    const-string/jumbo v1, "getAttributionName"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 268
    return-object v0
.end method

.method public static getAttributionURL()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 260
    const-string/jumbo v0, "http://creativecommons.org/ns#"

    const-string/jumbo v1, "getAttributionURL"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method public static getCreateDate()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "CreateDate"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 202
    return-object v0
.end method

.method public static getCreator()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 252
    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v1, "getCreator"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method public static getCreatorTool()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 194
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "CreatorTool"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method public static getDerivedFrom()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "DerivedFrom"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public static getDocumentId()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "DocumentID"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public static getFormat()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 234
    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v1, "format"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method public static getHistory()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 162
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "History"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public static getIngredients()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "Ingredients"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public static getInstanceId()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 145
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "InstanceID"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public static getLicense()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 272
    const-string/jumbo v0, "http://creativecommons.org/ns#"

    const-string/jumbo v1, "license"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method public static getManageTo()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "ManageTo"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public static getManageUi()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 186
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "ManageUI"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public static getMetadataDate()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 212
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "MetadataDate"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 214
    return-object v0
.end method

.method public static getModifyDate()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "ModifyDate"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method public static getOriginalDocumentId()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "OriginalDocumentID"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public static getPantry()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "Pantry"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 176
    return-object v0
.end method

.method public static getRights()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v1, "getRights"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 248
    return-object v0
.end method

.method public static getRightsMarked()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 220
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "Marked"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public static getSubject()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v1, "getSubject"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public static getUsageTerms()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "UsageTerms"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method static pathFromSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    return-object v0
.end method

.method public lastItem()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)V

    .line 108
    return-object v0
.end method

.method replacePrefix(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->_schema:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public withIndex(I)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;I)V

    .line 85
    return-object v0
.end method

.method public withSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method
