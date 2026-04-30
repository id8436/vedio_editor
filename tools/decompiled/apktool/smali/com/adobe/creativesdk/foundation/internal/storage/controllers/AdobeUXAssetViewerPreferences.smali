.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;
.super Ljava/lang/Object;
.source "AdobeUXAssetViewerPreferences.java"


# static fields
.field private static _appIdentifierKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "177FCAA1-70EA-4FD7-B016-19D56F387C64"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;->_appIdentifierKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized enableAssetViewerMenu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;->isAppRecognized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->setFileProvideAuthority(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v0, 0x1

    .line 20
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getFileProvideAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->getFileProvideAuthority()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized isAppRecognized(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 9
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;->_appIdentifierKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized isMenuEnabled()Z
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetViewerPreferences;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->getFileProvideAuthority()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
