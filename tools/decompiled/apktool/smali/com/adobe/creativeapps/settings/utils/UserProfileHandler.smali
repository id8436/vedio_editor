.class public Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;
.super Ljava/lang/Object;
.source "UserProfileHandler.java"


# static fields
.field private static adobeID:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field private static preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

.field private static volatile sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

.field private static userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    .line 27
    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    .line 28
    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    .line 29
    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/behance/sdk/BehanceSDKUserProfile;)Lcom/behance/sdk/BehanceSDKUserProfile;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/adobe/creativeapps/settings/AppPreferences;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->serializeString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static deserializeString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 147
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 148
    return-object v0
.end method

.method private static getBehanceUserProfile(Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;)V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->getInstance()Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/BehanceSource;->getInstance()Lcom/adobe/creativeapps/settings/utils/BehanceSource;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$2;-><init>(Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;)V

    sget-object v2, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativeapps/settings/utils/BehanceSource;->getBehanceAccountDetails(Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;Landroid/content/Context;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;
    .locals 10

    .prologue
    .line 33
    sput-object p0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->mContext:Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    if-nez v0, :cond_2

    .line 36
    const-class v3, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    monitor-enter v3

    .line 37
    :try_start_0
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/adobe/creativeapps/settings/AppPreferences;->getSharedInstance()Lcom/adobe/creativeapps/settings/AppPreferences;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    .line 40
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$1;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$1;-><init>()V

    .line 48
    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->getBehanceUserProfile(Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;)V

    .line 50
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;-><init>()V

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    .line 52
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    sget-object v1, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_FIRST_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativeapps/settings/AppPreferences;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    sget-object v2, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_LAST_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/adobe/creativeapps/settings/AppPreferences;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    sget-object v2, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    sget-object v4, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_OCCUPATION:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/adobe/creativeapps/settings/AppPreferences;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    sget-object v4, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    sget-object v5, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_COMPANY:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/adobe/creativeapps/settings/AppPreferences;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    sget-object v5, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->preferences:Lcom/adobe/creativeapps/settings/AppPreferences;

    sget-object v6, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_ADDRESS:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->adobeID:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/adobe/creativeapps/settings/AppPreferences;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    new-instance v6, Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-direct {v6}, Lcom/behance/sdk/BehanceSDKUserProfile;-><init>()V

    sput-object v6, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    .line 59
    sget-object v6, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v6, v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->setFirstName(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUserProfile;->setLastName(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->setOccupation(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/BehanceSDKUserProfile;->setCompany(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v5, :cond_0

    .line 66
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "city"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->deserializeString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 69
    const-string/jumbo v1, "state"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->deserializeString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 70
    const-string/jumbo v4, "country"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->deserializeString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 72
    sget-object v4, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v4, v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->setCity(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V

    .line 73
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUserProfile;->setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V

    .line 74
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->setCountry(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    monitor-exit v3

    .line 87
    :goto_1
    return-object v0

    .line 83
    :cond_1
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    monitor-exit v3

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 87
    :cond_2
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static serializeString(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->sharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    .line 153
    sput-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    .line 154
    return-void
.end method

.method public getUserProfile()Lcom/behance/sdk/BehanceSDKUserProfile;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->userProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    return-object v0
.end method

.method public updateUserProfile(Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;)V
    .locals 0

    .prologue
    .line 128
    invoke-static {p1}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->getBehanceUserProfile(Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;)V

    .line 129
    return-void
.end method
