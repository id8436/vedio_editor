.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
.super Ljava/lang/Object;
.source "AdobeDCXMetadata.java"


# static fields
.field private static COMPONENT_PATH:Ljava/lang/String; = null

.field static final XMP_NS_CREATIVE_COMMONS:Ljava/lang/String; = "http://creativecommons.org/ns#"

.field static final XMP_NS_XMP_ResourceEvent:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

.field private static componentAbsolutePath:Ljava/lang/String; = null

.field private static componentPath:Ljava/lang/String; = null

.field private static final compositeMetadataPseudoComponentID:Ljava/lang/String; = "*composite*metadata*"

.field static creatorTool:Ljava/lang/String; = null

.field static historyLast:Ljava/lang/String; = null

.field private static licenseTypes:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final serializationOptions:I = 0x50

.field static softwareAgent:Ljava/lang/String; = null

.field static final x_default:Ljava/lang/String; = "x-default"


# instance fields
.field protected _staticDateFormatter:Ljava/text/SimpleDateFormat;

.field cleanGeneration:J

.field private componentId:Ljava/lang/String;

.field generation:J

.field updatableHistoryId:Ljava/lang/String;

.field private xmpMeta:Lcom/adobe/xmp/XMPMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, "META-INF/metadata.xml"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->COMPONENT_PATH:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->COMPONENT_PATH:Ljava/lang/String;

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentPath:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->COMPONENT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentAbsolutePath:Ljava/lang/String;

    .line 600
    sput-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->creatorTool:Ljava/lang/String;

    .line 606
    sput-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->softwareAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "http://creativecommons.org/ns#"

    const-string/jumbo v1, "cc"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    const-string/jumbo v0, "History"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPPathFactory;->composeArrayItemPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>()V

    .line 261
    invoke-static {p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getFilePath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->initFromFilePathAndMetadataComponent(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 262
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 247
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 10

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>()V

    .line 315
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    .line 318
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->convertToTZLocalDateOrNowIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string/jumbo v0, "modified"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->convertToTZLocalDateOrNowIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 321
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getCreatorTool()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getSoftwareAgent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 326
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getSoftwareAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 329
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "CreatorTool"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getCreatorTool()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "CreateDate"

    invoke-interface {v1, v3, v4, v2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "ModifyDate"

    invoke-interface {v1, v2, v3, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "MetadataDate"

    invoke-interface {v1, v2, v3, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v3, "format"

    invoke-interface {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "OriginalDocumentID"

    invoke-interface {v0, v1, v2, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "History"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v9, 0x100

    invoke-direct {v5, v9}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "created"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "when"

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "softwareAgent"

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "*composite*metadata*"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_2
    return-void

    .line 322
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v6, v1

    goto/16 :goto_1
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>()V

    .line 360
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    .line 361
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 362
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "CreateDate"

    invoke-interface {v0, v1, v2, v6}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "ModifyDate"

    invoke-interface {v0, v1, v2, v6}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "MetadataDate"

    invoke-interface {v0, v1, v2, v6}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "OriginalDocumentID"

    invoke-interface {v0, v1, v2, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "History"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v8, 0x100

    invoke-direct {v5, v8}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 372
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "created"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "when"

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getCreatorTool()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "CreatorTool"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v2, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v3, "CreatorTool"

    invoke-interface {v1, v2, v3, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    const-string/jumbo v0, "*composite*metadata*"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.<init>(AdobeDCXNode)"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;)V
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/xmp/XMPMeta;)V

    .line 398
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 187
    const-string/jumbo v0, "copied"

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>()V

    .line 192
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 193
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->clearUpdatableHistory()V

    .line 196
    invoke-virtual {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->makeDerivedWithActionAndDocId(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)V
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    .line 386
    return-void
.end method

.method constructor <init>(Lcom/adobe/xmp/XMPMeta;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 392
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>()V

    .line 267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->initFromFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCreatorTool()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 622
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->creatorTool:Ljava/lang/String;

    .line 624
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->creatorTool:Ljava/lang/String;

    return-object v0
.end method

.method private static getFilePath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-interface {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadataComponentAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getMetadataComponentInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1

    .prologue
    .line 145
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getMetadataComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadataComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 2

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentAbsolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSoftwareAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->softwareAgent:Ljava/lang/String;

    return-object v0
.end method

.method static handleXMPError(Lcom/adobe/xmp/XMPException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 810
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->UNKNOWN:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    .line 814
    :goto_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;

    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;Ljava/lang/String;)V

    .line 815
    throw v1

    .line 774
    :sswitch_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXML:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 777
    :sswitch_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADPARAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 780
    :sswitch_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADVALUE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 783
    :sswitch_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->INTERNALFAILURE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 786
    :sswitch_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSCHEMA:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 789
    :sswitch_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXPATH:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 792
    :sswitch_6
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADOPTIONS:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 795
    :sswitch_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADINDEX:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 798
    :sswitch_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSERIALIZE:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 801
    :sswitch_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADRDF:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 804
    :sswitch_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADXMP:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 807
    :sswitch_b
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;->BADSTREAM:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataErrorCode;

    goto :goto_0

    .line 772
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x9 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6b -> :sswitch_8
        0xc9 -> :sswitch_0
        0xca -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
    .end sparse-switch
.end method

.method private initFromData(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "null data in initFromData"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "action"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string/jumbo v1, "saved"

    if-ne v0, v1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "softwareAgent"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getCreatorTool()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updatableHistoryId:Ljava/lang/String;

    .line 310
    :cond_1
    return-void
.end method

.method private initFromFilePathAndMetadataComponent(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->initFromFilePath(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentAbsolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "*composite*metadata*"

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    .line 256
    return-void

    .line 255
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static licenseTypeLookup()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    .line 569
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "http://creativecommons.org/licenses/by/4.0/"

    const-string/jumbo v2, "by"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "http://creativecommons.org/licenses/by-sa/4.0/"

    const-string/jumbo v2, "by-sa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nd/4.0/"

    const-string/jumbo v2, "by-nd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nc/4.0/"

    const-string/jumbo v2, "by-nc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nc-sa/4.0/"

    const-string/jumbo v2, "by-nc-sa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "http://creativecommons.org/licenses/by-nc-nd/4.0/"

    const-string/jumbo v2, "by-nc-nd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method public static registerNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 628
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    .line 631
    :try_start_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.registerNamespace"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCreatorTool(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 603
    sput-object p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->creatorTool:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public static setSoftwareAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 610
    sput-object p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->softwareAgent:Ljava/lang/String;

    .line 611
    return-void
.end method


# virtual methods
.method appendHistoryEvent(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 11

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    .line 498
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 499
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 501
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getCreatorTool()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getSoftwareAgent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 503
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getSoftwareAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 506
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 508
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "ModifyDate"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "MetadataDate"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "ModifyDate"

    invoke-interface {v0, v1, v2, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "MetadataDate"

    invoke-interface {v0, v1, v2, v9}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2, v8}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    .line 529
    if-nez p3, :cond_0

    .line 530
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "History"

    new-instance v3, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v4, 0x400

    invoke-direct {v3, v4}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v4, 0x0

    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v10, 0x100

    invoke-direct {v5, v10}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "action"

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "when"

    move-object v5, v9

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->historyLast:Ljava/lang/String;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "softwareAgent"

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    :goto_1
    return-object v8

    .line 508
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.appendHistoryEvent"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v6, v0

    goto/16 :goto_0
.end method

.method protected appendHistoryEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 554
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->appendHistoryEvent(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    .line 555
    return-void
.end method

.method appendSavedEvent()V
    .locals 5

    .prologue
    .line 932
    const/4 v1, 0x0

    .line 933
    const/4 v0, 0x0

    .line 934
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    invoke-interface {v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v4, "instanceID"

    invoke-interface {v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 940
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updatableHistoryId:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updatableHistoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    :cond_0
    const/4 v0, 0x1

    .line 944
    :goto_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 945
    const-string/jumbo v2, "saved"

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->appendHistoryEvent(Ljava/lang/String;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updatableHistoryId:Ljava/lang/String;

    .line 946
    return-void

    .line 937
    :catch_0
    move-exception v2

    .line 938
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeDCXMetadata#appendSavedEvent"

    invoke-virtual {v2}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method clearUpdatableHistory()V
    .locals 1

    .prologue
    .line 549
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updatableHistoryId:Ljava/lang/String;

    .line 550
    return-void
.end method

.method convertToTZLocalDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    .line 161
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 167
    :goto_0
    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.convertToTZLocalDate"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method convertToTZLocalDateOrNowIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->convertToTZLocalDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getStaticDateFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createRemixData()Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getLicense()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v3, v2

    .line 582
    :goto_0
    if-eqz v3, :cond_0

    .line 583
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->licenseTypeLookup()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 585
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getAttributionURL()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 588
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getAttributionName()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 591
    :goto_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getManageTo()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 594
    :goto_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getManageUi()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 597
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/remix/AdobeRemixData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 581
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getLicense()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v4, v2

    .line 586
    goto :goto_1

    :cond_4
    move-object v5, v2

    .line 589
    goto :goto_2

    :cond_5
    move-object v1, v2

    .line 592
    goto :goto_3
.end method

.method description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->dumpObject()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->dumpObject()Ljava/lang/String;

    move-result-object v0

    .line 642
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public dumpAsXMP()V
    .locals 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->serializeAsString()Ljava/lang/String;

    move-result-object v0

    .line 654
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public getLocalizedPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 765
    :goto_0
    return-object v0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    .line 765
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalizedPropertyWithSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-default"

    const-string/jumbo v4, "x-default"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    .line 724
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;
    .locals 2

    .prologue
    .line 401
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableMetadata;-><init>(Lcom/adobe/xmp/XMPMeta;)V

    .line 402
    return-object v0
.end method

.method public getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 740
    :goto_0
    return-object v0

    .line 732
    :catch_0
    move-exception v1

    .line 734
    :try_start_1
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 735
    :catch_1
    move-exception v1

    .line 736
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getPropertyWithPath(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    .line 753
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyWithSchema(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataException;
        }
    .end annotation

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->handleXMPError(Lcom/adobe/xmp/XMPException;)V

    .line 710
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getStaticDateFormatter()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->_staticDateFormatter:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 79
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->_staticDateFormatter:Ljava/text/SimpleDateFormat;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->_staticDateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method getXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    return-object v0
.end method

.method public hasTag(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 917
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;->getSubject()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->iteratorFromXMP(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataPath;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;

    move-result-object v0

    .line 918
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadataIterator;->_value:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const/4 v0, 0x1

    .line 923
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initForCopyDerivedFrom(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;
    .locals 2

    .prologue
    .line 558
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;

    const-string/jumbo v1, "copied"

    invoke-direct {v0, p1, v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-object v0
.end method

.method initFromFilePath(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    :try_start_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :goto_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->initFromData(Ljava/lang/String;)V

    .line 283
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "dcxMetaData init failed"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 4

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDerivedWithActionAndDocId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->makeDirty()Lcom/adobe/xmp/XMPMeta;

    .line 206
    if-nez p2, :cond_0

    .line 207
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object p2

    .line 209
    :cond_0
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "OriginalDocumentID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v6, v5

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "InstanceID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "ModifyDate"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DerivedFrom"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v4, "documentID"

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DerivedFrom"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v4, "originalDocumentID"

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DerivedFrom"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v4, "instanceID"

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DerivedFrom"

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v4, "lastModifyDate"

    move-object v5, v9

    invoke-interface/range {v0 .. v5}, Lcom/adobe/xmp/XMPMeta;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v2, "DocumentID"

    invoke-interface {v0, v1, v2, v7}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "CreatorTool"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "CreatorTool"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->getCreatorTool()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->appendHistoryEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_1
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXMetadata.Constructor"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v6, v0

    goto/16 :goto_0
.end method

.method makeDirty()Lcom/adobe/xmp/XMPMeta;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/XMPMeta;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    .line 139
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    return-object v0
.end method

.method markAsCompositeMetadata()V
    .locals 1

    .prologue
    .line 927
    const-string/jumbo v0, "*composite*metadata*"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    .line 928
    return-void
.end method

.method public saveAsComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->serializeToTempFile()Ljava/lang/String;

    move-result-object v7

    .line 886
    if-nez v7, :cond_0

    .line 897
    :goto_0
    return-object v2

    .line 890
    :cond_0
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v0

    const-string/jumbo v1, "xmp-metadata"

    const-string/jumbo v3, "application/rdf+xml"

    const-string/jumbo v4, "metadata"

    const/4 v8, 0x0

    move-object v5, p3

    move-object v6, p1

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 891
    if-nez v0, :cond_1

    .line 892
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    .line 895
    :cond_1
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    .line 896
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    move-object v2, v0

    .line 897
    goto :goto_0
.end method

.method public saveAsComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 867
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->serializeToTempFile()Ljava/lang/String;

    move-result-object v7

    .line 868
    if-nez v7, :cond_0

    .line 880
    :goto_0
    return-object v0

    .line 873
    :cond_0
    :try_start_0
    const-string/jumbo v1, "xmp-metadata"

    const/4 v2, 0x0

    const-string/jumbo v3, "application/rdf+xml"

    const-string/jumbo v4, "metadata"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p2

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 878
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    .line 879
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 876
    throw v0
.end method

.method public saveAsComponentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 901
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->serializeToTempFile()Ljava/lang/String;

    move-result-object v7

    .line 902
    if-nez v7, :cond_0

    .line 913
    :goto_0
    return-object v2

    .line 906
    :cond_0
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v0

    const-string/jumbo v1, "xmp-metadata"

    const-string/jumbo v3, "application/rdf+xml"

    const-string/jumbo v4, "metadata"

    const/4 v8, 0x0

    move-object v5, p3

    move-object v6, p1

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 907
    if-nez v0, :cond_1

    .line 908
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    .line 911
    :cond_1
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    .line 912
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    move-object v2, v0

    .line 913
    goto :goto_0
.end method

.method public saveInCompositeBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->saveInCompositeBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method public saveInCompositeBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 410
    .line 414
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    const-string/jumbo v2, "*composite*metadata*"

    if-ne v1, v2, :cond_2

    .line 415
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentPath:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updateOrCreateAsComponentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 416
    if-nez v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 419
    :cond_1
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    move-object v0, v1

    .line 420
    goto :goto_0

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 425
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_0

    .line 427
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    .line 428
    invoke-virtual {p0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updateComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    goto :goto_0
.end method

.method public serializeAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToString(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    .line 665
    :catch_0
    move-exception v1

    .line 666
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMetadata.serializeAsString"

    invoke-virtual {v1}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method serializeToTempFile()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 681
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->xmpMeta:Lcom/adobe/xmp/XMPMeta;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToString(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 687
    if-eqz v2, :cond_0

    .line 699
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 690
    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMetadata.serializeToTempFile"

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    .line 699
    goto :goto_0

    .line 694
    :catch_1
    move-exception v0

    .line 695
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeDCXMetadata.serializeToTempFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->serializeToTempFile()Ljava/lang/String;

    move-result-object v2

    .line 829
    if-nez v2, :cond_0

    .line 843
    :goto_0
    return-object v0

    .line 834
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 837
    :goto_1
    if-nez v1, :cond_1

    .line 838
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_0

    .line 835
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 841
    :cond_1
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->generation:J

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->cleanGeneration:J

    .line 842
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->componentId:Ljava/lang/String;

    move-object v0, v1

    .line 843
    goto :goto_0
.end method

.method public updateComponentInMutableBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updateComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    return-object v0
.end method

.method updateOrCreateAsComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 849
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updateComponentInMutableBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 853
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->saveAsComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    goto :goto_0
.end method

.method updateOrCreateAsComponentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;->getBranchCore()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCore;->getComponentsOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 858
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 859
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->updateComponentInBranchOrElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMetadata;->saveAsComponentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXBranchCoreProtocol;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    goto :goto_0
.end method
