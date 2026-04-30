.class final Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$2;
.super Ljava/lang/Object;
.source "UserProfileHandler.java"

# interfaces
.implements Lcom/adobe/creativeapps/settings/utils/BehanceSource$IBehanceAccountDetailsUpdate;


# instance fields
.field final synthetic val$getUserProfileListener:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$2;->val$getUserProfileListener:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public behanceDetailsUpdated(Lcom/behance/sdk/BehanceSDKUserProfile;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-static {p1}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$002(Lcom/behance/sdk/BehanceSDKUserProfile;)Lcom/behance/sdk/BehanceSDKUserProfile;

    .line 100
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$200()Lcom/adobe/creativeapps/settings/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_FIRST_NAME:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativeapps/settings/AppPreferences;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$200()Lcom/adobe/creativeapps/settings/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_LAST_NAME:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativeapps/settings/AppPreferences;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$200()Lcom/adobe/creativeapps/settings/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_OCCUPATION:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getOccupation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativeapps/settings/AppPreferences;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$200()Lcom/adobe/creativeapps/settings/AppPreferences;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_COMPANY:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCompany()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativeapps/settings/AppPreferences;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    const-string/jumbo v1, "city"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$300(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v1, "state"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$300(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string/jumbo v1, "country"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$300(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$200()Lcom/adobe/creativeapps/settings/AppPreferences;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativeapps/settings/AppPreferences;->ID_PROFILE_ADDRESS:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativeapps/settings/AppPreferences;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$2;->val$getUserProfileListener:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;->onGetUserProfileSuccess()V

    .line 118
    :cond_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method
