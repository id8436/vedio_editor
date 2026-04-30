.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;
.super Ljava/lang/Object;
.source "Adobe360CloudAssetReference.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final Adobe360CloudAssetReferenceCloudHrefKey:Ljava/lang/String; = "cloud-href"

.field public static final Adobe360CloudAssetReferenceCloudNameKey:Ljava/lang/String; = "cloud-name"

.field public static final Adobe360CloudAssetReferenceHrefKey:Ljava/lang/String; = "href"

.field public static final Adobe360CloudAssetReferenceNameKey:Ljava/lang/String; = "name"


# instance fields
.field private _dictionary:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    .line 43
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-name"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-href"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_3
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    .line 54
    return-void
.end method

.method protected static createCloudAssetReferenceWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static createCloudAssetReferenceWithHref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 175
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->getDictionary()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->jsonObjsAreEqual(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCloudHref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCloudName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->createCloudAssetReferenceWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    move-result-object v0

    return-object v0
.end method

.method protected getDictionary()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 181
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 182
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public setCloudHref(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-href"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCloudName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 132
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "cloud-name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 111
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
