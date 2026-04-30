.class public Lcom/adobe/creativeapps/settings/AppPreferences;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# static fields
.field public static ID_PROFILE_ADDRESS:Ljava/lang/String;

.field public static ID_PROFILE_COMPANY:Ljava/lang/String;

.field public static ID_PROFILE_FIRST_NAME:Ljava/lang/String;

.field public static ID_PROFILE_LAST_NAME:Ljava/lang/String;

.field public static ID_PROFILE_OCCUPATION:Ljava/lang/String;

.field private static mEditor:Landroid/content/SharedPreferences$Editor;

.field private static mSharedInstance:Lcom/adobe/creativeapps/settings/AppPreferences;

.field private static mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "%s_PROFILE_FIRST_NAME"

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_FIRST_NAME:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "%s_PROFILE_LAST_NAME"

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_LAST_NAME:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "%s_PROFILE_OCCUPATION"

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_OCCUPATION:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "%s_PROFILE_COMPANY"

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_COMPANY:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "%s_PROFILE_ADDRESS"

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedInstance()Lcom/adobe/creativeapps/settings/AppPreferences;
    .locals 4

    .prologue
    .line 20
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedInstance:Lcom/adobe/creativeapps/settings/AppPreferences;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/adobe/creativeapps/settings/AppPreferences;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedInstance:Lcom/adobe/creativeapps/settings/AppPreferences;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/adobe/creativeapps/settings/AppPreferences;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/AppPreferences;-><init>()V

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedInstance:Lcom/adobe/creativeapps/settings/AppPreferences;

    .line 24
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->mContext:Landroid/content/Context;

    .line 25
    const-string/jumbo v2, "App_UserPreferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 26
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedInstance:Lcom/adobe/creativeapps/settings/AppPreferences;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method

.method public setPreference(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/creativeapps/settings/AppPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method
