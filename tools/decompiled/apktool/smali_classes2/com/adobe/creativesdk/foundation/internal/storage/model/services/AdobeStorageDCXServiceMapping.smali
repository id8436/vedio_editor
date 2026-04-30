.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;
.super Ljava/lang/Object;
.source "AdobeStorageDCXServiceMapping.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncGroupNameForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Composite must not be nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 24
    array-length v5, v4

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v4, v3

    .line 25
    if-nez v2, :cond_2

    .line 24
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 28
    :cond_2
    if-nez v0, :cond_3

    .line 29
    const-string/jumbo v0, "assets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 39
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public static resourceForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 2

    .prologue
    .line 151
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "component for which resource is requested should not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v0, v1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->resourceForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    return-object v0
.end method

.method public static resourceForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageDCXServiceMapping;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "component for which resource is requested should not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 99
    :cond_0
    if-nez p0, :cond_1

    .line 143
    :goto_0
    return-object v0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_2

    if-eqz p2, :cond_5

    .line 103
    :cond_2
    if-eqz p2, :cond_b

    .line 104
    const-string/jumbo v1, "http://ns.adobe.com/ccapi/component"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_7

    const-string/jumbo v2, "href"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    :goto_1
    if-eqz v2, :cond_3

    .line 107
    const-string/jumbo v0, "{component_id}"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    :cond_4
    if-eqz p4, :cond_a

    .line 112
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_8

    move-object v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->setVersion(Ljava/lang/String;)V

    .line 115
    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getFormattedLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_5

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 118
    if-eqz v1, :cond_9

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";version=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_5
    :goto_4
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 131
    if-eqz v0, :cond_6

    .line 132
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getEtag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->setMd5(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->setLength(Ljava/lang/Number;)V

    .line 140
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->setVersion(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->setPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 143
    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    .line 105
    goto/16 :goto_1

    .line 114
    :cond_8
    const-string/jumbo v0, "(null)"

    goto :goto_3

    .line 121
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";version=(null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 133
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_5

    :cond_a
    move-object v0, v2

    goto :goto_4

    :cond_b
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "application/vnd.adobe.directory+json"

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getOrdinal()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->ordinal:J

    .line 59
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    .line 60
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCollaborationRoleType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    .line 63
    :cond_0
    return-object v0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static resourceForManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->hasLinks()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "http://ns.adobe.com/ccapi/manifest"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    const-string/jumbo v2, "href"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;-><init>()V

    .line 74
    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getFormattedLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_1
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "manifest"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;-><init>()V

    .line 80
    const-string/jumbo v3, "application/vnd.adobe.dcx-manifest+json"

    iput-object v3, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 82
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->href:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_2
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    .line 89
    return-object v2

    :cond_2
    move-object v0, v1

    .line 71
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
