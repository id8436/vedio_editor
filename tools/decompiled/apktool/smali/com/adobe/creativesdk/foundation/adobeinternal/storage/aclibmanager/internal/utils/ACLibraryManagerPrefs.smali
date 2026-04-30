.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLibraryManagerPrefs;
.super Ljava/lang/Object;
.source "ACLibraryManagerPrefs.java"


# static fields
.field private static final ACLIBMGR_LAST_LIB_ID:Ljava/lang/String; = "aclibmgr_lastusersel_libid"

.field private static final ACLIBMGR_PREFS:Ljava/lang/String; = "aclibmgr_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastUserSelectedLibraryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "aclibmgr_lastusersel_libid"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLibraryManagerPrefs;->getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferenceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLibraryManagerPrefs;->getPreferenceValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferenceValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/utils/ACLibraryManagerPrefs;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "aclibmgr_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setUserSelectedLibraryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
