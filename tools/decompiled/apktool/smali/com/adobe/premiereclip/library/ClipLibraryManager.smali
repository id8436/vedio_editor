.class public Lcom/adobe/premiereclip/library/ClipLibraryManager;
.super Ljava/lang/Object;
.source "ClipLibraryManager.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final kCandyMimeType:Ljava/lang/String; = "application/vnd.adobe.candy+jpg"

.field private static final kCubeMimeType:Ljava/lang/String; = "application/vnd.adobe.cube+txt"

.field private static final kLookElementMimeType:Ljava/lang/String; = "application/vnd.adobe.element.look+dcx"

.field private static final kThumbnailMimeType:Ljava/lang/String; = "image/jpg"

.field private static mSharedInstance:Lcom/adobe/premiereclip/library/ClipLibraryManager;


# instance fields
.field _libraryRequestHandler:Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

.field private _observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

.field private currentLibraryLooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adobe/premiereclip/looks/CandyLook;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

.field private generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

.field private mContext:Landroid/content/Context;

.field private mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private mLooksCount:I

.field private options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

.field private selectedDefaultLooks:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    .line 71
    iput v2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mLooksCount:I

    .line 72
    iput-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Lcom/adobe/premiereclip/library/ClipLibraryManager$1;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_libraryRequestHandler:Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

    .line 154
    iput-object p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    .line 156
    iput-boolean v2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->selectedDefaultLooks:Z

    .line 158
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 159
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 160
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 161
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCloudManagerDefaultCloudUpdatedNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 163
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->onLogin()V

    .line 166
    :cond_0
    return-void
.end method

.method private DesignLibraryFileDirectory()Ljava/lang/String;
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->trimmedAdobeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "Design Libraries"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 389
    if-nez v2, :cond_0

    .line 390
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 391
    if-nez v1, :cond_0

    .line 392
    const-class v1, Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create design library directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    .line 396
    :cond_0
    return-object v0
.end method

.method public static getSharedInstance()Lcom/adobe/premiereclip/library/ClipLibraryManager;
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mSharedInstance:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    if-nez v0, :cond_1

    .line 252
    const-class v1, Lcom/adobe/premiereclip/library/ClipLibraryManager;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mSharedInstance:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mSharedInstance:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    .line 256
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mSharedInstance:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleCloudSwitch()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->removeObserver(Ljava/util/Observer;)V

    .line 219
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->shutDown()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    .line 221
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->resetCurrentLibInfo()V

    .line 224
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 225
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    .line 226
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    const-string/jumbo v1, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    const-string/jumbo v1, "application/vnd.adobe.cube+txt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string/jumbo v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setContentTypes(Ljava/util/ArrayList;)V

    .line 240
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setMatchAny(Z)V

    .line 241
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    const-string/jumbo v2, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setType(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadContentTypes:Ljava/util/ArrayList;

    .line 244
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->DesignLibraryFileDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getNewInstance(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Ljava/lang/String;)Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    .line 245
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->addObserver(Ljava/util/Observer;)V

    .line 246
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setElementTypesFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)V

    .line 248
    :cond_1
    return-void
.end method

.method private resetCurrentLibInfo()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mLooksCount:I

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    .line 442
    return-void
.end method

.method private trimmedAdobeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public addLookToCurrentLooks(ILcom/adobe/premiereclip/looks/CandyLook;)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-void
.end method

.method public declared-synchronized addObserver(Ljava/util/Observer;)V
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Lcom/adobe/premiereclip/library/ClipLibraryManager$1;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public countAllElementsInLibrary(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 470
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->countAllAssetsInLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)I

    move-result v0

    .line 473
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public countLooksInCurrentLibrary()I
    .locals 3

    .prologue
    .line 463
    iget v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mLooksCount:I

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->countAssetsInLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mLooksCount:I

    .line 466
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mLooksCount:I

    return v0
.end method

.method public countLooksInLibrary(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 456
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->countAssetsInLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)I

    move-result v0

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    return-object v0
.end method

.method public forceSync()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 271
    return-void
.end method

.method public getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getLibraries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryById(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLibraryById(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 478
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getLibraryName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 450
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getLook(I)Lcom/adobe/premiereclip/looks/CandyLook;
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    return-object v0
.end method

.method public getLook(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 313
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-direct {v2, v1, v0}, Lcom/adobe/premiereclip/looks/CandyLook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/looks/CandyLook;->setLibraryId(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getRepresentationsForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 321
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/vnd.adobe.cube+txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 322
    iget-object v4, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v4

    new-instance v5, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Ljava/lang/String;Lcom/adobe/premiereclip/looks/CandyLook;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    new-instance v6, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;

    invoke-direct {v6, p0, v1, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z

    .line 340
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "image/jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 341
    iget-object v4, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v4

    new-instance v5, Lcom/adobe/premiereclip/library/ClipLibraryManager$3;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$3;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Ljava/lang/String;Lcom/adobe/premiereclip/looks/CandyLook;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    new-instance v6, Lcom/adobe/premiereclip/library/ClipLibraryManager$4;

    invoke-direct {v6, p0, v1, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$4;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFilePathForRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)Z

    goto :goto_0

    .line 359
    :cond_2
    return-void
.end method

.method public getLookAtPosition(ILcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/premiereclip/looks/CandyLook;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 369
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_libraryRequestHandler:Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->addRequest(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 370
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_libraryRequestHandler:Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->getRequestCount(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 371
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLook(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 374
    :cond_1
    return-void
.end method

.method public getLookById(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/CandyLook;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/CandyLook;

    .line 278
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getLookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionFromLookFromId(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 580
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 586
    :goto_1
    return v0

    .line 580
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSortedLibraries()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/adobe/premiereclip/library/ClipLibraryManager$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager$5;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 415
    return-object v0
.end method

.method public isSelectedDefaultLooks()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->selectedDefaultLooks:Z

    return v0
.end method

.method public isSyncStarted()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->isSyncStarted()Z

    move-result v0

    return v0
.end method

.method public onLogOut()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->removeObserver(Ljava/util/Observer;)V

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->shutDown()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    .line 209
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->resetCurrentLibInfo()V

    .line 211
    :cond_0
    return-void
.end method

.method public onLogin()V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 179
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    .line 180
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->currentLibraryLooks:Ljava/util/Map;

    .line 182
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    const-string/jumbo v1, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string/jumbo v1, "application/vnd.adobe.cube+txt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string/jumbo v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setContentTypes(Ljava/util/ArrayList;)V

    .line 194
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setMatchAny(Z)V

    .line 195
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    const-string/jumbo v2, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setType(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadContentTypes:Ljava/util/ArrayList;

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->DesignLibraryFileDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getNewInstance(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Ljava/lang/String;)Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->addObserver(Ljava/util/Observer;)V

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setElementTypesFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized postNotification(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;->markChanged()V

    .line 302
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeObserver(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_observable:Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;->deleteObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentLibrary(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 423
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setCurrentLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 425
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->resetCurrentLibInfo()V

    .line 427
    :cond_0
    return-void
.end method

.method public setSelectedDefaultLooks(Z)V
    .locals 0

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->selectedDefaultLooks:Z

    .line 435
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 486
    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 487
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 489
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v1, v2, :cond_2

    .line 490
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "Error"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->onLogin()V

    .line 496
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v1, v2, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->onLogOut()V

    .line 500
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCloudManagerDefaultCloudUpdatedNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 502
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->handleCloudSwitch()V

    .line 506
    :cond_4
    instance-of v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;

    if-eqz v0, :cond_5

    .line 507
    check-cast p2, Lcom/adobe/premiereclip/library/LibraryNotification;

    .line 509
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "syncStarted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 510
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 561
    :cond_5
    :goto_0
    return-void

    .line 514
    :cond_6
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "librarySyncIssue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 515
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 519
    :cond_7
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "SyncCompleteNotification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 520
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_8
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "libraryDeleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 525
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 530
    :cond_9
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v1, "libraryChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 531
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :cond_a
    iget-object v0, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->generalLibraryManager:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    .line 538
    iget-object v2, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v3, "libraryAdded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 539
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 543
    :cond_b
    iget-object v2, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v3, "elementAdded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 544
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->resetCurrentLibInfo()V

    .line 545
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    :cond_c
    iget-object v2, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v3, "elementRemoved"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 550
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->resetCurrentLibInfo()V

    .line 551
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 555
    :cond_d
    iget-object v2, p2, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    const-string/jumbo v3, "elementUpdated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 556
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->resetCurrentLibInfo()V

    .line 557
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->postNotification(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
