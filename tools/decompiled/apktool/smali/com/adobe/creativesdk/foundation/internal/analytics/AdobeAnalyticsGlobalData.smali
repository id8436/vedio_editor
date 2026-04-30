.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsGlobalData;
.super Ljava/lang/Object;
.source "AdobeAnalyticsGlobalData.java"


# static fields
.field public static final AdobeAnalyticsAuthStatusLoggedInOffline:Ljava/lang/String; = "Logged In : Offline"

.field public static final AdobeAnalyticsAuthStatusLoggedInOnline:Ljava/lang/String; = "Logged In : Online"

.field public static final AdobeAnalyticsAuthStatusLoggedOutOffline:Ljava/lang/String; = "Logged Out : Offline"

.field public static final AdobeAnalyticsAuthStatusLoggedOutOnline:Ljava/lang/String; = "Logged Out : Online"

.field public static final AdobeAnalyticsKeyADB_AuthStatus:Ljava/lang/String; = "adb.user.profile.attributes.authStatus"

.field public static final AdobeAnalyticsKeyADB_ClientId:Ljava/lang/String; = "adb.user.profile.attributes.clientId"

.field public static final AdobeAnalyticsKeyADB_ProfileId:Ljava/lang/String; = "adb.user.profile.profileId"

.field public static final AdobeAnalyticsKeyADB_SDKsUtilized:Ljava/lang/String; = "adb.page.pageInfo.SDKsUtilized"

.field public static final AdobeAnalyticsKeyEventAssetID:Ljava/lang/String; = "adb.event.eventInfo.eventassetid"

.field public static final AdobeAnalyticsKeyEventAssetName:Ljava/lang/String; = "adb.event.eventInfo.eventassetname"

.field public static final AdobeAnalyticsKeyEventCategory:Ljava/lang/String; = "adb.event.eventInfo.eventeventcategory"

.field public static final AdobeAnalyticsKeyMobileEventAction:Ljava/lang/String; = "adb.mobile.event.action"

.field public static final AdobeAnalyticsKeyMobileEventArea:Ljava/lang/String; = "adb.mobile.event.area"

.field public static final AdobeAnalyticsKeyMobileEventName:Ljava/lang/String; = "adb.mobile.event.name"

.field public static final AdobeAnalyticsKeyMobileEventType:Ljava/lang/String; = "adb.mobile.event.type"

.field public static final AdobeAnalyticsKeyPageInfoLanguage:Ljava/lang/String; = "adb.page.pageInfo.language"

.field public static final AdobeAnalyticsKeyPrimaryCategory:Ljava/lang/String; = "adb.page.pageInfo.category.primarycategory"

.field public static final AdobeAnalyticsKeyProductCategory:Ljava/lang/String; = "adb.page.pageInfo.productcategory"

.field public static final AdobeAnalyticsKeyProductVersion:Ljava/lang/String; = "adb.page.pageInfo.productversion"

.field public static final AdobeAnalyticsSDKUtilizedCreativeSDK:Ljava/lang/String; = "Creative SDK Android"

.field private static final PRODUCT_CATEGORY:Ljava/lang/String; = "mobile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static addActionData(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string/jumbo v2, "adb.user.profile.profileId"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v0, "adb.page.pageInfo.productcategory"

    const-string/jumbo v2, "mobile"

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v0, "adb.user.profile.attributes.clientId"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v0, "adb.page.pageInfo.productversion"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "adb.page.pageInfo.language"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "adb.event.eventInfo.eventName"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v0, "adb.event.eventInfo.eventeventcategory"

    const-string/jumbo v1, ""

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v0, "adb.mobile.event.name"

    const-string/jumbo v1, ""

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-eqz p1, :cond_4

    .line 67
    const-string/jumbo v0, "area"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "adb.mobile.event.area"

    const-string/jumbo v1, "area"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "adb.mobile.event.type"

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    const-string/jumbo v0, "action"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    const-string/jumbo v0, "adb.mobile.event.action"

    const-string/jumbo v1, "action"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_2
    const-string/jumbo v0, "assetName"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const-string/jumbo v0, "adb.event.eventInfo.eventassetname"

    const-string/jumbo v1, "assetName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_3
    const-string/jumbo v0, "assetID"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const-string/jumbo v0, "adb.event.eventInfo.eventassetid"

    const-string/jumbo v1, "assetID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_4
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsGlobalData;->addCommonData(Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method public static addCommonData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string/jumbo v3, "adb.user.profile.profileId"

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v1, "adb.user.profile.attributes.clientId"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "adb.page.pageInfo.SDKsUtilized"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 114
    const-string/jumbo v1, "adb.page.pageInfo.SDKsUtilized"

    const-string/jumbo v2, "Creative SDK Android"

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->isAuthenticated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 120
    const-string/jumbo v2, ""

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Logged In : Online"

    .line 127
    :goto_1
    const-string/jumbo v1, "adb.user.profile.attributes.authStatus"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void

    .line 116
    :cond_0
    const-string/jumbo v1, "adb.page.pageInfo.SDKsUtilized"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adb.page.pageInfo.SDKsUtilized"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Creative SDK Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    const-string/jumbo v0, "Logged In : Offline"

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Logged Out : Online"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "Logged Out : Offline"

    goto :goto_1
.end method

.method public static addStateData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    const-string/jumbo v0, "adb.page.pageInfo.productcategory"

    const-string/jumbo v1, "mobile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "adb.page.pageInfo.productversion"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "adb.page.pageInfo.language"

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v0, "adb.page.pageInfo.pageName="

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "adb.page.pageInfo.category.primarycategory"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsGlobalData;->addCommonData(Ljava/util/Map;)V

    .line 100
    return-void
.end method
