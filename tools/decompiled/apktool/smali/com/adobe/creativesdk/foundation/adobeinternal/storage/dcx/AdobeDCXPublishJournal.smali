.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal;
.source "AdobeDCXPublishJournal.java"


# static fields
.field private static final AdobeDCXPublishJournalAssetHrefKey:Ljava/lang/String; = "asset-href"

.field private static final AdobeDCXPublishJournalFormatVersionKey:Ljava/lang/String; = "publish-journal-format-version"

.field private static final AdobeDCXPublishJournalPublicationRecordKey:Ljava/lang/String; = "publication-record"

.field private static final AdobeDCXPublishJournalRemixDataKey:Ljava/lang/String; = "remix-data"

.field private static final AdobeDCXPublishJournalStatusKey:Ljava/lang/String; = "status"

.field private static final AdobeDCXPublishJournalStatusPublishedKey:Ljava/lang/String; = "published"

.field private static final AdobeDCXPublishJournalStatusPushedKey:Ljava/lang/String; = "pushed"

.field private static final AdobeDCXPublishJournalStatusStagedKey:Ljava/lang/String; = "staged"


# instance fields
.field private status:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal$1;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal$1;-><init>()V

    if-eqz p2, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal$AdobeDCXJournalVerifier;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXJournal$AdobeDCXJournalCreator;)V

    .line 65
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    .line 66
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal$2;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal$2;-><init>()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1
.end method

.method public static journalFromFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static journalPersistedAt(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public assetHref()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "asset-href"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public publicationRecordData()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "publication-record"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public publishIsComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 108
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    const-string/jumbo v2, "published"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushIsComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 104
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    const-string/jumbo v2, "pushed"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordAssetHref(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "asset-href"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->writeToFile()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPublishJournal.recordAssetHref"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordPublicationRecordData(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->getDict()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "publication-record"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->writeToFile()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPublishJournal.recordPublicationRecordData"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordPublishIsComplete()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    const-string/jumbo v1, "published"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->writeToFile()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPublishJournal.recordPublishIsComplete"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordPushIsComplete()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    const-string/jumbo v1, "pushed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->writeToFile()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPublishJournal.recordPushIsComplete"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordStageIsComplete()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    const-string/jumbo v1, "staged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->writeToFile()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXPublishJournal.recordStageIsComplete"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stageIsComplete()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 100
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXPublishJournal;->status:Lorg/json/JSONObject;

    const-string/jumbo v2, "staged"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
