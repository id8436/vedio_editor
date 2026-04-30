.class public Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
.super Ljava/lang/Object;
.source "Adobe360Context.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final Adobe360ContextAppNameKey:Ljava/lang/String; = "application-name"

.field public static final Adobe360ContextLibraryRefKey:Ljava/lang/String; = "library"

.field public static final Adobe360ContextProjectRefKey:Ljava/lang/String; = "project"

.field public static final Adobe360ContextUserKey:Ljava/lang/String; = "user"


# instance fields
.field private _dictionary:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    .line 47
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "application-name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "project"

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->getDictionary()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "library"

    invoke-virtual {p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->getDictionary()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_3
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    .line 58
    return-void
.end method

.method public static createContextWithAppName(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)V

    return-object v0
.end method

.method protected static createContextWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageCopyUtils;->deepMutableCopyOfDictionary(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 183
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->getDictionary()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->jsonObjsAreEqual(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "application-name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->createContextWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;

    move-result-object v0

    return-object v0
.end method

.method protected getDictionary()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLibraryRef()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 151
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->createCloudAssetReferenceWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectRef()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "project"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 128
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->createCloudAssetReferenceWithDictionary(Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserEntityRef()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 189
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 190
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "application-name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "application-name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLibraryRef(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)V
    .locals 4

    .prologue
    .line 161
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "library"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->getDictionary()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "library"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProjectRef(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;)V
    .locals 4

    .prologue
    .line 138
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "project"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360CloudAssetReference;->getDictionary()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "project"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUserEntityRef(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Context;->_dictionary:Lorg/json/JSONObject;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
