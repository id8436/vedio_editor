.class public Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;
.super Ljava/lang/Object;
.source "BehanceSDKSharedPreferencesManager.java"


# static fields
.field private static final BEHANCE_SDK_APP_SHARED_PREFERENCES_KEY:Ljava/lang/String; = "BEHANCE_SDK_APP_SHARED_PREFERENCES_KEY"

.field private static instance:Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 22
    const-string/jumbo v0, "BEHANCE_SDK_APP_SHARED_PREFERENCES_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->instance:Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;

    invoke-direct {v0, p0}, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->instance:Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->instance:Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;

    return-object v0
.end method


# virtual methods
.method public clearAppPreferences()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public getLongPreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;)J
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->getLongPreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongPreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;J)J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public removePreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method

.method public savePreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;J)Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
